@extends('layouts.master')
@section('main')
@include('layouts._partials.apie')


@endsection
@section('script')

<script type="text/javascript"
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBlBm8xS8RWioeNIrbZ1G2AGwwYZmR0jjg&callback=initMap"
        async defer
></script>
{{--<script type="text/javascript">--}}
{{--  $(function() {--}}
{{--    $('#aapie').addClass('active');--}}
{{--  });--}}
{{--</script>--}}
@endsection