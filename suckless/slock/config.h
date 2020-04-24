/* user and group to drop privileges to */
static const char *user  = "mark";
static const char *group = "wheel";

#include "../colors.h"
static const char *colorname[NUMCOLS] = {
	[INIT] =   col_background,   /* after initialization */
	[INPUT] =  col_theme,   /* during input */
	[FAILED] = col_yellow,   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;
