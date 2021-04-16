@extends('layouts.master')
@section('main')
<div id="apieprojekta">
     <div class="projektas">
     <h3>Klemiškės namai – vieta miesto žmogui</h3>
		<div class="projektotekstas">
            <img id="projektoimg1" alt="klemiskes kvartalo vizualizacija" src="{{asset('images\geresnis.jpg')}}">
			<p>Klemiškės gatvėje kuriamas naujas kvartalas padės pajusti modernaus ir patogaus gyvenimo sąvoką: čia puikiai dera privatumas, laisvalaikio zonos ir galimybės naudotis lengvai pasiekiamais Klaipėdos senamiesčio privalumais.
	       </p>
	       <br>
	       <p>Klemiškės namai – tai naujas keturių namų ir kotedžų kvartalas Klaipėdoje, kuriamas atsižvelgiant į aktyvių, daug dirbančių ir skubančių, tačiau gyvenimo džiaugsmą ir kokybę vertinančių žmonių poreikius.
	       </p>
	       <br>
	       <p>Subtilios, šiuolaikiškos urbanistinės architektūros 3-jų aukštų pastatai leis pajusti tikrą gyvenimo mieste malonumą. Namuose, kurie tarnauja greitai besikeičiantiems gyventojų poreikiams, ypač gerai jausis mėgstantys didmiesčio gyvenimo ritmą.</p>
		</div>
		
	</div>
	<div class="projektas">
	<h3>Racionalus išplanavimas ir patogaus gyvenimo sprendimai </h3>
		<div class="projektotekstas">
			<img id="projektoimg2" alt="klemiskes 3 daugiabucio vizualizacija" src="{{asset('images\treciasd.jpg')}}">
				<p>Erdviems savo butų balkonams ir terasoms gyventojai galės sugalvoti naujų paskirčių, kadangi dviračiai čia bus saugomi uždarose gyventojų dviračių saugyklose. 
				Šalia namų bus įrengtos erdvios parkavimo aikštelės, todėl gyventojams nereikės sukti galvos kur palikti savo automobilį.
				Gyventojai gales leisti laisvalaikį bendrose polisio ir sporto aikštelėse.
		       </p>
		</div>
	</div>
	<div class="projektas">
	<h3>Strategiškai gera vieta mieste</h3>
		<div class="projektotekstas">
			<img id="projektoimg3" alt="klemiskes kotedžų vizualizacija" src="{{asset('images\Kotedzas.jpg')}}">
			<p>Strategiškai gera vieta Klaipėdoje dalyje leis ne tik patogiai pasiekti bet kurioje miesto pusėje esančius objektus, bet ir patogiai nuvykti į Palangą, Šventąją.
	        </p>
			<br>
			<p>Naujasis kvartalas kuriamas atokiau nuo triukšmingų gatvių, kad netrikdytų kokybiško gyventojų poilsio, tačiau arti senamiesčio, kad būtų lengva ne tik efektyviai planuoti laiką, bet ir mėgautis kultūriniu, visuomeniniu ir asmeniniu gyvenimu.</p>
		</div>
	</div>
	<div class="projektas">
	<h3>Vieta mieste</h3>
		<div class="projektotekstas">
		<div id="projektoimg4"></div>
		<!-- <img id="projektoimg4" src="{{asset('images\kotedzas2.jpg')}}"> -->
			<p>Klėmiškės gatvė pasižymi saugia ir ramia aplinka, strategiškai gera vieta mieste, patogiomis sąlygomis susisiekti su senamiesčiu – pėsčiomis (15 min.), dviračiu (7 min.) , automobiliu (5 min.), viešuoju transportu (10 min.).</p>
		</div>
	</div>
</div>
<script type="text/javascript">
        function initMap() {
                var centriukas = {lat: 55.715408, lng: 21.161441};
                var myLatlng = {lat: 55.716326, lng: 21.175647};
                var map = new google.maps.Map(document.getElementById('projektoimg4'), {
                  zoom: 15,
                   mapTypeId: google.maps.MapTypeId.SATELLITE,
                  center: myLatlng,
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

                     // var vietalogo = '/images/mapologo.png';

                 var infowindow = new google.maps.InfoWindow({
                   content: contentString
                 });
                var marker = new google.maps.Marker({
                  position: myLatlng,
                  map: map,                
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

             }
    </script>

      <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBlBm8xS8RWioeNIrbZ1G2AGwwYZmR0jjg&callback=initMap"
  type="text/javascript"></script>

<script type="text/javascript">
$(function() {
  $('#aapie').addClass('active');
});
</script>
@endsection