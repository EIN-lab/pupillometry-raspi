Open MATLAB and in the file browser navigate to the <<REPOSITORYNAME>> folder on your hard disk.

Right-click pupil-analysis and select “Add to path” -> “Selected Folders and Subfolders”.

In the command window, type

```Matlab
pup01 = pupilMeasurement()” without quotes.
```

  CAUTION
  This runs `pupilMeasurement()` without any additional parameters. For more information on additional parameters, please refer to the sample script in the example folder, or type `help pupilMeasurement` in the command window.

From the dialog box, choose one or several MP4 video files and click “Open”. Then select the results directory to save the output.

  CAUTION
  To select multiple video files, hold down the CTRL key (Windows) or CMD key (macOS).

MATLAB now presents you with the first frame of the first video file. Indicate the diameter across the pupil by left-clicking the left edge of the pupil and right-clicking the right edge of the pupil.

  CAUTION
  Try to draw the longest diameter across the pupil in order to provide as many seed points as possible. Right-clicking confirms the selection and the window closes immediately.

Wait for the progress bar to reach 100%. Results will now be saved in the results folder indicated previously.



[Home](./index.html)
