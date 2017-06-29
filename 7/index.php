<?php

?>
<html>
  <head>
    <script src="https://aframe.io/releases/0.5.0/aframe.min.js"></script>
    <script src="https://rawgit.com/donmccurdy/aframe-extras/v2.1.1/dist/aframe-extras.loaders.min.js"></script>
    <script src="//cdn.rawgit.com/donmccurdy/aframe-extras/v3.8.3/dist/aframe-extras.min.js"></script>
  </head>
  <body>
    <a-scene>
	    <a-entity camera="userHeight: 25" universal-controls="fly: true;movementEasingY: 15;"s></a-entity>
		<a-assets>
			<img id="groundTexture" src="../img/floor.jpg">
	    	<img id="skyTexture" src="../img/sky3b.jpg">
	    	<a-asset-item id="odm-obj" src="../src/odmTexturing/odm_textured_model.obj"></a-asset-item>
	    	<a-asset-item id="odm-mtl" src="../src/odmTexturing/odm_textured_model.mtl"></a-asset-item>
	  	</a-assets>
	  	<a-cylinder id="ground" src="#groundTexture" radius="30" height="0.1" scale="3 3 3"></a-cylinder>
	  	<a-sky id="background" src="#skyTexture" theta-length="90" radius="30" scale="-3 3 3"></a-sky>
	  	<a-entity obj-model="obj: #odm-obj; mtl: #odm-mtl" rotation="-84.2 90.12 -90.1" position="0 29 0"></a-entity>
	</a-scene>
  </body>
</html>
