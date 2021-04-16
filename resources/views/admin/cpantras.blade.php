@extends('admin.admin')
@section('main')
<div id="cpkotedzai">
<table >
<thead>
        <th>BUTO NR.</th>
        <th>STATUSAS</th>
        <th>PARDUOTAS</th>
        <th>REZERVUOTAS</th>
        <th>LAISVAS</th>
        <th>PLOTAS</th>
        <th>KAMBARIAI</th>
        <th>KAINA</th>
        <th>APDAILA</th>
        <th>KRYPTIS</th>
        <th>ATNAUJINTI</th>
        <th>PERŽIŪRETI</th>
  </thead>
  <tbody>
   @foreach($antro1 as $antrasa)
   <tr>
   
   {{ csrf_field() }}
     <td>{{$antrasa->buto_id}}</td>
     <td id="{{$antrasa->buto_id}}">{{$antrasa->statusas}}</td>

   

   
    <td>
      {{ Form::open(['route' => ['antrasap', 'antrasa'=>$antrasa->id],  'method' => 'post']) }}
              {{ Form::submit('PARDUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['antrasar', 'antrasa'=>$antrasa->id],  'method' => 'post']) }}
              {{ Form::submit('REZERVUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['antrasal', 'antrasa'=>$antrasa->id],  'method' => 'post']) }}
              {{ Form::submit('LAISVAS') }}
              {{ Form::close() }}
    </td>
    
    {!! Form::model($antrasa, ['method' => 'PATCH', 'files' => true, 'action' => ['AdminController@updateantrasa', $antrasa['id']]]) !!}
        <td>
        <div class="form-group">
           {!! Form::label('', '', ['class' => 'control-label']) !!}
          {!! Form::text('plotas', null, ['class' => 'form-control']) !!}
        </div>
        </td>
        <td>
        <div class="form-group">
           {!! Form::label('', '', ['class' => 'control-label']) !!}
          {!! Form::text('kambariai', null, ['class' => 'form-control']) !!}
        </div>
        </td>
        <td>
        <div class="form-group">
           {!! Form::label('', '', ['class' => 'control-label']) !!}
          {!! Form::text('kaina', null, ['class' => 'form-control']) !!}
        </div>
        </td>
        <td>
        <div id="apdaila" class="form-group">
           {!! Form::label('', '', ['class' => 'control-label']) !!}
          {!! Form::text('apdaila', null, ['class' => 'form-control']) !!}
        </div>
        </td>
        <td>
        <div class="form-group">
           {!! Form::label('', '', ['class' => 'control-label']) !!}
          {!! Form::text('kryptis', null, ['class' => 'form-control']) !!}
        </div>
        </td>
        <td>
        <div class="editbutton">
         {!! Form::submit('ATNAUJINTI', ['class' => 'btn btn-primary']) !!}
        </div>
        </td>
        {!! Form::close() !!}
    <td>
      <a href="/2/1/{{$antrasa->id}}"><button>PERŽIŪRETI</button></a>
    </td>
</tr>
   @endforeach
   @foreach($antro2 as $antrasb)
   <tr>
   
   {{ csrf_field() }}
     <td>{{$antrasb->buto_id}}</td>
     <td id="{{$antrasb->buto_id}}">{{$antrasb->statusas}}</td>
     
   

   
    <td>
      {{ Form::open(['route' => ['antrasbp', 'antrasb'=>$antrasb->id],  'method' => 'post']) }}
              {{ Form::submit('PARDUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['antrasbr', 'antrasb'=>$antrasb->id],  'method' => 'post']) }}
              {{ Form::submit('REZERVUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['antrasbl', 'antrasb'=>$antrasb->id],  'method' => 'post']) }}
              {{ Form::submit('LAISVAS') }}
              {{ Form::close() }}
    </td>
    
    {!! Form::model($antrasb, ['method' => 'PATCH', 'files' => true, 'action' => ['AdminController@updateantrasb', $antrasb['id']]]) !!}
        <td>
        <div class="form-group">
           {!! Form::label('', '', ['class' => 'control-label']) !!}
          {!! Form::text('plotas', null, ['class' => 'form-control']) !!}
        </div>
        </td>
        <td>
        <div class="form-group">
           {!! Form::label('', '', ['class' => 'control-label']) !!}
          {!! Form::text('kambariai', null, ['class' => 'form-control']) !!}
        </div>
        </td>
        <td>
        <div class="form-group">
           {!! Form::label('', '', ['class' => 'control-label']) !!}
          {!! Form::text('kaina', null, ['class' => 'form-control']) !!}
        </div>
        </td>
        <td>
        <div id="apdaila" class="form-group">
           {!! Form::label('', '', ['class' => 'control-label']) !!}
          {!! Form::text('apdaila', null, ['class' => 'form-control']) !!}
        </div>
        </td>
        <td>
        <div class="form-group">
           {!! Form::label('', '', ['class' => 'control-label']) !!}
          {!! Form::text('kryptis', null, ['class' => 'form-control']) !!}
        </div>
        </td>
        <td>
        <div class="editbutton">
         {!! Form::submit('ATNAUJINTI', ['class' => 'btn btn-primary']) !!}
        </div>
        </td>
        {!! Form::close() !!}
    <td>
      <a href="/2/2/{{$antrasb->id}}"><button>PERŽIŪRETI</button></a>
    </td>
</tr>
   @endforeach
   @foreach($antro3 as $antrasc)
   <tr>
   
   {{ csrf_field() }}
     <td>{{$antrasc->buto_id}}</td>
     <td id="{{$antrasc->buto_id}}">{{$antrasc->statusas}}</td>

   

   <td>
      {{ Form::open(['route' => ['antrascp', 'antrasc'=>$antrasc->id],  'method' => 'post']) }}
              {{ Form::submit('PARDUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['antrascr', 'antrasc'=>$antrasc->id],  'method' => 'post']) }}
              {{ Form::submit('REZERVUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['antrascl', 'antrasc'=>$antrasc->id],  'method' => 'post']) }}
              {{ Form::submit('LAISVAS') }}
              {{ Form::close() }}
    </td>
    
    {!! Form::model($antrasc, ['method' => 'PATCH', 'files' => true, 'action' => ['AdminController@updateantrasc', $antrasc['id']]]) !!}
        <td>
        <div class="form-group">
           {!! Form::label('', '', ['class' => 'control-label']) !!}
          {!! Form::text('plotas', null, ['class' => 'form-control']) !!}
        </div>
        </td>
        <td>
        <div class="form-group">
           {!! Form::label('', '', ['class' => 'control-label']) !!}
          {!! Form::text('kambariai', null, ['class' => 'form-control']) !!}
        </div>
        </td>
        <td>
        <div class="form-group">
           {!! Form::label('', '', ['class' => 'control-label']) !!}
          {!! Form::text('kaina', null, ['class' => 'form-control']) !!}
        </div>
        </td>
        <td>
        <div id="apdaila" class="form-group">
           {!! Form::label('', '', ['class' => 'control-label']) !!}
          {!! Form::text('apdaila', null, ['class' => 'form-control']) !!}
        </div>
        </td>
        <td>
        <div class="form-group">
           {!! Form::label('', '', ['class' => 'control-label']) !!}
          {!! Form::text('kryptis', null, ['class' => 'form-control']) !!}
        </div>
        </td>
        <td>
        <div class="editbutton">
         {!! Form::submit('ATNAUJINTI', ['class' => 'btn btn-primary']) !!}
        </div>
        </td>
        {!! Form::close() !!}
    <td>
      <a href="/2/3/{{$antrasc->id}}"><button>PERŽIŪRETI</button></a>
    </td>
    
</tr>
   @endforeach
</tbody>
</table>
</div>
<script type="text/javascript">
  var antrasastatusas = {!! json_encode($antrasa->statusas) !!}
  var antro1 = {!! json_encode($antro1) !!}
  antro1.filter((x) => {
       if(x.statusas == 0){
      x.statusas = 'Laisvas'
      }else if(x.statusas == 1) {
       x.statusas = 'Parduotas'
      }else{
        x.statusas = 'Rezervuotas'
      }
      document.getElementById(x.buto_id).innerHTML=  x.statusas
      // console.log( x.statusas);
    })

</script>
<script type="text/javascript">
   var antrasbstatusas = {!! json_encode($antrasb->statusas) !!}
  var antro2 = {!! json_encode($antro2) !!}
  antro2.filter((y) => {
       if(y.statusas == 0){
      y.statusas = 'Laisvas'
      }else if(y.statusas == 1) {
       y.statusas = 'Parduotas'
      }else{
        y.statusas = 'Rezervuotas'
      }
      document.getElementById(y.buto_id).innerHTML=  y.statusas
      // console.log( x.statusas);
    })
</script>
<script type="text/javascript">
   
  var antrascstatusas = {!! json_encode($antrasc->statusas) !!}
  var antro3 = {!! json_encode($antro3) !!}
  antro3.filter((z) => {
       if(z.statusas == 0){
      z.statusas = 'Laisvas'
      }else if(z.statusas == 1) {
       z.statusas = 'Parduotas'
      }else{
        z.statusas = 'Rezervuotas'
      }
      document.getElementById(z.buto_id).innerHTML=  z.statusas
      // console.log( x.statusas);
    })
</script>
<script type="text/javascript">
  $(function() {
  $('#footer').css('display', 'none');
});
</script>
@endsection