linuxcnc / machinekit configuration + miscellaneous setup scripts for "Ludd" - a homebrew 
beaglebone-based CNC controller for a converted Sieg (aka Grizzly/Harbor Freight, etc mini-mill)  

Although there are many CNC conversions to be found on the interwebs, this one is unusual in that 
it's set up for closed-loop/hybrid servo motor control + position feedback, using a pragmatric 
combination of cheap/surplus/hobbyist hardware and improvised, soldering-iron friendly electronics.  

The design employs high quality, analog input / analog feedback AMC motor amplifiers
(to be found new on ebay for ~ $30 each) driving a set of Parker/Parvex PM servo-motors (rescued from 
the Twin Cities' iconic emporium of everything liquidated, imperfect or obsolete - Ax-Man surplus)

LinuxCNC position feedback is provided via a USB/serial stream of absolute position values, 
obtained from a set of arduino-monitored 21-bit capacitave scales. 

The scales (originally added to provide low-cost DRO) had been thrown in for free with the mill 
when it was obtained for $300 through Craigslist. They were adapted to serve for this project 
by replacing the DRO readouts with an Arduino set-up to decode the scale positions (aided by 
some nifty reverse engineering by Yuriy Krushelnytskiy. Viz: http://www.yuriystoys.com/2012/01/reading-gtizzly-igaging-scales-with.html )

The position data is supplemented by direct tachometer-driven/analog velocity control loops between
the motors and amplifiers.

Amplifier input position control is also continuous/analog (+/-10v), systhesized from micro-transformer
isolated 20khz PWM signals, using a salvaged RS232/423 driver chip coupled with a simple low-pass filter.

The position control PWM is generated within the Beaglebone PRU, using the machinekit stepper control 
driver originally written by Charles Steinkuehler.
