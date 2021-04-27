<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="author" content="Vaivada IT" />
    <meta property="og:title" content="Klemiškės namai vieta jums gyventi" />
    <meta property="og:image" content="http://www.klemiskesnamai.lt/images/logo.png" />
    <meta property="og:site_name" content="Klemiškės namai" />
    <meta property="og:url" content="http://www.klemiskesnamai.lt/" />
    <meta property="og:description" content="Parduodami butai/kotedžai klemiškės g. Klaipėda" />
    <title>Klemiškės namai</title>
    <link rel="stylesheet" type="text/css" href="{{ asset('/css/app.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ion-rangeslider/2.3.1/css/ion.rangeSlider.min.css"/>
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    </head>
  <body >
    @include('layouts._partials.header')
    <section>
        @yield('main')
    </section>

    @include('layouts._partials.footer')


    <script type="text/javascript" src="{{asset('js/app.js')}}"></script>
    @yield('script')
  </body>
</html>