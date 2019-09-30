# Video Conversion With FFMPEG

## Introduction
Video files need to be converted in order to be analysed with DeepLabCut or MATLAB. The following steps will show you how to convert videos and how to set specific parameters.

## Basic instructions
First, make sure ffmpeg is installed on your computer and can be called via command line (e.g. PowerShell or cmd.exe).

```bash
# Check ffmpeg is installed
ffmpeg -v
```

If the above command results in an error, download and install [ffmpeg](https://www.ffmpeg.org/) and repeat.

Simply calling ffmpeg without specifying information about the video to convert is not a good idea. Ideally, at least the frame rate is given via the `-r` option.

```bash
# Navigate to video folder
cd 'C:/PATH/TO/VIDEO'

# A simple conversion with a specified input frame rate of 30 fps
ffmpeg -framerate 30 -i input.h264 output.mp4
```

For batch processing of several videos with identical recording parameters, a short executable script can be created. Open a text editor and place the following inside.

```bash
for %%a in ("*.h264") do ffmpeg -framerate 30 -i "%%a" "%%~na.mp4"
pause
```

Save the file inside the same directory as the videos to convert and double-click it. After confirming to execute, all videos will be converted one-by-one and saved in the same directory with the same name as the original and a *.mp4 ending.
