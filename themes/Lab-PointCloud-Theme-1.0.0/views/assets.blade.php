<a-assets>
	@if (isset($content['Floor']))
        @if (isset($content['Floor'][0]['Floor-item']))
        	<img id="groundTexture" src="{{ $content['Floor'][0]['Floor-item']['#uri']['#value'] }}">
        @endif
    @endif
    @if (isset($content['SkyBox']))
        @if (isset($content['SkyBox'][0]['SkyBox-item']))
        	<img id="skyTexture" src="{{ $content['SkyBox'][0]['SkyBox-item']['#uri']['#value'] }}">
        @endif
    @endif
    @if (isset($content['PLYModel']))
    	@foreach ($content['PLYModel'] as $PLYModel)
        	<a-asset-item id="ply{{ $PLYModel['PLY-model']['#id'] }}" src="{{$PLYModel['PLY-model']['#model'][0]['#uri']['#value'] }}"></a-asset-item>
        @endforeach
    @endif
    @if (isset($content['OBJModel']))
    	@foreach ($content['OBJModel'] as $OBJModel)
    		<a-asset-item id="obj{{ $OBJModel['OBJ-model']['#id'] }}" src="{{$OBJModel['OBJ-model']['#model'][1]['#uri']['#value'] }}"></a-asset-item>
	    	<a-asset-item id="mtl{{ $OBJModel['OBJ-model']['#id'] }}" src="{{$OBJModel['OBJ-model']['#model'][0]['#uri']['#value'] }}"></a-asset-item>
        @endforeach
    @endif
</a-assets>

