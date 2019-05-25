/* See LICENSE file for copyright and license details. */

/* appearance */
static const unsigned int borderpx  = 2;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const unsigned int gappx     = 5;        /* Gap size */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
/* static const char *fonts[]          = { "Monofur:size=12" };
 * static const char dmenufont[]       = "Monofur:size=12"; */
static const char *fonts[]          = { "IBM 3270:size=14" };
static const char dmenufont[]       = "IBM 3270:size=14";

#include "/home/mark/.dwm/colors.h"
static const char *colors[][3]      = {
	/*               fg         bg         border   */
	[SchemeNorm] = { col_gray3, col_gray1, col_gray2 },
	[SchemeSel]  = { col_gray1, col_theme, col_theme  },
};

/* tagging */
/* static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" }; */
static const char *tags[] = { "一", "二", "三", "四", "五", "六", "七", "八", "九" };

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
	/* class        instance    title       tags mask     isfloating   monitor */
	{ "Firefox",    NULL,       NULL,       1 << 1,       0,           -1 },
	{ "Opera",      NULL,       NULL,       1 << 1,       0,           -1 },
	{ "code-oss",   NULL,       NULL,       1 << 3,       0,           -1 },
	{ "vlc",        NULL,       NULL,       1 << 4,       0,           -1 },
	{ "libreoffice",NULL,       NULL,       1 << 5,       0,           -1 },
	{ "Pinta",      NULL,       NULL,       1 << 6,       0,           -1 },
	{ "Steam",      NULL,       NULL,       1 << 7,       1,           -1 },
	{ "discord",    NULL,       NULL,       1 << 7,       0,           -1 },
	{ "spotify",    NULL,       NULL,       1 << 8,       0,           -1 },
};

/* layout(s) */
static const float mfact     = 0.50; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 0;    /* 1 means respect size hints in tiled resizals */

#include "fibonacci.c"
#include "gaplessgrid.c"
static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "[]=",      tile },    /* first entry is default */
	{ "><>",      NULL },    /* no layout function means floating behavior */
	{ "[M]",      monocle },
 	{ "[@]",      spiral },
 	{ "[\\]",     dwindle },
    { "###",      gaplessgrid },
	{ NULL,       NULL },
};

/* key definitions */
#define MODKEY Mod1Mask
#define MODSUP Mod4Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-fn", dmenufont, "-nb", col_gray1, "-nf", col_gray3, "-sb", col_theme, "-sf", col_gray4, NULL };
static const char *termcmd[]  = { "termite", NULL };
static const char *alttermcmd[]  = { "urxvt", NULL };

static const char *ffoxcmd[] = { "firefox", NULL };
static const char *filescmd[] = { "nautilus", NULL };
static const char *rangercmd[] = { "urxvt", "-e", "ranger", NULL };
static const char *htopcmd[] = { "urxvt", "-e", "htop", NULL };

static const char *volumeup[]  = { "amixer", "-q", "sset", "Master", "3+", NULL };
static const char *volumedown[]  = { "amixer", "-q", "sset", "Master", "3-", NULL };
static const char *volumemute[] = { "amixer", "-q", "-D", "pulse", "sset", "Master", "toggle", NULL };

static const char *powermenucmd[] =   { "/home/mark/.dwm/scripts/powermenu.sh", NULL };
static const char *displaymenucmd[] = { "/home/mark/.dwm/scripts/displaymenu.sh", NULL };
static const char *screenshotcmd[] =  { "/home/mark/.dwm/scripts/screenshot.sh", NULL };

static const char *flashwindow[] = { "flash_window", NULL };

#include <X11/XF86keysym.h>

static Key keys[] = {
	/* modifier                     key        function        argument */
	{ MODKEY,                       XK_n,      spawn,          {.v = flashwindow } },
	{ MODKEY,                       XK_p,      spawn,          {.v = dmenucmd } },
	{ MODSUP,                       XK_Return, spawn,          {.v = termcmd } },
	{ MODKEY|ShiftMask,             XK_Return, spawn,          {.v = alttermcmd } },
    { MODSUP,                       XK_f,      spawn,          {.v = ffoxcmd } },
    { MODSUP,                       XK_n,      spawn,          {.v = filescmd } },
    { MODSUP,                       XK_w,      spawn,          {.v = rangercmd } },
    { MODSUP,                       XK_i,      spawn,          {.v = htopcmd } },
	{ MODKEY,                       XK_b,      togglebar,      {0} },
	{ MODKEY|ShiftMask,             XK_j,      rotatestack,    {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_k,      rotatestack,    {.i = -1 } },
	{ MODKEY,                       XK_j,      focusstack,     {.i = +1 } },
	{ MODKEY,                       XK_k,      focusstack,     {.i = -1 } },
	{ MODKEY,                       XK_i,      incnmaster,     {.i = +1 } },
	{ MODKEY,                       XK_d,      incnmaster,     {.i = -1 } },
	{ MODKEY,                       XK_h,      setmfact,       {.f = -0.05} },
	{ MODKEY,                       XK_l,      setmfact,       {.f = +0.05} },
	{ MODKEY,                       XK_Return, zoom,           {0} },
	{ MODKEY,                       XK_Tab,    view,           {0} },
	{ MODKEY|ShiftMask,             XK_c,      killclient,     {0} },
	{ MODKEY,                       XK_t,      setlayout,      {.v = &layouts[0]} },
	{ MODKEY,                       XK_f,      setlayout,      {.v = &layouts[1]} },
	{ MODKEY,                       XK_m,      setlayout,      {.v = &layouts[2]} },
	{ MODKEY,                       XK_s,      setlayout,      {.v = &layouts[3]} },
	{ MODKEY,                       XK_d,      setlayout,      {.v = &layouts[4]} },
	{ MODKEY,                       XK_g,      setlayout,      {.v = &layouts[5]} },
	{ MODKEY|ControlMask,		    XK_comma,  cyclelayout,    {.i = -1 } },
	{ MODKEY|ControlMask,           XK_period, cyclelayout,    {.i = +1 } },
	{ MODKEY,                       XK_space,  setlayout,      {0} },
	{ MODKEY|ShiftMask,             XK_space,  togglefloating, {0} },
	{ MODKEY,                       XK_0,      view,           {.ui = ~0 } },
	{ MODKEY|ShiftMask,             XK_0,      tag,            {.ui = ~0 } },
	{ MODKEY,                       XK_comma,  focusmon,       {.i = -1 } },
	{ MODKEY,                       XK_period, focusmon,       {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_period, tagmon,         {.i = +1 } },
    { 0,              XF86XK_AudioLowerVolume, spawn,          {.v = volumedown } },
	{ 0,              XF86XK_AudioMute,        spawn,          {.v = volumemute } },
    { 0,              XF86XK_AudioRaiseVolume, spawn,          {.v = volumeup } },
    { MODKEY|ControlMask,           XK_p,      spawn,          {.v = powermenucmd } },
    { MODKEY|ControlMask,           XK_m,      spawn,          {.v = displaymenucmd } },
    { MODKEY|ControlMask,           XK_s,      spawn,          {.v = screenshotcmd } },
	TAGKEYS(                        XK_1,                      0)
	TAGKEYS(                        XK_2,                      1)
	TAGKEYS(                        XK_3,                      2)
	TAGKEYS(                        XK_4,                      3)
	TAGKEYS(                        XK_5,                      4)
	TAGKEYS(                        XK_6,                      5)
	TAGKEYS(                        XK_7,                      6)
	TAGKEYS(                        XK_8,                      7)
	TAGKEYS(                        XK_9,                      8)
	{ MODKEY|ShiftMask,             XK_l,      quit,           {0} },
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

