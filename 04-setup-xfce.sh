#!/usr/bin/env zsh
## This script will setup the xfce environment so you don't have to waste time navigating the xfce settings menu.

# Mouse
xfconf-query -c pointers -p /Xephyr_virtual_mouse/ReverseScrolling -n -t bool -s true

# Top Panel
xfconf-query -c xfce4-panel -p /panels/panel-1/autohide -n -t bool -s true 
xfconf-query -c xfce4-panel -p /panels/panel-1/length -n -t int -s 100

# xfconf-query -c xfce4-panal -p /panels/panel-1/plugin-ids -n -s 1 -s 3 -s 15 -s 4 -s 5 -s 7 
# if this does not work (array is appended but not destroyed+repopulated) try the following:
## xfconf-query -c xfce4-panel -p /panels/panel-<PANELID>/plugin-ids
## xfconf-query -c xfce4-panel -p /plugins/plugin-<PLUGINID> -r
## xfce4-panel -r
## xfconf-query -c xfce4-panel -p /panels/panel-1/plugin-ids

xfconf-query -c xfce4-panel -p /panels/panel-1/position -n -t string -s "p=6;x=0;y=0"
xfconf-query -c xfce4-panel -p /panels/panel-1/position-locked -n -t bool -s true
xfconf-query -c xfce4-panel -p /panels/panel-1/size -n -t int -s 16

xfconf-query -c xfce4-panel -p /plugins/plugin-1 -n -t string -s applicationsmenu
xfconf-query -c xfce4-panel -p /plugins/plugin-1/button-icon -n -t string -s start-here-ubuntu
xfconf-query -c xfce4-panel -p /plugins/plugin-1/show-button-title -n -t bool -s true
xfconf-query -c xfce4-panel -p /plugins/plugin-1/show-menu-icons -n -t bool -s true

xfconf-query -c xfce4-panel -p /plugins/plugin-15 -n -t string -s separator
xfconf-query -c xfce4-panel -p /plugins/plugin-15/expand -n -t bool -s true
xfconf-query -c xfce4-panel -p /plugins/plugin-15/style -n -t int -s 0
 
xfconf-query -c xfce4-panel -p /plugins/plugin-3 -n -t string -s tasklist
xfconf-query -c xfce4-panel -p /plugins/plugin-4 -n -t string -s pager
xfconf-query -c xfce4-panel -p /plugins/plugin-5 -n -t string -s clock
xfconf-query -c xfce4-panel -p /plugins/plugin-5/digital-format -n -t string -s %l:%M %p
xfconf-query -c xfce4-panel -p /plugins/plugin-7 -n -t string -s battery

# Desktop Background
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/image-path -n -t string -s /home/aaron/Downloads/bg.jpg

# Desktop Font Sizing
xfconf-query -c xfce4-desktop -p /desktop-icons/use-custom-font-size -n -t bool -s true
xfconf-query -c xfce4-desktop -p /desktop-icons/font-size -n -t int -s 13  

# Desktop Icons
xfconf-query -c xfce4-desktop -p /desktop-icons/file-icons/show-filesystem -n -t bool -s false
xfconf-query -c xfce4-desktop -p /desktop-icons/file-icons/show-home -n -t bool -s false
xfconf-query -c xfce4-desktop -p /desktop-icons/file-icons/show-removable -n -t bool -s false
xfconf-query -c xfce4-desktop -p /desktop-icons/file-icons/show-trash -n -t bool -s false

# Window Manager
xfconf-query -c xfwm4 -p /general/cycle_workspaces -n -t bool -s false
xfconf-query -c xfwm4 -p /general/mousewheel_rollup -n -t bool -s false
xfconf-query -c xfwm4 -p /general/stroll_workspaces -n -t bool -s false
xfconf-query -c xfwm4 -p /general/theme -n -t string -s Numix
xfconf-query -c xfwm4 -p /general/title_alignment -n -t string -s center
xfconf-query -c xfwm4 -p /general/title_font -n -t string -s "Ubuntu 10"
xfconf-query -c xfwm4 -p /general/workspace_count -n -t int -s 4
xfconf-query -c xfwm4 -p /general/use_compositing -n -t bool -s true

# Xsettings
xfconf-query -c xsettings -p /Gtk/FontName -n -t string -s "Ubuntu 13"
xfconf-query -c xsettings -p /Gtk/MenuImages -n -t bool -s true
xfconf-query -c xsettings -p /Gtk/IconSizes -n -t string -s 3
xfconf-query -c xsettings -p /Gtk/ToolbarIconSize -n -t int -s 3
xfconf-query -c xsettings -p /Gtk/ToolbarStyle -n -t string -s icons
xfconf-query -c xsettings -p /Net/IconThemeName -n -t string -s Faenza-Ambiance
xfconf-query -c xsettings -p /Net/ThemeName -n -t string -s Numix
xfconf-query -c xsettings -p /Xft/Antialias -n -t int -s 1
xfconf-query -c xsettings -p /Xft/Hinting -n -s -1
xfconf-query -c xsettings -p /Xft/HintStyle -n -t string -s hintfull
xfconf-query -c xsettings -p /Xft/RGBA -s none
