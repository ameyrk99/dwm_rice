# Make dwm diffs
diff -Nau dwm_org/config.def.h dwm/config.def.h > dwm.diff
diff -Nau dwm_org/config.mk dwm/config.mk >> dwm.diff
diff -Nau dwm_org/dwm.c dwm/dwm.c >> dwm.diff
diff -Nau dwm_org/drw.c dwm/drw.c >> dwm.diff
diff -Nau dwm_org/drw.h dwm/drw.h >> dwm.diff
diff -Nau dwm_org/fibonacci.c dwm/fibonacci.c >> dwm.diff

# Make st diffs
diff -Nau st_org/config.def.h st/config.def.h > st.diff
diff -Nau st_org/st.h st/st.h >> st.diff
diff -Nau st_org/st.c st/st.c >> st.diff

# Make dmenu diffs
diff -Nau dmenu_org/config.def.h dmenu/config.def.h > dmenu.diff
diff -Nau dmenu_org/dmenu.1 dmenu/dmenu.1 >> dmenu.diff
diff -Nau dmenu_org/dmenu.c dmenu/dmenu.c >> dmenu.diff
  
mv *.diff ../diffs

