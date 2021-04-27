@extends('layouts.master')
@section('main')
<div id="vietapapildomas">
  <div id="vietamainsection">
    <div id="vietabar" class="klase">
      <div id="vietatekstas">
        <h2>Vieta mieste</h2>
        <br>
        <img id="vietaimg" alt="klemiskes kvartalo vizualizacija" src="{{asset('images\geresnis2.jpg')}}">
        <p>Iš naujojo kvartalo patogiai galite susisiekti su senamiesčiu – pėsčiomis (15 min.), dviračiu (7 min., už 200 m praeina dviračių takas) , automobiliu (5 min.), viešuoju transportu (10 min., 200 metrų atstumu įrengtas autobusų sustojimas).
        Šalia rasite net keletą bendrojo lavinimo mokyklų, aukštesniųjų mokyklų.
        1,5 km atstumu projektuojamas ir planuojamas statyti didžiulis prekybos ir pramogų centras.
        Iš naujosios gyvenvietės patogiai pasieksite kelią Klaipėda-Palanga, kelių minučių bėgyje pasieksime automagistralę Klaipėda-Vilnius.
        </p>
        
      </div>
      <div id="map"></div>
   </div>
  </div>
</div>


@endsection
@section('script')
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBlBm8xS8RWioeNIrbZ1G2AGwwYZmR0jjg&callback=initMap"
            type="text/javascript"></script>
{{--    <script type="text/javascript">--}}
{{--        $(function() {--}}
{{--            $('#avieta').addClass('active');--}}
{{--        });--}}
{{--    </script>--}}
@endsection

