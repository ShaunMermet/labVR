<?php

return [

  '#theme-name' => 'E-Lab PCModel Theme',
  '#theme-key' => 'E-Lab-PCModel-theme',
  '#theme-version' => '1.0',
  '#ideaspace-version' => '>=1.0.0',
  '#theme-description' => 'EnRouteLab PC model theme',
  '#theme-author-name' => 'E-Lab',
  '#theme-author-email' => 'shaun.mermet@enroutelab.com',
  '#theme-homepage' => 'https://www.ideaspacevr.org/themes',
  '#theme-keywords' => 'PC theme, simple',
  '#theme-compatibility' => 'Google Cardboard, Daydream, Oculus, Samsung Gear VR, no headset',
  '#theme-view' => 'scene',

  '#content-types' => [

    'PLYModel' => [
      '#label' => 'PLY-Models',
      '#description' => 'Use some pointcloud ply-models and view them in browser.',
      '#max-values' => 'infinite',
      '#fields' => [

        'PLY-model' => [
          '#label' => 'Write some text',
          '#description' => 'Write some text',
          '#help' => 'Write some text',
          '#type' => 'model3d',
          '#file-extension' => ['ply'],
          '#required' => false,
        ],

      ], /* fields */

    ], /* Model */

  ], /* content types */

];


