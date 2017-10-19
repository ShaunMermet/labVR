<!DOCTYPE html>
<html>
<head>
    <title>@yield('title')</title>

    <link rel="shortcut icon" type="image/png" href="{{ url('cosmos.png') }}"/>

    
</head>
<body style="margin:0px;padding:0px;overflow:hidden">

    <iframe id="display" src=""  style="border: 0; width: 100%; height: 100vh"></iframe>
    @if (isset($content['PLYModel']))
        @foreach ($content['PLYModel'] as $PLYModel)
            
            
      <div id="value" src="{{$PLYModel['PLY-model']['#model'][0]['#uri']['#value'] }}"></div>
      <div id="host" src="{{ url('') }}"></div>
      <script type="text/javascript">
         <!--
            function getSrc() {
               var value = document.getElementById("value");
               var src = value.getAttribute('src');
               
               var filename = src.replace(/^.*[\\\/]/, '');
               var link = filename.replace(/\.[^/.]+$/, "");
               return link;
            }
            var src = getSrc();
            var display = document.getElementById("display");
            var host = document.getElementById("host");
            var url = host.getAttribute('src');
            display.setAttribute("src", url+'/processed/'+src+'.html');
         //-->
      </script>
        @endforeach
    @endif
</body>
</html>
