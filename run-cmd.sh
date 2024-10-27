#!/bin/sh

# kbd backlight script using tofi

CHOSEN=$(printf "" | tofi --config "$HOME"/.config/tofi/hz-config)

case "$CHOSEN" in
	*)  ;;
esac

