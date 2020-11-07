#!/bin/bash

# This script handles rotation of the screen and related input devices automatically
# using the output of the monitor-sensor command (part of the iio-sensor-proxy package)
# for sway.
# The target screen and input device names should be configured in the below variables.
# Note: input devices using the libinput driver (e.g. touchscreens) should be included
# in the WAYLANDINPUT array.  
#
# You can get a list of input devices with the `swaymsg -t output` command.
#
# This scritp was frok from https://gitlab.com/snippets/1793649 by Fishonadish 

# ALSO THIS IS NOT MINE I COPIED IT FROM HERE : https://github.com/tedk0n/autorotate_sway_script/blob/master/autorotate.sh


SCREEN="eDP-1"
WAYLANDINPUT=("1386:20991:Wacom_HID_51FF_Finger"
	"1386:20991:Wacom_HID_51FF_Pen"
	"1267:12563:MSFT0001:00_04F3:3113_Touchpad"
	"1267:12563:MSFT0001:00_04F3:3113_Mouse")


function rotate_ms {
    case $1 in
        "normal")
            rotate 0
            ;;
        "right-up")
            rotate 90
            ;;
        "bottom-up")
            rotate 180
            ;;
        "left-up")
            rotate 270
            ;;
    esac
}

function rotate {

    TARGET_ORIENTATION=$1

    echo "Rotating to" $TARGET_ORIENTATION

    swaymsg output $SCREEN transform $TARGET_ORIENTATION

    for i in "${WAYLANDINPUT[@]}" 
    do
        swaymsg input "$i" map_to_output "$SCREEN"
    done

}

while IFS='$\n' read -r line; do
    rotation="$(echo $line | sed -En "s/^.*orientation changed: (.*)/\1/p")"
    [[ !  -z  $rotation  ]] && rotate_ms $rotation
done < <(stdbuf -oL monitor-sensor)
