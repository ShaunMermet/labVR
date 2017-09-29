<?php

return [

    'howto' => 'Guide',
    'title' => 'Guide',
    'q1' => 'How to change orientation/origin of my cloud point ?',
    'p1' => 'Sometime, it might happen that your cloud point is not correctly oriented or the origin is not set correctly.',
    'p2' => 'In order to change it you can use a software like Meshlab to change it the way you want.',
    'p3' => 'First open your file :',
    'p4' => 'File -> Import Mesh...',
    'p5' => 'You will see your model, for example like this.',
    'p6' => 'Select all your points by pressing Ctrl+Shift+A and then apply',
    'p7' => 'All your points will turn red (Selected)',
    'p8' => 'Click on Render->Show Axis to check the coordinates',
    'p9' => 'What we want is to have the xy plan be our "floor plan" and the z axis pointing to the sky',
    'p10' => 'To do that go to Filters->Normals, Curvatures and Orientation->Transform:Rotate to Fit to a plan',
    'p11' => 'Select XY as the plan to fit and "Move to Origin" so the model will automatically go to the origin',
    'p12' => 'You can check the preview box to have an instant feedback and select only one axis at a time to rotate your model.',
    'p13' => 'When you are satisfied with the result, click "Apply" then "Close" and your model will be ready to export',
    'p14' => 'Go to File->Export Mesh As..',
    'p15' => 'Choose a name for your file',
    'p16' => "Keep the file as binary encoding as it will be lighter, and that's it, your file is ready !",

];
