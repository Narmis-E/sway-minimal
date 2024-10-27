#!/bin/sh

# Power menu script using tofi

CHOSEN=$(printf "Lock\nSuspend\nReboot\nShutdown\nLog Out" | tofi --config "$HOME"/.config/tofi/powermenu-config)

case "$CHOSEN" in
	"Lock") ~/.local/bin/lock.sh ;;
	"Suspend") systemctl suspend-then-hibernate ;;
	"Reboot") systemctl reboot ;;
	"Shutdown") systemctl poweroff ;;
	"Log Out") swaymsg exit ;;
	*) exit 1 ;;
esac

