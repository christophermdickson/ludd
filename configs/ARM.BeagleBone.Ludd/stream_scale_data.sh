#!/bin/bash

# ingest axis absolute position data from igaging scales on arduino 
# connected over the BBB USB port

stty -F /dev/ttyACM0 cs8 9600 ignbrk -brkint -imaxbel -opost -onlcr -isig -icanon -iexten -echo -echoe -echok -echoctl -echoke noflsh -ixon -crtscts

cat /dev/ttyACM0 

#halrun
#loadrt streamer depth=2 cfg=ssss
#loadrt threads name1=test-thread period1=1000000
#addf streamer.0 test-thread
#
#start




