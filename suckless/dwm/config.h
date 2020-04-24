/* See LICENSE file for copyright and license details. */

/* appearance */
static const unsigned int borderpx  = 3;        /* border pixel of windows */
static const unsigned int snap      = 0;        /* snap pixel */
static const unsigned int gappx     = 5;        /* gap pixel between windows */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const int viewontag          = 1;        /* Switch view on tag switch */
static const char *fonts[]          = {
	"Hermit-Regular:size=12:antialias=true:autohint=true",
	"Symbols Nerd Font:size=12:antialias=true:autohint=true"
};

#include "../colors.h"
static const char *colors[][3]      = {
  /*                  fg               bg               border   */
  [SchemeNorm]    = { col_foreground,  col_background,  col_background },
  [SchemeSel]     = { col_background,  col_theme,       col_theme },
  [SchemeYellow]  = { col_background,  col_yellow,      col_yellow  },
  [SchemeRed]     = { col_background,  col_red,         col_red  },
  [SchemeGreen]   = { col_background,  col_green,       col_green },
  [SchemeBlue]    = { col_background,  col_blue,        col_blue },
  [SchemeMagenta] = { col_background,  col_magenta,     col_magenta },
  [SchemeCyan]    = { col_foreground,  col_cyan,        col_cyan },
};

/* tagging */
/* static const char *tags[] = { "一", "二", "三", "四", "五", "六", "七", "八", "九" }; */
/* static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" }; */
/* static const char *tags[] = { "HOME", "WEB", "MUSIC", "CODE", "EDIT", "GAME", "OFFICE", "MISC", "HMM" }; */
static const char *tags[] = { "", "", "", "", "", "", "", "", "" };
/* static const char *alttags[] = { " HOME", " WEB", " MUSIC", " CODE", " EDIT", " GAME", " OFFICE", " MISC", " HMM" }; */

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
	/* class                instance        title   tags mask     isfloating   monitor */
  { "firefox",            NULL,           NULL,   1 << 1,       0,           -1 },
  { "Brave-browser",      NULL,           NULL,   1 << 1,       0,           -1 },
  { "Spotify",            NULL,           NULL,   1 << 2,       0,           -1 },
  { "code-oss",           NULL,           NULL,   1 << 3,       0,           -1 },
  { "Gimp",               NULL,           NULL,   1 << 4,       0,           -1 },
  { "discord",            NULL,           NULL,   1 << 5,       0,           -1 },
  { "Steam",              NULL,           NULL,   1 << 5,       0,           -1 },
  { NULL,                 "libreoffice",  NULL,   1 << 6,       0,           -1 },
  { "Tor Browser",        NULL,           NULL,   1 << 8,       0,           -1 },
};

/* layout(s) */
static const float mfact     = 0.55; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 0;    /* 1 means respect size hints in tiled resizals */

#include "fibonacci.c"
static const Layout layouts[] = {
  /* symbol     arrange function */
  { "",      spiral },
  { "",      NULL },
  { "",      tile },
  { "[M]",    monocle },
  { "",      dwindle },
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

/* Applications */
static const char *termcmd[]  = { "st", NULL };
static const char *ffoxcmd[] = { "firefox", NULL };
// static const char *gchromecmd[] = { "google-chrome-stable", NULL };
static const char *rangercmd[] = { "st", "-e", "ranger", NULL };
static const char *htopcmd[] = { "st", "-e", "htop", NULL };
static const char *vimcmd[] = { "st", "-e", "vim", NULL };

/* Sys Controls */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
/* static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-h", "29", "-fn", dmenufont, "-nb", col_background,
 *     "-nf", col_foreground, "-sb", col_theme, "-sf", col_background, NULL }; */
static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, NULL };
static const char *screenshotcmd[] =  { "/home/mark/.dotfiles/scripts/screenshot.sh", NULL };

/* Volume Controls */
static const char *volumeup[]  = { "/home/mark/.dotfiles/scripts/volumectl.sh", "1", NULL };
static const char *volumedown[]  = { "/home/mark/.dotfiles/scripts/volumectl.sh", "-1", NULL };
static const char *volumemute[]  = { "/home/mark/.dotfiles/scripts/volumectl.sh", "0", NULL };

/* Player controls */
static const char *playpause[]  = { "playerctl", "play-pause", NULL };
static const char *playnext[]  = { "playerctl", "next", NULL };
static const char *playprevious[]  = { "playerctl", "previous", NULL };

/* Dmenu menus */
static const char *powermenucmd[] =   { "/home/mark/.dotfiles/scripts/powermenu.sh", NULL };
static const char *displaymenucmd[] = { "/home/mark/.dotfiles/scripts/displaymenu.sh", NULL };

/* Keyboard Shortcuts */
#include <X11/XF86keysym.h>
static Key keys[] = {
	/* modifier                     key        function        argument */
  { MODKEY,                       XK_p,      spawn,          {.v = dmenucmd } },
  { MODKEY,                       XK_r,      spawn,          {.v = dmenucmd } },
  { MODSUP,                       XK_Return, spawn,          {.v = termcmd } },
  { MODSUP,                       XK_f,      spawn,          {.v = ffoxcmd } },
  // { MODSUP,                       XK_g,      spawn,          {.v = gchromecmd } },
  { MODSUP,                       XK_w,      spawn,          {.v = rangercmd } },
  { MODSUP,                       XK_i,      spawn,          {.v = htopcmd } },
  { MODSUP,                       XK_v,      spawn,          {.v = vimcmd } },
  { MODKEY,                       XK_b,      togglebar,      {0} },
  { MODKEY,                       XK_j,      focusstack,     {.i = +1 } },
  { MODKEY,                       XK_k,      focusstack,     {.i = -1 } },
  { MODKEY,                       XK_i,      incnmaster,     {.i = +1 } },
  { MODKEY,                       XK_d,      incnmaster,     {.i = -1 } },
  { MODKEY,                       XK_h,      setmfact,       {.f = -0.05} },
  { MODKEY,                       XK_l,      setmfact,       {.f = +0.05} },
  { MODKEY,                       XK_Return, zoom,           {0} },
  { MODKEY,                       XK_Tab,    view,           {0} },
  { MODKEY|ShiftMask,             XK_c,      killclient,     {0} },
  { MODKEY,                       XK_s,      setlayout,      {.v = &layouts[0]} },
  { MODKEY,                       XK_f,      setlayout,      {.v = &layouts[1]} },
  { MODKEY,                       XK_t,      setlayout,      {.v = &layouts[2]} },
  { MODKEY,                       XK_m,      setlayout,      {.v = &layouts[3]} },
  { MODKEY,                       XK_w,      setlayout,      {.v = &layouts[4]} },
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
  { 0,              XF86XK_AudioPlay,        spawn,          {.v = playpause } },
  { 0,              XF86XK_AudioNext,        spawn,          {.v = playnext } },
  { 0,              XF86XK_AudioPrev,        spawn,          {.v = playprevious } },
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

/* Mouse Click Definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkStatusText,        0,              Button1,        spawn,          {.v = playprevious} },
	{ ClkStatusText,        0,              Button2,        spawn,          {.v = playpause} },
	{ ClkStatusText,        0,              Button3,        spawn,          {.v = playnext} },
};

