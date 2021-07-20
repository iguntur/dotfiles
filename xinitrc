#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
	xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
	xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
	xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
	xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi


################################################################################
## USER DEFINED ################################################################
################################################################################

################################################################################
## Key Binding
################################################################################
sxhkd &


################################################################################
## Notification
################################################################################
# dunst &


################################################################################
## WiFi State Connection
################################################################################
# /home/guntur/.bin/isup &


################################################################################
## Switch Escape <-> Caps_Lock
################################################################################
if [ -f "$HOME/.Xmodmap" ]; then
	xmodmap -e "clear lock"
	xmodmap $HOME/.Xmodmap
	xmodmap -e "clear lock"
fi


################################################################################
## Touchpad (18)
## `xinput list`
## `xinput list-props <device-id>`
## `xinput set-prop <device-id> <behaviour-id> ...`
## See: https://wiki.archlinux.org/index.php/Libinput
################################################################################
# touchpad_id=$(xinput list | grep -Eo 'Touchpad\s*id\=[0-9]{1,2}' | grep -Eo '[0-9]{1,2}')

# libinput Tapping Enabled (353)
# xinput set-prop $touchpad_id 353 1

# libinput Natural Scrolling Enabled (333)
# xinput set-prop $touchpad_id 333 1


################################################################################
## Clipboard Manager (Daemon)
################################################################################
clipmenud &

################################################################################
## Display
################################################################################
xrandr --output Virtual-1 --mode 1920x1080 &


################################################################################
## Wallpaper
################################################################################
nitrogen --restore &


################################################################################
## Compositor
################################################################################
picom -f &


################################################################################
## DWM Status Bar
################################################################################
~/workspace/scripts/dwm-status-bar.sh > /dev/null &


################################################################################
## Window Manager
################################################################################

# Handle DWM Restart
while true; do
	dwm > /dev/null 2>&1;
done

exec dwm
