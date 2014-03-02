#!/usr/bin/env zsh
## This script will setup the xfce environment so you don't have to waste time navigating the xfce settings menu.

### fancy_echo()
fancy_echo() {
  printf "\n%b\n" "$1"
}

# Mouse
xfconf-query -c pointers -p /Xephyr_virtual_mouse/ReverseScrolling -s true

# Top Panel
xfconf-query -c xfce4-panel -p /panels/panel-1/autohide -s true 
xfconf-query -c xfce4-panel -p /panels/panel-1/length -s 100

xfconf-query -c xfce4-panal -p /panels/panel-1/plugin-ids -s 1 -s 3 -s 15 -s 4 -s 5 -s 7 
# if this does not work (array is appended but not destroyed+repopulated) try the following:
## xfconf-query -c xfce4-panel -p /panels/panel-<PANELID>/plugin-ids
## xfconf-query -c xfce4-panel -p /plugins/plugin-<PLUGINID> -r
## xfce4-panel -r
## xfconf-query -c xfce4-panel -p /panels/panel-1/plugin-ids

xfconf-query -c xfce4-panel -p /panels/panel-1/position -s p=6;x=0;y=0
xfconf-query -c xfce4-panel -p /panels/panel-1/position-locked -s true
xfconf-query -c xfce4-panel -p /panels/panel-1/size -s 16

xfconf-query -c xfce4-panel -p /plugins/plugin-1 -s applicationsmenu
xfconf-query -c xfce4-panel -p /plugins/plugin-1/button-icon -s start-here-ubuntu
xfconf-query -c xfce4-panel -p /plugins/plugin-1/show-button-title -s true
xfconf-query -c xfce4-panel -p /plugins/plugin-1/show-menu-icons -s true

xfconf-query -c xfce4-panel -p /plugins/plugin-15 -s separator
xfconf-query -c xfce4-panel -p /plugins/plugin-15/expand -s true
xfconf-query -c xfce4-panel -p /plugins/plugin-15/style -s 0
 
xfconf-query -c xfce4-panel -p /plugins/plugin-3 -s tasklist
xfconf-query -c xfce4-panel -p /plugins/plugin-4 -s pager
xfconf-query -c xfce4-panel -p /plugins/plugin-5 -s clock
xfconf-query -c xfce4-panel -p /plugins/plugin-5/digital-format -s %l:%M %p
xfconf-query -c xfce4-panel -p /plugins/plugin-7 -s battery

# Desktop Background
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/image-path -s /home/aaron/Downloads/bg.jpg

# Desktop Icons
xfconf-query -c xfce4-desktop -p /desktop-icons/file-icons/show-filesystem -s false
xfconf-query -c xfce4-desktop -p /desktop-icons/file-icons/show-home -s false
xfconf-query -c xfce4-desktop -p /desktop-icons/file-icons/show-removable -s false
xfconf-query -c xfce4-desktop -p /desktop-icons/file-icons/show-trash -s false

# Window Manager
xfconf-query -c xfwm4 -p /general/cycle_workspaces -s false
xfconf-query -c xfwm4 -p /general/mousewheel_rollup -s false
xfconf-query -c xfwm4 -p /general/stroll_workspaces -s false
xfconf-query -c xfwm4 -p /general/theme -s Numix
xfconf-query -c xfwm4 -p /general/title-alignment -s center
xfconf-query -c xfwm4 -p /general/title-font -s Ubuntu 10
xfconf-query -c xfwm4 -p /general/workspace_count -s 4
xfconf-query -c xfwm4 -p /general/use_compositing -s true

# Xsettings
xfconf-query -c xsettings -p /Gtk/FontName -s Ubuntu 13
xfconf-query -c xsettings -p /Gtk/Menuimages -s true
xfconf-query -c xsettings -p /Gtk/ToolbarIconSize -s 3
xfconf-query -c xsettings -p /Gtk/ToolbarStyle -s icons
xfconf-query -c xsettings -p /Net/IconThemeName Faenza-Ambiance
xfconf-query -c xsettings -p /Net/ThemeName -s Numix
xfconf-query -c xsettings -p /Xft/Antialias -s 1
xfconf-query -c xsettings -p /Xft/Hinting -s -1
xfconf-query -c xsettings -p /Xft/HintStyle -s hintfull
xfconf-query -c xsettings -p /Xft/RGBA -s none
