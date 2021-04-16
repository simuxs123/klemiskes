@extends('layouts.master')
@section('main')
<div id="vietapapildomas">
  <div id="vietamainsection">
    <div id="vietabar" class="klase">
      <div id="vietatekstas">
        <h2>Vieta mieste</h2>
        <br>
        <img id="vietaimg" alt="klemiskes kvartalo vizualizacija" src="{{asset('images\geresnis.jpg')}}">
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

 <script type="text/javascript">
        function initMap() {
                var centriukas = {lat: 55.715408, lng: 21.161441};
                var myLatlng = {lat: 55.716326, lng: 21.175647};
                var map = new google.maps.Map(document.getElementById('map'), {
                  zoom: 14.4,
                   mapTypeId: google.maps.MapTypeId.ROADMAP,
                  center: centriukas,
                  scrollwheel: false,
                  zoomControl: true,
                  scaleControl: false,
                  disableDoubleClickZoom: false,
                });
                var contentString = '<div id="content">'+
                     '<div id="siteNotice">'+
                     '</div>'+
                     '<h5 id="firstHeading" class="firstHeading">Klemiskes Namai</h5>'+
                     '<div id="bodyContent">'
                     
                     '</div>'+
                     '</div>';

                     var vietalogo = '/images/trecias.png';

                 var infowindow = new google.maps.InfoWindow({
                   content: contentString
                 });
                var marker = new google.maps.Marker({
                  position: myLatlng,
                  map: map,
                  icon: vietalogo,                 
                });
                map.addListener('mouseover', function() {
                    infowindow.open(map, marker);

                });
                map.addListener('mouseout', function(){
                    infowindow.close();
                });
                google.maps.event.addListenerOnce(map, 'idle', function() {
                    google.maps.event.trigger(map, 'resize');
                });

                

                 var senamiestis = '/images/building1.png';

        var senamiestisMarker = new google.maps.Marker({
          position: {lat: 55.7074239, lng: 21.1333682},
          map: map,
          icon: senamiestis
        });

        contentString2 = '<div id="placemarkContent1" class="placemarkContent" >' + 
            '<h5 id="headContent1" class="placemarkHead">'+
            'Senamiestis.'+
            '</h5>'+
            '<div id="bodyContent1"  class="placemarkBody">'+
            'Atstumas: 5.1 km. '+
            ''+
            '</div>'+
            '</div>';

            var senamiestisinfowindow = new google.maps.InfoWindow({
                   content: contentString2
                 });

            senamiestisMarker.addListener('click', function() {
                    senamiestisinfowindow.open(senamiestis, senamiestisMarker);

                });
                

                var slengmok = '/images/school1.png';
        var slengmokMarker = new google.maps.Marker({
          position: {lat: 55.7192398, lng: 21.1782899},
          map: map,
          icon: slengmok
        });

        contentString3 = '<div id="placemarkContent1" class="placemarkContent" >' + 
            '<h5 id="headContent1" class="placemarkHead">'+
            'Klaipėdos r. Slengiu mokykla.'+
            '</h5>'+
            '<div id="bodyContent1"  class="placemarkBody">'+
            'Atstumas: 700 m. '+
            ''+
            '</div>'+
            '</div>';

            var slengmokinfowindow = new google.maps.InfoWindow({
                   content: contentString3
                 });

            slengmokMarker.addListener('click', function() {
                    slengmokinfowindow.open(slengmok, slengmokMarker);

                });
                

                 var valskol = '/images/kolegija1.png';
        var valskolMarker = new google.maps.Marker({
          position: {lat: 55.7259046, lng: 21.1731293},
          map: map,
          icon: valskol
        });

        contentString4 = '<div id="placemarkContent1" class="placemarkContent" >' + 
            '<h5 id="headContent1" class="placemarkHead">'+
            'Klaipėdos valstybinė kolegija.'+
            '</h5>'+
            '<div id="bodyContent1"  class="placemarkBody">'+
            'Atstumas: 1.5 km. '+
            ''+
            '</div>'+
            '</div>';

            var valskolinfowindow = new google.maps.InfoWindow({
                   content: contentString4
                 });

            valskolMarker.addListener('click', function() {
                    valskolinfowindow.open(valskol, valskolMarker);

                });

            var stotele = '/images/bus-stop1.png';
        var stoteleMarker = new google.maps.Marker({
          position: {lat: 55.717886, lng: 21.168475},
          map: map,
          icon: stotele
        });

        contentString5 = '<div id="placemarkContent1" class="placemarkContent" >' + 
            '<h5 id="headContent1" class="placemarkHead">'+
            'Autobusu stotele.'+
            '</h5>'+
            '<div id="bodyContent1"  class="placemarkBody">'+
            'Atstumas: 200 m. '+
            ''+
            '</div>'+
            '</div>';

            var stoteleinfowindow = new google.maps.InfoWindow({
                   content: contentString5
                 });

            stoteleMarker.addListener('click', function() {
                    stoteleinfowindow.open(stotele, stoteleMarker);

                });

            var dviraciu = '/images/bike1.png';
        var dviraciuMarker = new google.maps.Marker({
          position: {lat: 55.720543, lng: 21.169634},
          map: map,
          icon:dviraciu,
          optimized:false 
        });

        contentString5 = '<div id="placemarkContent1" class="placemarkContent" >' + 
            '<h5 id="headContent1" class="placemarkHead">'+
            'Dviračių takas.'+
            '</h5>'+
            '<div id="bodyContent1"  class="placemarkBody">'+
            'Atstumas: 200 m. '+
            ''+
            '</div>'+
            '</div>';

            var dviraciuinfowindow = new google.maps.InfoWindow({
                   content: contentString5
                 });

            dviraciuMarker.addListener('click', function() {
                    dviraciuinfowindow.open(dviraciu, dviraciuMarker);

                });

            var liepug = '/images/road1.png';
        var liepugMarker = new google.maps.Marker({
          position: {lat: 55.72595, lng: 21.1644842},
          map: map,
          icon:liepug,
          optimized:false 
        });

        contentString6 = '<div id="placemarkContent1" class="placemarkContent" >' + 
            '<h5 id="headContent1" class="placemarkHead">'+
            'Liepų g.'+
            '</h5>'+
            '<div id="bodyContent1"  class="placemarkBody">'+
            'Atstumas: 1.2 km. '+
            ''+
            '</div>'+
            '</div>';

            var liepuginfowindow = new google.maps.InfoWindow({
                   content: contentString6
                 });

            liepugMarker.addListener('click', function() {
                    liepuginfowindow.open(liepug, liepugMarker);

                });

                 var myoverlay = new google.maps.OverlayView();
     myoverlay.draw = function () {
         this.getPanes().markerLayer.id='markerLayer';
         console.log(markerLayer.id);         
     };
     
     myoverlay.setMap(map);                

             }
    </script>

      <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBlBm8xS8RWioeNIrbZ1G2AGwwYZmR0jjg&callback=initMap"
  type="text/javascript"></script>
  <script type="text/javascript">
$(function() {
  $('#avieta').addClass('active');
});
</script>

@endsection


