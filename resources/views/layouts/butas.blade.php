@extends('layouts.master')
@section('main')
<div class="selectbar">
  <div class="kotedzai">
    <h3>Kotedžai:</h3>
    <ul>
      <a href="/kotedzas/1"><li>kotedžas nr.1</li></a>
      <a href="/kotedzas/2"><li>kotedžas nr.2</li></a>
      <a href="/kotedzas/3"><li>kotedžas nr.3</li></a>
      <a href="/kotedzas/4"><li>kotedžas nr.4</li></a>
      <a href="/kotedzas/5"><li>kotedžas nr.5</li></a>
      <a href="/kotedzas/6"><li>kotedžas nr.6</li></a>
    </ul>
  </div>
  <div class="namai">
    <h3>Namai:</h3>
    <ul>
    <a href="/pirmasd"><li id="vienasvienas">namas nr.1</li></a>
    <a href="/antrasd"><li id="dudu">namas nr.2</li></a>
    <a href="/treciasd"><li id="trystrys">namas nr.3</li></a>
    <a href="/ketvirtasd"><li id="keturiketuri">namas nr.4</li></a>
    </ul>
  </div>
  <div class="aukstai">
    <h3>Aukštai:</h3>
    <ul>
    <a href=""><li id="vienas">1a.</li></a>
    <a href=""><li id="du">2a.</li></a>
    <a href=""><li id="trys">3a.</li></a>
    </ul>
  </div>
</div>
<div class="butas">
  <div class="planas">
    <div id="planoimg">
    <img data-toggle="modal" data-target="#butoimgmodal" id='butoimg' src="{{ asset ('images/' . $butas->image) }}">
    </div>
  </div>
  <div class="aprasymas">
  
    <ul>
    <h3>Butas: {{ $butas->buto_id}}</h3>
      <li>NAMAS: {{$butas->namo_id}}</li>
      <li>AUKŠTAS: {{$butas->auksto_id}}</li>
      <li>KAMBARIŲ SK.: </li>
      <li>PLOTAS, KV. M.: </li>
      <!-- <li>KRYPTIS: </li> -->
      <li id="kotedzostatusas">{{$butas->statusas}} </li>
      <li>KAINA, EUR: </li>
      <li>APDAILA: </li>
                  
    </ul>
    
  </div>
</div>
<div width="300px" height="600px" class="modal fade" id="butoimgmodal" role="dialog">
    <div class="modal-dialog">
      <div class="loading"></div>
      <!-- Modal content-->
      <div class="modal-custom">
        <button  style="border-radius: 50% 50%; border: 2px solid blue; width:30px; height:30px; color: blue; opacity: 1; position: absolute; right: -2%; top: -2%" type="button" class="close" data-dismiss="modal">&times;</button>
        <img style="display: block; margin: 0 auto" width="500px" height="600px" src="{{ asset ('images/' . $butas->image) }}">
      </div>
      
    </div>
  </div>
<script type="text/javascript">
$(function() {
  var url = location.pathname;
  var vienasvienas1 = '/1/1/1';
  var vienasvienas2 = '/1/1/2';
  var vienasvienas3= '/1/1/3';
  var vienasdu1 = '/1/2/1';
  var vienasdu2 = '/1/2/2';
  var vienasdu3 = '/1/2/3';
  var vienastrys1 = '/1/3/1';
  var vienastrys2 = '/1/3/2';
  var vienastrys3 = '/1/3/3';
  var duvienas1 = '/2/1/1';
  var duvienas2 = '/2/1/2';
  var duvienas3 = '/2/1/3';
  var dudu1 = '/2/2/1';
  var dudu2 = '/2/2/2';
  var dudu3 = '/2/2/3';
  var dutrys1 = '/2/3/1';
  var dutrys2 = '/2/3/2';
  var dutrys3 = '/2/3/3';
  var trysvienas1 = '/3/1/1';
  var trysvienas2 = '/3/1/2';
  var trysvienas3 = '/3/1/3';
  var trysdu1 = '/3/2/1';
  var trysdu2 = '/3/2/2';
  var trysdu3 = '/3/2/3';
  var trystrys1 = '/3/3/1';
  var trystrys2 = '/3/3/2';
  var trystrys3 = '/3/3/3';
  var keturivienas1 = '/4/1/1';
  var keturivienas2 = '/4/1/2';
  var keturivienas3 = '/4/1/3';
  var keturidu1 = '/4/2/1';
  var keturidu2 = '/4/2/2';
  var keturidu3 = '/4/2/3';
  var keturitrys1 = '/4/3/1';
  var keturitrys2 = '/4/3/2';
  var keturitrys3 = '/4/3/3';
  
  if(vienasvienas1 == url){
    $('#vienas').addClass('active');
    $('#vienasvienas').addClass('active');
  } 
  if(vienasvienas2 == url){
    $('#vienas').addClass('active');
    $('#vienasvienas').addClass('active');
  } 
  if(vienasvienas3 == url){
    $('#vienas').addClass('active');
    $('#vienasvienas').addClass('active');
  } 
  if(vienasdu1 == url){
    $('#du').addClass('active');
    $('#vienasvienas').addClass('active');
  } 
  if(vienasdu2 == url){
    $('#du').addClass('active');
    $('#vienasvienas').addClass('active');
  } 
  if(vienasdu3 == url){
    $('#du').addClass('active');
    $('#vienasvienas').addClass('active');
  } 
  if(vienastrys1 == url){
    $('#trys').addClass('active');
    $('#vienasvienas').addClass('active');
  } 
  if(vienastrys2 == url){
    $('#trys').addClass('active');
    $('#vienasvienas').addClass('active');
  } 
  if(vienastrys3 == url){
    $('#trys').addClass('active');
    $('#vienasvienas').addClass('active');
  } 
  if(duvienas1 == url){
    $('#vienas').addClass('active');
    $('#dudu').addClass('active');
  }
  if(duvienas2 == url){
    $('#vienas').addClass('active');
    $('#dudu').addClass('active');
  }
  if(duvienas3 == url){
    $('#vienas').addClass('active');
    $('#dudu').addClass('active');
  }
  if(dudu1 == url){
    $('#du').addClass('active');
    $('#dudu').addClass('active');
  }
  if(dudu2 == url){
    $('#du').addClass('active');
    $('#dudu').addClass('active');
  }
  if(dudu3 == url){
    $('#du').addClass('active');
    $('#dudu').addClass('active');
  }
  if(dutrys1 == url){
    $('#trys').addClass('active');
    $('#dudu').addClass('active');
  }
  if(dutrys2 == url){
    $('#trys').addClass('active');
    $('#dudu').addClass('active');
  }
  if(dutrys3 == url){
      $('#trys').addClass('active');
      $('#dudu').addClass('active');
  }
  if(trysvienas1 == url){
      $('#vienas').addClass('active');
      $('#trystrys').addClass('active');
  }
  if(trysvienas2 == url){
      $('#vienas').addClass('active');
      $('#trystrys').addClass('active');
  }
  if(trysvienas3 == url){
      $('#vienas').addClass('active');
      $('#trystrys').addClass('active');
  }
  if(trysdu1 == url){
      $('#du').addClass('active');
      $('#trystrys').addClass('active');
  }
  if(trysdu2 == url){
      $('#du').addClass('active');
      $('#trystrys').addClass('active');
  }
  if(trysdu3 == url){
      $('#du').addClass('active');
      $('#trystrys').addClass('active');
  }
  if(trystrys1 == url){
      $('#trys').addClass('active');
      $('#trystrys').addClass('active');
  }
  if(trystrys2 == url){
      $('#trys').addClass('active');
      $('#trystrys').addClass('active');
  }
  if(trystrys3 == url){
      $('#trys').addClass('active');
      $('#trystrys').addClass('active');
  }
  if(keturivienas1 == url){
      $('#vienas').addClass('active');
      $('#keturiketuri').addClass('active');
  }
  if(keturivienas2 == url){
      $('#vienas').addClass('active');
      $('#keturiketuri').addClass('active');
  }
  if(keturivienas3 == url){
      $('#vienas').addClass('active');
      $('#keturiketuri').addClass('active');
  }
  if(keturidu1 == url){
      $('#du').addClass('active');
      $('#keturiketuri').addClass('active');
  }
  if(keturidu2 == url){
      $('#du').addClass('active');
      $('#keturiketuri').addClass('active');
  }
  if(keturidu3 == url){
      $('#du').addClass('active');
      $('#keturiketuri').addClass('active');
  }
  if(keturitrys1 == url){
      $('#trys').addClass('active');
      $('#keturiketuri').addClass('active');
  }
  if(keturitrys2 == url){
      $('#trys').addClass('active');
      $('#keturiketuri').addClass('active');
  }
  if(keturitrys3 == url){
      $('#trys').addClass('active');
      $('#keturiketuri').addClass('active');
  }


  
  
});
  
</script>
 <script type="text/javascript">
$(function() {
  $('#abutai').addClass('active');
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
@endsection