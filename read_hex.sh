#!/bin/sh
# change -P as necessary
#
# find extended, high, low, lock, and unlock bits on hardware.txt
OPTS="-c stk500v2 -p m328p -P /dev/ttyACM0"
HEX="HEX_COPY.hex"

avrdude $OPTS -U flash:r:$HEX:i
