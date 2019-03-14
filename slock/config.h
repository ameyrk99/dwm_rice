/* user and group to drop privileges to */
static const char *user  = "mark";
static const char *group = "wheel";

#include "/home/mark/.dwm/colors.h"
static const char *colorname[NUMCOLS] = {
	[INIT] =   col_gray1,   /* after initialization */
	[INPUT] =  col_theme,   /* during input */
	[FAILED] = col_urgn,   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;
