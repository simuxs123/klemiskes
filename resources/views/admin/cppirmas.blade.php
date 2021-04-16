@extends('admin.admin')
@section('main')
<div id="cpkotedzai">
<table>
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
   @foreach($pirmo1 as $pirmasa)
   <tr>
   
   {{ csrf_field() }}
     <td>{{$pirmasa->buto_id}}</td>
     <td id="{{$pirmasa->buto_id}}">{{$pirmasa->statusas}}</td>

   
   <td>
      {{ Form::open(['route' => ['pirmasap', 'pirmasa'=>$pirmasa->id],  'method' => 'post']) }}
              {{ Form::submit('PARDUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['pirmasar', 'pirmasa'=>$pirmasa->id],  'method' => 'post']) }}
              {{ Form::submit('REZERVUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['pirmasal', 'pirmasa'=>$pirmasa->id],  'method' => 'post']) }}
              {{ Form::submit('LAISVAS') }}
              {{ Form::close() }}
    </td>
    
    {!! Form::model($pirmasa, ['method' => 'PATCH', 'files' => true, 'action' => ['AdminController@updatepirmasa', $pirmasa['id']]]) !!}
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
        <div id="kryptis" class="form-group">
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
      <a href="/1/1/{{$pirmasa->id}}"><button>PERŽIŪRETI</button></a>
    </td>
   
    
    </tr>

   @endforeach
   @foreach($pirmo2 as $pirmasb)
   <tr>
   
   {{ csrf_field() }}
     <td>{{$pirmasb->buto_id}}</td>
     <td id="{{$pirmasb->buto_id}}">{{$pirmasb->statusas}}</td>
     
   

  <td>
      {{ Form::open(['route' => ['pirmasbp', 'pirmasb'=>$pirmasb->id],  'method' => 'post']) }}
              {{ Form::submit('PARDUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['pirmasbr', 'pirmasb'=>$pirmasb->id],  'method' => 'post']) }}
              {{ Form::submit('REZERVUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['pirmasbl', 'pirmasb'=>$pirmasb->id],  'method' => 'post']) }}
              {{ Form::submit('LAISVAS') }}
              {{ Form::close() }}
    </td>
    
    {!! Form::model($pirmasb, ['method' => 'PATCH', 'files' => true, 'action' => ['AdminController@updatepirmasb', $pirmasb['id']]]) !!}
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
      <a href="/1/2/{{$pirmasb->id}}"><button>PERŽIŪRETI</button></a>
    </td>
    
</tr>
   @endforeach

   @foreach($pirmo3 as $pirmasc)
   <tr>
   
   {{ csrf_field() }}
     <td>{{$pirmasc->buto_id}}</td>
     <td id="{{$pirmasc->buto_id}}">{{$pirmasc->statusas}}</td>

   

   
    <td>
      {{ Form::open(['route' => ['pirmascp', 'pirmasc'=>$pirmasc->id],  'method' => 'post']) }}
              {{ Form::submit('PARDUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['pirmascr', 'pirmasc'=>$pirmasc->id],  'method' => 'post']) }}
              {{ Form::submit('REZERVUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['pirmascl', 'pirmasc'=>$pirmasc->id],  'method' => 'post']) }}
              {{ Form::submit('LAISVAS') }}
              {{ Form::close() }}
    </td>
    
    {!! Form::model($pirmasc, ['method' => 'PATCH', 'files' => true, 'action' => ['AdminController@updatepirmasc', $pirmasc['id']]]) !!}
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
         {!! Form::submit('Atnaujinti', ['class' => 'btn btn-primary']) !!}
        </div>
        </td>
        {!! Form::close() !!}
    <td>
      <a href="/1/3/{{$pirmasc->id}}"><button>PERŽIŪRETI</button></a>
    </td>
</tr>
   @endforeach
</tbody>
</table>
</div>
<script type="text/javascript">
  var pirmasastatusas = {!! json_encode($pirmasa->statusas) !!}
  var pirmo1 = {!! json_encode($pirmo1) !!}
  pirmo1.filter((x) => {
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
   var pirmasbstatusas = {!! json_encode($pirmasb->statusas) !!}
  var pirmo2 = {!! json_encode($pirmo2) !!}
  pirmo2.filter((y) => {
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
   
  var pirmascstatusas = {!! json_encode($pirmasc->statusas) !!}
  var pirmo3 = {!! json_encode($pirmo3) !!}
  pirmo3.filter((z) => {
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