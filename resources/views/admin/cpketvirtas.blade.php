@extends('admin.admin')
@section('main')
<div id="cpkotedzai">
<table >
  <tbody>
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
   @foreach($ketvirto1 as $ketvirtasa)
   <tr>
   
   {{ csrf_field() }}
     <td>{{$ketvirtasa->buto_id}}</td>
     <td id="{{$ketvirtasa->buto_id}}">{{$ketvirtasa->statusas}}</td>

   

   
    <td>
      {{ Form::open(['route' => ['ketvirtasap', 'ketvirtasa'=>$ketvirtasa->id],  'method' => 'post']) }}
              {{ Form::submit('PARDUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['ketvirtasar', 'ketvirtasa'=>$ketvirtasa->id],  'method' => 'post']) }}
              {{ Form::submit('REZERVUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['ketvirtasal', 'ketvirtasa'=>$ketvirtasa->id],  'method' => 'post']) }}
              {{ Form::submit('LAISVAS') }}
              {{ Form::close() }}
    </td>
    
    {!! Form::model($ketvirtasa, ['method' => 'PATCH', 'files' => true, 'action' => ['AdminController@updateketvirtasa', $ketvirtasa['id']]]) !!}
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
      <a href="/4/1/{{$ketvirtasa->id}}"><button>PERŽIŪRETI</button></a>
    </td>
</tr>
   @endforeach
   @foreach($ketvirto2 as $ketvirtasb)
   <tr>
   
   {{ csrf_field() }}
     <td>{{$ketvirtasb->buto_id}}</td>
     <td id="{{$ketvirtasb->buto_id}}">{{$ketvirtasb->statusas}}</td>
     
   

   
    <td>
      {{ Form::open(['route' => ['ketvirtasbp', 'ketvirtasb'=>$ketvirtasb->id],  'method' => 'post']) }}
              {{ Form::submit('PARDUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['ketvirtasbr', 'ketvirtasb'=>$ketvirtasb->id],  'method' => 'post']) }}
              {{ Form::submit('REZERVUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['ketvirtasbl', 'ketvirtasb'=>$ketvirtasb->id],  'method' => 'post']) }}
              {{ Form::submit('LAISVAS') }}
              {{ Form::close() }}
    </td>
    
    {!! Form::model($ketvirtasb, ['method' => 'PATCH', 'files' => true, 'action' => ['AdminController@updateketvirtasb', $ketvirtasb['id']]]) !!}
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
      <a href="/4/2/{{$ketvirtasb->id}}"><button>PERŽIŪRETI</button></a>
    </td>
</tr>
   @endforeach
   @foreach($ketvirto3 as $ketvirtasc)
   <tr>
   
   {{ csrf_field() }}
     <td>{{$ketvirtasc->buto_id}}</td>
     <td id="{{$ketvirtasc->buto_id}}">{{$ketvirtasc->statusas}}</td>

   

   
    <td>
      {{ Form::open(['route' => ['ketvirtascp', 'ketvirtasc'=>$ketvirtasc->id],  'method' => 'post']) }}
              {{ Form::submit('PARDUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['ketvirtascr', 'ketvirtasc'=>$ketvirtasc->id],  'method' => 'post']) }}
              {{ Form::submit('REZERVUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['ketvirtascl', 'ketvirtasc'=>$ketvirtasc->id],  'method' => 'post']) }}
              {{ Form::submit('LAISVAS') }}
              {{ Form::close() }}
    </td>
    
    {!! Form::model($ketvirtasc, ['method' => 'PATCH', 'files' => true, 'action' => ['AdminController@updateketvirtasc', $ketvirtasc['id']]]) !!}
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
      <a href="/4/3/{{$ketvirtasc->id}}"><button>PERŽIŪRETI</button></a>
    </td>
</tr>
   @endforeach
</tbody>
</table>
</div>
<script type="text/javascript">
  var ketvirtasastatusas = {!! json_encode($ketvirtasa->statusas) !!}
  var ketvirto1 = {!! json_encode($ketvirto1) !!}
  ketvirto1.filter((x) => {
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
   var ketvirtasbstatusas = {!! json_encode($ketvirtasb->statusas) !!}
  var ketvirto2 = {!! json_encode($ketvirto2) !!}
  ketvirto2.filter((y) => {
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
   
  var ketvirtascstatusas = {!! json_encode($ketvirtasc->statusas) !!}
  var ketvirto3 = {!! json_encode($ketvirto3) !!}
  ketvirto3.filter((z) => {
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