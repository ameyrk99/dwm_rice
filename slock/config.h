/* user and group to drop privileges to */
static const char *user  = "mark";
static const char *group = "wheel";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "#2a2e38",   /* after initialization */
	[INPUT] =  "#6f98b3",   /* during input */
	[FAILED] = "#d09785",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;
