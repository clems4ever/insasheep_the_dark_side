#include "cpu-utils.h"
#include "ethmac.h"
#include "board.h"

// #define DEBUG_INT 1

static void oeth_rx(void)
{
  volatile oeth_regs *regs;
  regs = (oeth_regs *)(OETH_REG_BASE);

  volatile oeth_bd *rx_bdp;
  int	pkt_len, i;
  int	bad = 0;
  
#ifdef DEBUG_INT
  wprint("oeth_rx:\n");
#endif
  
  rx_bdp = ((oeth_bd *)OETH_BD_BASE) + OETH_TXBD_NUM;
  
  /* Find RX buffers marked as having received data */
  for(i = 0; i < OETH_RXBD_NUM; i++)
    {
#ifdef DEBUG_INT
      wprint("  ");
      wprints(i);
      wprint(": ");
#endif
      
      bad=0;
      /* Looking for buffer descriptors marked not empty */
      if(!(rx_bdp[i].len_status & OETH_RX_BD_EMPTY)){ 
	/* Check status for errors.
	 */
#ifdef DEBUG_INT
	wprintx(rx_bdp[i].len_status);
	wprint(": ");
#endif
	if (rx_bdp[i].len_status & (OETH_RX_BD_TOOLONG | OETH_RX_BD_SHORT)) {
	  bad = 1;
#ifdef DEBUG_INT
	  wprint("short!\n");
#endif
	}
	if (rx_bdp[i].len_status & OETH_RX_BD_DRIBBLE) {
	  bad = 1;
#ifdef DEBUG_INT
	  wprint("dribble!\n");
#endif
	}
	if (rx_bdp[i].len_status & OETH_RX_BD_CRCERR) {
	  bad = 1;
#ifdef DEBUG_INT
	  wprint("CRC error!\n");
#endif
	}
	if (rx_bdp[i].len_status & OETH_RX_BD_OVERRUN) {
	  bad = 1;
#ifdef DEBUG_INT
	  wprint("overrun!\n");
#endif
	}
	if (rx_bdp[i].len_status & OETH_RX_BD_MISS) {
	}
	if (rx_bdp[i].len_status & OETH_RX_BD_LATECOL) {
	  bad = 1;
#ifdef DEBUG_INT
	  wprint("late collision!\n");
#endif
	}
	if (bad) {
	  rx_bdp[i].len_status &= ~OETH_RX_BD_STATS;
	  rx_bdp[i].len_status |= OETH_RX_BD_EMPTY;
	}
	else {
	  /* 
	   * Process the incoming frame.
	   */
	  unsigned char* buf = (unsigned char*)rx_bdp[i].addr;
	  
	  pkt_len = rx_bdp[i].len_status >> 16;
          user_recv(buf, pkt_len);

	  /* finish up */
	  rx_bdp[i].len_status &= ~OETH_RX_BD_STATS; /* Clear stats */
	  rx_bdp[i].len_status |= OETH_RX_BD_EMPTY; /* Mark RX BD as empty */
	}	
      } else {
#ifdef DEBUG_INT
        wprint("empty!\n");
#endif
      }
    }
}

static void oeth_tx(void)
{
  volatile oeth_bd *tx_bd;
  int i;
  
  tx_bd = (volatile oeth_bd *)OETH_BD_BASE; /* Search from beginning*/
  
  /* Go through the TX buffs, search for one that was just sent */
  for(i = 0; i < OETH_TXBD_NUM; i++)
    {
      /* Looking for buffer NOT ready for transmit. and IRQ enabled */
      if( (!(tx_bd[i].len_status & (OETH_TX_BD_READY))) && (tx_bd[i].len_status & (OETH_TX_BD_IRQ)) )
	{
	  /* Single threaded so no chance we have detected a buffer that has had its IRQ bit set but not its BD_READ flag. Maybe this won't work in linux */
	  tx_bd[i].len_status &= ~OETH_TX_BD_IRQ;

	  /* Probably good to check for TX errors here */
	}
    }
  return;  
}

/* The interrupt handler.
 */
void oeth_interrupt(void* arg)
{

  volatile oeth_regs *regs;
  regs = (oeth_regs *)(OETH_REG_BASE);
  
  uint	int_events;
  int serviced;
  
	serviced = 0;

	/* Get the interrupt events that caused us to be here.
	 */
	int_events = regs->int_src;
	regs->int_src = int_events;

	
	/* Handle receive event in its own function.
	 */
	if (int_events & (OETH_INT_RXF | OETH_INT_RXE)) {
		serviced |= 0x1; 
		oeth_rx();
	}

	/* Handle transmit event in its own function.
	 */
	if (int_events & (OETH_INT_TXB | OETH_INT_TXE)) {
		serviced |= 0x2;
		oeth_tx();
		serviced |= 0x2;
	}

	/* Check for receive busy, i.e. packets coming but no place to
	 * put them. 
	 */
	if (int_events & OETH_INT_BUSY) {
		serviced |= 0x4;
		if (!(int_events & (OETH_INT_RXF | OETH_INT_RXE))) {
		  oeth_rx();
                }
	}
	
	return;
}
