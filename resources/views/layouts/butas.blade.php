@extends('layouts.master')
@section('main')
<div class="selectbar">
  <div class="selectbar-box">
    <div class="box-item">
      <h3>Namai:</h3>
      <ul>
      <a href="/pirmasd"><li class="text-capitalize {{ $butas->namo_id==1 ? 'active' : '' }}" id="vienasvienas">namas nr.1</li></a>
      <a href="/antrasd"><li class="text-capitalize {{ $butas->namo_id==2 ? 'active' : '' }}" id="dudu">namas nr.2</li></a>
      <a href="/treciasd"><li class="text-capitalize {{ $butas->namo_id==3 ? 'active' : '' }}" id="trystrys">namas nr.3</li></a>
      <a href="/ketvirtasd"><li class="text-capitalize {{ $butas->namo_id==4 ? 'active' : '' }}" id="keturiketuri">namas nr.4</li></a>
      </ul>
    </div>
    <div class="box-item">
      <h3>Aukštai:</h3>
      <ul>
      <a href="/namas/{{$butas->namo_id}}/1"><li class="{{ $butas->auksto_id==1 ? 'active' : '' }}" id="vienas">1a.</li></a>
      <a href="/namas/{{$butas->namo_id}}/2"><li class="{{ $butas->auksto_id==2 ? 'active' : '' }}" id="du">2a.</li></a>
      <a href="/namas/{{$butas->namo_id}}/3"><li class="{{ $butas->auksto_id==3 ? 'active' : '' }}" id="trys">3a.</li></a>
      </ul>
    </div>
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
      <li>KAMBARIŲ SK.: {{$butas->kambariai}}</li>
      <li>PLOTAS, KV. M.: {{$butas->plotas}}</li>
      <!-- <li>KRYPTIS: </li> -->
      <li id="kotedzostatusas">{{$butas->statusas}} </li>
      <li>KAINA, EUR: {{$butas->kaina}}</li>
      <li>APDAILA: {{$butas->apdaila}}</li>
                  
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

@endsection
@section('script')
  <script type="text/javascript">
    // $(function() {
    //   $('#abutai').addClass('active');
    // });
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