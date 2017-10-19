<?php

return [

  '#theme-name' => 'Polygon Space',
  '#theme-key' => 'E-Lab-3DModel-theme',
  '#theme-version' => '1.0',
  '#ideaspace-version' => '>=1.0.0',
  '#theme-description' => 'EnRouteLab 3D model theme',
  '#theme-author-name' => 'E-Lab',
  '#theme-author-email' => 'shaun.mermet@enroutelab.com',
  '#theme-homepage' => 'https://www.ideaspacevr.org/themes',
  '#theme-keywords' => '3D theme, simple',
  '#theme-compatibility' => 'Google Cardboard, Daydream, Oculus, Samsung Gear VR, no headset',
  '#theme-view' => 'scene',

  '#content-types' => [

    'PLYModel' => [
      '#label' => 'Polygon-ply Model',
      '#description' => 'Use some ply-models and view them in VR.',
      '#max-values' => 'infinite',
      '#fields' => [

        'PLY-model' => [
          '#label' => 'Select polygon',
          '#description' => 'Selection',
          '#help' => 'Add a file',
          '#type' => 'model3d',
          '#file-extension' => ['ply'],
          '#required' => false,
        ],

      ], /* fields */

    ], /* Model */
    'OBJModel' => [
      '#label' => 'Polygon-obj Model',
      '#description' => 'Use some obj-models and view them in VR.',
      '#max-values' => 'infinite',
      '#fields' => [

        'OBJ-model' => [
          '#label' => 'Select polygon',
          '#description' => 'Write some text',
          '#help' => 'Add a file',
          '#type' => 'model3d',
          '#file-extension' => ['obj'],
          '#required' => false,
        ],

      ], /* fields */

    ], /* Model */
    'SkyBox' => [
      '#label' => 'SkyBoxLabel',
      '#description' => 'Skybox of the scene, Not Required',
      '#max-values' => 'infinite',
      '#fields' => [

        'SkyBox-item' => [
          '#type' => 'image',
          '#label' => 'Skybox for the scene',
          '#description' => 'Image used fo the Skybox',
          '#required' => false,
          '#file-extension' => ['jpg', 'png'],
          '#help' => 'Skybox helper',
        ],

      ], /* fields */

    ], /* Model */
    'Floor' => [
      '#label' => 'FloorLabel',
      '#description' => 'Floor of the scene, Not Required',
      '#max-values' => 'infinite',
      '#fields' => [

        'Floor-item' => [
          '#type' => 'image',
          '#label' => 'Floor for the scene',
          '#description' => 'Image used fo the floor',
          '#required' => false,
          '#file-extension' => ['jpg', 'png'],
          '#help' => 'Floor helper',
        ],

      ], /* fields */

    ], /* Model */

  ], /* content types */

];


