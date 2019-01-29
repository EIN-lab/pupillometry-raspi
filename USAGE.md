# Usage of the camera guided user interface (GUI)

## Introduction
The following steps will show you how to use CamGUI.py with its various optional parameters.

## Basic instructions
In order for the camera GUI to start, both the camera and the BrightPi need to be connected to the raspberry (see the [assembly guide](./README.md) for more information on how to get set up).
When everything is connected properly, the GUI is started by typing the following in a terminal window.

```bash
# Start CamGUI.py from its folder
python /home/pi/Code/camera-gui/CamGUI.py
```

### GUI controls
![image_of_GUI]

1. Opens camera preview
2. Closes camera preview
3. Specifies time in seconds for a recording to last
4. Specifies path and filename to store file
5. Opens a file dialogue box to browse
6. Enables external triggering
7. Starts recording
8. Stops recording
9. Sets the (digital) zoom value
10. Controls BrightPi light source

### Simple recording
For a simple recording, start CamGUI.py and press "Start preview". Now adjust camera position and focus. If you want to see video on the screen during your recording, simply leave the preview on and press "Start recording". The camera will now record to the directory shown in terminal until "Stop recording" is pressed. The default filename is constructed from the date and time of the recording.

### Timed recording
If you want the recording to run for a specified amount of time, enter the time in seconds into the dialogue box. A timer showing the remaining time will be displayed in the terminal window from which CamGUI.py was started.

## Optional parameters
CamGUI.py can be started with optional parameters in the following format, without the brackets.

```bash
# Start CamGUI.py with optional parameters
python /home/pi/Code/camera-gui/CamGUI.py --[PARAMETER] [VALUE]

# Example without BrightPi light source control.
# Note that '--light_off' doesn't require a value
python /home/pi/Code/camera-gui/CamGUI.py --light_off

# Example without BrightPi light source control and low frame rate
python /home/pi/Code/camera-gui/CamGUI.py --light_off --framerate 5
```

Valid parameters are:

+ `--fullscreen` shows preview in full screen mode. This parameter needs no value. (Default = False)
+ `--trigger_pin` specifies the input trigger pin number. (Default = 40)
+ `--light_off` disables light source. Used when no BrightPi is attached. This parameter needs no value. (Default = False)
+ `--prevsize S` scales preview to custom width S. (Default = 320)
+ `-r R` or `--framerate R` sets a custom frame rate R. (Default = 30)
+ `--rotation ROT` sets the image rotation ROT in degrees. (Default = 180)
+ `--timeout T` sets the timeout T when waiting for a trigger, in seconds. (Default = 20)
+ `--sensor_mode N` sets the sensor mode N. Can be one out of [1-7]. Refer to the PiCamera [docs](https://picamera.readthedocs.io/en/release-1.12/fov.html#camera-modes) for an overview of different modes. (Default = 1)

## External triggering
CamGUI.py can accept external triggers on pin 40 (GPIO 21) when the appropriate box is ticked. CamGUI.py will then wait for the time specified with `--timeout` (default = 20 seconds) for the pin to be pulled low. For example with a push button between GND and GPIO21.

## Start CamGUI.py via an executable
CamGUI.py can also be started from an executable placed on the desktop, for example. Follow below steps to open an editor.

```bash
sudo nano /home/pi/Desktop/start_camera.sh
```

Then enter the following lines. Add optional parameters as needed.

```bash
#!/bin/sh
python /home/pi/Code/camera-gui/CamGUI.py
```

Type `CTRL + o` to save and `CTRL + x` to exit. Now, run the below command to make the file executable.

```bash
sudo chmod +x start_camera.sh
```
