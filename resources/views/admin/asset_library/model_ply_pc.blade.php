<!-- potree //-->
<iframe id="potree" src=""  style="border: 0; width: 100%;height: 75vh;max-height: 600px; */"></iframe>
       
  <div id="value" src="{{ $model_ply }}"></div>
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
        console.log('ok ok ok');
        var src = getSrc();
        var display = document.getElementById("potree");
        var host = document.getElementById("host");
        var url = host.getAttribute('src');
        display.setAttribute("src", url+'/processed/'+src+'.html');
     //-->
  </script>
        
