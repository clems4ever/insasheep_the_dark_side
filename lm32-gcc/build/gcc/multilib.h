static const char *const multilib_raw[] = {
". !mmultiply-enabled !mbarrel-shift-enabled;",
"mmultiply-enabled mmultiply-enabled !mbarrel-shift-enabled;",
"mbarrel-shift-enabled !mmultiply-enabled mbarrel-shift-enabled;",
"mmultiply-enabled/mbarrel-shift-enabled mmultiply-enabled mbarrel-shift-enabled;",
NULL
};

static const char *const multilib_matches_raw[] = {
"mmultiply-enabled mmultiply-enabled;",
"mbarrel-shift-enabled mbarrel-shift-enabled;",
NULL
};

static const char *multilib_extra = "";

static const char *const multilib_exclusions_raw[] = {
NULL
};

static const char *multilib_options = "mmultiply-enabled mbarrel-shift-enabled";
