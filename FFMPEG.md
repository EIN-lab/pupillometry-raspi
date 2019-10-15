# Video Conversion With FFmpeg

## Introduction
Video files need to be converted in order to be analysed with DeepLabCut or MATLAB. The following steps will show you how to convert videos and how to set specific parameters.

## Basic instructions
First, make sure FFmpeg is installed on your computer and can be called via command prompt.

```bash
# Check FFmpeg is installed and display options
ffmpeg -h
```

If the above command results in an error, download and install [FFmpeg](https://www.ffmpeg.org/) and repeat. Follow [adaptlearning's guide](https://github.com/adaptlearning/adapt_authoring/wiki/Installing-FFmpeg) in case you need help installing FFmpeg.

## Video conversion
Simply calling FFmpeg without specifying information about the video to convert is not a good idea. Ideally, at least the frame rate is given via the `-r` option.

```bash
# Navigate to video folder
cd 'C:/PATH/TO/VIDEO'

# A simple conversion with a specified input frame rate of 30 fps
ffmpeg -framerate 30 -i input.h264 output.mp4
```

## Batch processing of multiple videos
For batch processing of several videos with identical recording parameters, a short executable script can be created. Open a text editor and place the following inside.

```bash
for %%a in ("*.h264") do ffmpeg -framerate 30 -i "%%a" "%%~na.mp4"
pause
```

Save the file as convert.bat inside the same directory as the videos to convert and double-click it. After confirming to execute, all videos will be converted one-by-one and saved in the same directory with the same name as the original and an *.mp4 ending.

## Video cropping using [crop](https://ffmpeg.org/ffmpeg-filters.html#crop) filter
FFmpeg allows to edit video files in a number of ways during the conversion. For example videos can be cropped in order to decrease analysis time later. Also, you can cut your videos to remove unused frames before and/or after your frames of interest.

```bash
# The following parameters need to be specified
# out_w: width of the output video
# out_h: height of the output video
# x: horizontal position of left edge
# y: vertical position of top edge
ffmpeg -framerate 30 -i input.h264 -filter:v "crop=out_w:out_h:x:y" output.mp4
```
