#!/bin/sh
# change -P as necessary
#
# find extended, high, low, lock, and unlock bits on hardware.txt
OPTS="-c stk500v2 -p m328p -P /dev/ttyACM0"
HEX="atmega/ATmegaBOOT_168_atmega328_pro_8MHz.hex"
HEX="optiboot/optiboot_atmega328_pro_8MHz.hex"
HEX="HEX_COPY.hex"
# HEX="Album.cpp.hex"

avrdude $OPTS -e
# avrdude $OPTS -U efuse:w:0x05:m
avrdude $OPTS -U hfuse:w:0xda:m ### was (See boards.txt)
# avrdude $OPTS -U hfuse:w:0xdc:m   ### for opti-8MHz
avrdude $OPTS -U efuse:w:0xff:m
avrdude $OPTS -U lfuse:w:0xff:m
avrdude $OPTS -U lock:w:0x3f:m    ## unlock
avrdude $OPTS -U flash:w:$HEX:i
avrdude $OPTS -U lock:w:0x0f:m    ## lock