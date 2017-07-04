@extends('theme::index')

@section('title', $space_title)

@section('scene')

    <a-scene>

        <a-entity camera="userHeight: 5" universal-controls="fly: true;movementEasingY: 15;"></a-entity>

        @include('theme::assets')

        
        
        
        @if (isset($content['Floor']))
            @if (isset($content['Floor'][0]['Floor-item']))
                <a-cylinder id="ground" src="#groundTexture" radius="30" height="0.1" scale="3 3 3"></a-cylinder>
            @endif
        @endif
        <a-sky color="#000000"></a-sky>
        @if (isset($content['SkyBox']))
            @if (isset($content['SkyBox'][0]['SkyBox-item']))
                <a-sky id="background" src="#skyTexture" theta-length="90" radius="30" scale="-3 3 3"></a-sky>
            @endif
        @endif
        @if (isset($content['PLYModel']))
            @foreach ($content['PLYModel'] as $PLYModel)
                <a-entity
                    ply-model="src: #ply{{ $PLYModel['PLY-model']['#id'] }}" 
                    rotation="{{ $PLYModel['PLY-model']['#rotation'] }}"
                    scale="{{ $PLYModel['PLY-model']['#scale'] }}"
                ></a-entity>
            @endforeach
        @endif
        @if (isset($content['OBJModel']))
            @foreach ($content['OBJModel'] as $OBJModel)
                <a-entity
                    obj-model="obj: #obj{{ $OBJModel['OBJ-model']['#id'] }};mtl: #mtl{{ $OBJModel['OBJ-model']['#id'] }}" 
                    rotation="{{ $OBJModel['OBJ-model']['#rotation'] }}"
                    scale="{{ $OBJModel['OBJ-model']['#scale'] }}"
                ></a-entity>
            @endforeach
        @endif

        

    </a-scene>

@endsection
