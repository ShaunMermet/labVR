<!DOCTYPE html>
<html>
<head>
    <title>@yield('title')</title>

    <link rel="shortcut icon" type="image/png" href="{{ url('favicon.ico') }}"/>

    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes"> <!-- Fullscreen Landscape on iOS -->

    <meta name="abstract" content="@yield('title')" />
    <meta name="description" content="@yield('title')" />
    <meta name="keywords" content="" />
    <meta name="copyright" content="" />
    <meta name="robots" content="follow, index" />

    <meta http-equiv="origin-trial" data-feature="WebVR" data-expires="04/11/17" content="{{ $origin_trial_token }}">

    <meta property="og:site_name" content="@yield('title')" />
    <meta property="og:image:secure_url" content="{{ url($theme_dir . '/screenshot.png') }}" />
    <meta property="og:image" content="{{ url($theme_dir . '/screenshot.png') }}" />
    <meta property="og:description" content="@yield('title')" />
    <meta property="og:title" content="@yield('title')" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="{{ \Request::url() }}" />

    <link rel="stylesheet" href="{{ url($theme_dir . '/css/style.css') }}">
    <script src="https://aframe.io/releases/0.5.0/aframe.min.js"></script>
    <script src="{{ url($theme_dir . '/js/aframe-layout-component.min.js') }}"></script>
    <script src="https://rawgit.com/donmccurdy/aframe-extras/v2.1.1/dist/aframe-extras.loaders.min.js"></script>
    <script src="//cdn.rawgit.com/donmccurdy/aframe-extras/v3.8.3/dist/aframe-extras.min.js"></script>
</head>
<body>

@yield('scene')

</body>
</html>
