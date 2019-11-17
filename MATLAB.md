## Analyse a single video

Open MATLAB and in the file browser navigate to the <<REPOSITORYNAME>> folder on your hard disk.

Right-click pupil-analysis and select “Add to path” -> “Selected Folders and Subfolders”.

In the command window, type

```Matlab
pup01 = pupilMeasurement()” without quotes.
```

> CAUTION: This runs `pupilMeasurement()` without any additional parameters. For more information on additional parameters, please refer to the sample script in the example folder, or type `help pupilMeasurement` in the command window.

From the dialog box, choose one or several MP4 video files and click “Open”. Then select the results directory to save the output.

> CAUTION: To select multiple video files, hold down the CTRL key (Windows) or CMD key (macOS).

MATLAB now presents you with the first frame of the first video file. Indicate the diameter across the pupil by left-clicking the left edge of the pupil and right-clicking the right edge of the pupil.

> CAUTION: Try to draw the longest diameter across the pupil in order to provide as many seed points as possible. Right-clicking confirms the selection and the window closes immediately.

Wait for the progress bar to reach 100%. Results will now be saved in the results folder indicated previously.

## Analyse a video with pre-defined parameters

Set up a MATLAB script containing the following text or simply open the script located in the example folder.

```Matlab
% Add pupil-analysis to MATLAB path (replace with your specific path)
addpath(genpath('D:\Code\Matlab\pupil-analysis'))

% Define parameters
fitMethod = 2;
spSelect = 'line';
doPlot = true;
thresVal = [];
frameInterval = 2;
videoPath = fullfile(utils.get_rootdir, 'example/sample_video.mp4');
fileSavePath = fullfile(utils.get_rootdir, 'example');
startFrame = 5;
enhanceContrast = true;
doCrop = true;
skipBadFrames = true;
fillBadData = 'linear';

% Run pupilMeasurement with pre-defined parameters
pup02 = pupilMeasurement('fitMethod', fitMethod, 'doPlot', doPlot, ...
    'thresVal', thresVal, 'frameInterval', frameInterval, ...
    'videoPath', videoPath, 'fileSavePath', fileSavePath, ...
    'startFrame', startFrame, 'enhanceContrast', enhanceContrast, ...
    'doCrop', doCrop, 'skipBadFrames', skipBadFrames, ...
    'fillBadData', fillBadData)
```

Now click "Run" at the top of the MATLAB IDE to run the script and follow the interactive dialog as outlined above.

[Home](./index.html)
