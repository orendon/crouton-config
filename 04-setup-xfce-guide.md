The XFCE Settings Manager
=========================

```Applications menu > Settings > Settings Manager```

### Turn ScreenSaver Off

```Settings > ScreenSaver```

Change mode to "Disable Screen Saver"

### Turn on Window Compositing

```Settings > Window Manager Tweaks > Compositor```

Check "Enable display compositing"

This enables xfce window snapping.

### No Desktop Icons

```Settings > Desktop > Icons > Default Icons```

Uncheck all (Home, Filesystem, Trash, and Removable Devices).

### Set Workspaces

```Settings > Workspaces > General```

Set number of workspaces to your preference.

```Settings > Window Manager Tweaks > Workspaces```

Uncheck "Use the mouse wheel on the desktop to switch workspaces."

### Set Wallpaper

```Settings > Desktop > Background > Images```

Click the plus button to add images from your downloads folder.

### Install Fonts

```Applications > Assessories > Typecatcher```

Use Typecatcher to install:

* Droid Sans
* Droid Sans Mono
* Droid Serif
* Ubuntu
* Ubuntu Condensed
* Ubuntu Mono
* Source Code Pro
* Source Sans Pro

If you need Microsoft fonts (Arial, Courier, Georgia, Times, and other favorites), install the ttf-mscorefonts-installer package.

```
$ sudo apt-get install ttf-mscorefonts-installer
```

### Set Font Family and Sizes for Apps and System

```Settings > Appearance > Fonts```

Use whatever settings work best for your eyesight. Personally, I use:

* Default Font = Ubuntu Regular 13
* Check "Enable anti-aliasing"
* Hinting = Full
* Sub-pixel order = None 

### Set Window Theme

Set the menu appearance: ```Settings > Appearance > Style```

Set the window and title bar theme: ```Settings > Window Manager > Style > Theme```

Set theme in both locations to Numix.

Set title bar font to Ubuntu at size 10.

Use the  "Button Layout" option in ```Settings > Window Manager > Style``` to switch to left-hand buttons if desired.

### Set Icons

```Settings > Appearance > Icons ```

Set to Faenza

### XFCE Panel

Create a small, transparent panel for displaying the current battery percentage.

```Settings > Panel > Display```

* Check "Don't display space on borders"
* Row Size = 16
* Length = 1
* Check "Automatically increase the length"

``` Settings > Panel > Appearance```

* Style = None
* Alpha = 0 to 50 percent depending on the brightness of  your desktop background

```Settings > Panel > Items```

Add the "Battery Monitor" item. 

Go to it's options ( items > click gear > display ) and unclick "display bar".

Move the panel to the lower right corner of the screen. Lock the panel.

### I Don't Want Images Opening with GIMP!

```Applications > File Manager```

Right click a file with the extention you want to change and select in the pop up menu select preferences. In the "Opens With" menu select another app to be the default file handler.
