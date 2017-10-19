<?php

return [

    'howto' => 'Guide',
    'title' => 'Guide',
    'q1'   => 'How to change orientation/origin of my cloud point ?',
    'p101' => 'Sometime, it might happen that your cloud point is not correctly oriented or the origin is not set correctly.',
    'p102' => 'In order to change it you can use a software like Meshlab to change it the way you want.',
    'p103' => 'First open your file :',
    'p104' => 'File -> Import Mesh...',
    'p105' => 'You will see your model, for example like this.',
    'p106' => 'Select all your points by pressing Ctrl+Shift+A and then apply',
    'p107' => 'All your points will turn red (Selected)',
    'p108' => 'Click on Render->Show Axis to check the coordinates',
    'p109' => 'What we want is to have the xy plan be our "floor plan" and the z axis pointing to the sky',
    'p110' => 'To do that go to Filters->Normals, Curvatures and Orientation->Transform:Rotate to Fit to a plan',
    'p111' => 'Select XY as the plan to fit and "Move to Origin" so the model will automatically go to the origin',
    'p112' => 'You can check the preview box to have an instant feedback and select only one axis at a time to rotate your model.',
    'p113' => 'When you are satisfied with the result, click "Apply" then "Close" and your model will be ready to export',
    'p114' => 'Go to File->Export Mesh As..',
    'p115' => 'Choose a name for your file',
    'p116' => "Keep the file as binary encoding as it will be lighter, and that's it, your file is ready !",

    'q2'   => 'How to upload PointClouds (PLY)?',
    'p201' => 'To upload your pointcloud, go to the assets (vertival bar on the left), then in the "Models" tab.',
    'p202' => 'Then click on the "Add New button" and select your file',
    'p203' => 'Wait for your file to be upload and processed.',
    'p204' => "And it's done, you should see a preview and be able to edit the file, the file is now ready to be added to a Sapce."  ,

    'q3'   => "How to create a space with a pointcloud (PLY) ?",
    'p301' => "Go to space > Add New",
    'p302' => "Then select the PointCloud Space",
    'p303' => "Set a title for your space",
    'p304' => 'And select "add a Point Cloud model".',
    'p305' => 'Choose a title for the model your will use, and click on "add a model". It will display all the models available, choose one or upload your own.',
    'p306' => 'Select insert on the submenu of the chosen model and then click "save"',
    'p307' => "You can now click on preview to see your new space with the appropriate model",
    'p308' => 'If you want it public in the publish window select "edit", then "published" in the dropbox',

];
