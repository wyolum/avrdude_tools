#!/bin/sh
# change -P as necessary
#
OPTS="-c stk500v2 -p m328p -P /dev/ttyACM0"

avrdude $OPTS