# rofi-jack
![multiple connections with rofi-jack](/multiconnect.gif)
*rofi-jack-device with [Carla from the kxstudio repository](https://kx.studio/Applications)*

A collection of scripts for controlling and manipulating the [JACK audio connection kit](https://jackaudio.org/) using the [rofi](https://github.com/davatorium/rofi) application launcher.

## rofi-jack-connect

A script for making connections, either one at a time or multi channel.

If no arguments are supplied, it will toggle between single channel connect and single channel disconnect as default behaviour.

That is, if a connection is already made between the two nodes specified, it will break that connection and vice versa.

Optional arguments:

For single channels
--connect or -c
--disconnect or -d

For all channels in from device
--connect-all or -ca

For all channels in from device
--disconnect-all or -da

Examples:
```bash
rofi-jack-connect --connect # Specifically connect the two chosen connection points
rofi-jack-connect --connect-all # Same as above but with all from device's outputs
rofi-jack-connect --disconnect # Specifically disconnect the two chosen connection points
rofi-jack-connect --disconnect-all # Same as above but with all from device's outputs

rofi-jack-connect # Connect or disconnect depending on status
```
## rofi-jack-device

![jack device selection](/jack-device.gif)
Start jack with the chosen audio device using the rofi menu launcher.

If jack is already started, it will be killed (both `jackd` and `jackdbus` will be killed) and then restarted using your `~/.jackdrc` but filtered for the chosen device

Example
```bash
rofi-jack-device
```

## changejackdevice
This runs `rofi-jack-device` in conjunction with some functions that kills pulse audio, restarts it and restarts the cadence pulseaudio 2 jack bridge. This is only necessary if you are using pulse and it calls a function from the [cadence](https://kx.studio) so it got it's own separate script because it's only relevant to people using those. 

Example
```bash
changejackdevice
```
