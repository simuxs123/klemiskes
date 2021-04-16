@extends('layouts.master')
@section('main')
<div class="selectbar">
  <div class="kotedzai1">
    <h3>Kotedžai:</h3>
    <ul>
      <a href="/kotedzas/1"><li id="kotedzasnav1">kotedžas nr.1</li></a>
      <a href="/kotedzas/2"><li id="kotedzasnav2">kotedžas nr.2</li></a>
      <a href="/kotedzas/3"><li id="kotedzasnav3">kotedžas nr.3</li></a>
      <a href="/kotedzas/4"><li id="kotedzasnav4">kotedžas nr.4</li></a>
      <a href="/kotedzas/5"><li id="kotedzasnav5">kotedžas nr.5</li></a>
      <a href="/kotedzas/6"><li id="kotedzasnav6">kotedžas nr.6</li></a>
    </ul>
  </div>
  <div class="namai1">
    <h3>Namai:</h3>
    <ul>
    <a href="/pirmasd"><li>namas nr.1</li></a>
    <a href="/antrasd"><li>namas nr.2</li></a>
    <a href="/treciasd"><li>namas nr.3</li></a>
    <a href="/ketvirtasd"><li>namas nr.4</li></a>
    </ul>
  </div>
</div>
<div class="butas">
  <div class="planas">
    <div id="planoimg">
        <button onclick="changeText()" class="btn" id="btnr" ><img src="{{asset('images/rod-1.png')}}"/></button>
        <img data-toggle="modal" data-target="#1stimgmodal" class="skaidre" id='butoimg' src="{{ asset ('images/' . $kotedzas->image) }}">
        <img data-toggle="modal" data-target="#2ndimgmodal" class="skaidre" id='butoimg2' src="{{ asset ('images/' . $kotedzas->image2) }}">
        <button onclick="changeText2()" class="btn" id="btnn" ><img src="{{asset('images/rod.png')}}"/></button>
        <h4 id="demo"></h4>
        
    </div>
  </div>
  <div class="aprasymas">
  
    <ul>
    <h3>Kotedžas: {{ $kotedzas->kotedzo_id}}</h3>
      <li>NAMAS:</li>
      <li>AUKŠTŲ SK.: 2</li>
      <li>KAMBARIŲ SK.: </li>
      <li>PLOTAS, KV. M.: </li>
      <!-- <li>KRYPTIS: </li> -->
      <li id="kotedzostatusas">{{ $kotedzas->statusas}}</li>
      <li>KAINA, EUR: </li>
      <li>APDAILA: </li>
                  
    </ul>
    
  </div>
</div>
<div width="300px" height="600px" class="modal fade" id="1stimgmodal" role="dialog">
    <div class="modal-dialog">
      <div class="loading"></div>
      <!-- Modal content-->
      <div class="modal-custom">
        <button  style="border-radius: 50% 50%; border: 2px solid blue; width:30px; height:30px; color: blue; opacity: 1; position: absolute; right: -2%; top: -2%" type="button" class="close" data-dismiss="modal">&times;</button>
        <img style="display: block; margin: 0 auto" width="500px" height="600px" id='butoimg' src="{{ asset ('images/' . $kotedzas->image) }}">
      </div>
      
    </div>
  </div>
  <div width="300px" height="600px" class="modal fade" id="2ndimgmodal" role="dialog">
    <div class="modal-dialog">
      <div class="loading"></div>
      <!-- Modal content-->
      <div class="modal-custom">
        <button style="border-radius: 50% 50%; border: 2px solid blue; width:30px; height:30px; color: blue; opacity: 1; position: absolute; right: -4%; top: -4%" type="button" class="close" data-dismiss="modal">&times;</button>
        <img style="display: block; margin: 0 auto" width="500px" height="600px" id='butoimg' src="{{ asset ('images/' . $kotedzas->image2) }}">
      </div>
      
    </div>
  </div>
<script type="text/javascript">
$(function() {
  var url = location.pathname;
  var vienas = '/kotedzas/1';
  var du = '/kotedzas/2';
  var trys = '/kotedzas/3';
  var keturi = '/kotedzas/4';
  var penki = '/kotedzas/5';
  var sesi = '/kotedzas/6';
  if(vienas == url){
    $('#kotedzasnav1').addClass('active');
  } 
  if(du == url){
    $('#kotedzasnav2').addClass('active');
  }
  if(trys == url){
    $('#kotedzasnav3').addClass('active');
  }
  if(keturi == url){
    $('#kotedzasnav4').addClass('active');
  }
  if(penki == url){
    $('#kotedzasnav5').addClass('active');
  }
  if(sesi == url){
    $('#kotedzasnav6').addClass('active');
  }
  
});
  
</script>
<script type="text/javascript">
 var statusas = document.getElementById('kotedzostatusas');

      if(statusas.innerText == 0){
      statusas.innerHTML = 'STATUSAS: Laisvas';
      }else if(statusas.innerText == 1) {
       statusas.innerHTML = 'STATUSAS: Parduotas';
      }else{
        statusas.innerHTML = 'STATUSAS: Rezervuotas';
      }
</script>
<script type="text/javascript">
function changeText() {
  var demo = document.getElementById('demo');
  if (demo.innerHTML === '2 aukštas') {
    demo.innerHTML = '1 aukštas';
  } else {
    demo.innerHTML = '2 aukštas';
  }
}
function changeText2() {
  var demo = document.getElementById('demo');
  if (demo.innerHTML === '2 aukštas') {
    demo.innerHTML = '1 aukštas';
  } else {
    demo.innerHTML = '2 aukštas';
  }
}

</script>
@endsection