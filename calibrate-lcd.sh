#!/bin/sh

if [ ! $1 ]; then
    echo "Please specify name of generated color profile. gcm-dump-edid can show your display's model name."
    # gcm-dump-edid is part of gnome-color-manager
    exit 1
fi
# -t 6500 Color temperature in Kelvin (usually what photographers consider "neutral" or natural lighting)
# -b 120  White point brightness in cd/cm2 (considered best for LCDs)
# -g 2.2  Gamma (default for Windows/X11 platforms)
# -yl     Calibrate as LCD
# -o      Also generate profile (.ICC/.ICM file)
# -v      Show verbose information during calibration
#
# See here for details: http://www.argyllcms.com/doc/Scenarios.html#PM1
dispcal -t 6500 -b 120 -g 2.2 -yl -v -o "$1"
