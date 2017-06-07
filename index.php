<?php

?>
<html>
  <head>
    <script src="https://aframe.io/releases/0.5.0/aframe.min.js"></script>
    <script src="https://rawgit.com/donmccurdy/aframe-extras/v2.1.1/dist/aframe-extras.loaders.min.js"></script>
  </head>
  <body>
    <a-scene>
	    <a-assets>
			<img id="groundTexture" src="img/floor.jpg">
	    	<img id="skyTexture" src="img/sky.jpg">
	    	<a-asset-item id="myPlyModel" src="soybean_tanashi_x5rgb15m_20161227_group1_densified_point_cloudGood3InvertedNorm.ply"></a-asset-item>
	  	</a-assets>
	  	<a-entity ply-model="src: #myPlyModel" position="0 1 0" rotation="-90 0 0" ></a-entity>
	  	<a-cylinder id="ground" src="#groundTexture" radius="30" height="0.1"></a-cylinder>
	  	<a-sky id="background" src="#skyTexture" theta-length="90" radius="30"></a-sky>
	</a-scene>
  </body>
</html>
