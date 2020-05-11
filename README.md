# rofi-jack
![multiple connections with rofi-jack](/multiconnect.gif)
*rofi-jack-device with [Carla from the kxstudio repository](https://kx.studio/Applications)*

A collection of scripts for controlling and manipulating the [JACK audio connection kit](https://jackaudio.org/) using the [rofi](https://github.com/davatorium/rofi) application launcher.

# Scripts

### rofi-jack-device

![jack device selection](/jack-device.gif)

A rofi script for setting up and launching jack

Examples:

Display help:

```bash
rofi-jack-device -h`
```

Launch jack. If there is a ~/.jackdrc file it will filter it with the chosen hardware device and use the rest of the settings from before.

```bash
rofi-jack-device`
```

Launch the script in a special mode which will take you through a range of useful audio settings.
These are then saved for future use in ~/.jackdrc and then jack is launched

```bash
rofi-jack-device -s`
```

After having (re)started jack, kill pulseaudio and restart it with the pulse2jack bridge. For now, this is dependent on having cadence installed (because it uses the `cadence-pulse2jack` script)

```bash
rofi-jack-device -p`
```
Set all settings, save them and restart pulseaudio with bridge:

```bash
rofi-jack-device -s -p`
```
### rofi-jack-connect

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

