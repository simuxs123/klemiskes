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
   @foreach($trecio1 as $treciasa)
   <tr>
   
   {{ csrf_field() }}
     <td>{{$treciasa->buto_id}}</td>
     <td id="{{$treciasa->buto_id}}">{{$treciasa->statusas}}</td>

   

   
    <td>
      {{ Form::open(['route' => ['treciasap', 'treciasa'=>$treciasa->id],  'method' => 'post']) }}
              {{ Form::submit('PARDUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['treciasar', 'treciasa'=>$treciasa->id],  'method' => 'post']) }}
              {{ Form::submit('REZERVUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['treciasal', 'treciasa'=>$treciasa->id],  'method' => 'post']) }}
              {{ Form::submit('LAISVAS') }}
              {{ Form::close() }}
    </td>
    
    {!! Form::model($treciasa, ['method' => 'PATCH', 'files' => true, 'action' => ['AdminController@updatetreciasa', $treciasa['id']]]) !!}
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
      <a href="/3/1/{{$treciasa->id}}"><button>PERŽIŪRETI</button></a>
    </td>
</tr>
   @endforeach
   @foreach($trecio2 as $treciasb)
   <tr>
   
   {{ csrf_field() }}
     <td>{{$treciasb->buto_id}}</td>
     <td id="{{$treciasb->buto_id}}">{{$treciasb->statusas}}</td>
     
   

   
    <td>
      {{ Form::open(['route' => ['treciasbp', 'treciasb'=>$treciasb->id],  'method' => 'post']) }}
              {{ Form::submit('PARDUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['treciasbr', 'treciasb'=>$treciasb->id],  'method' => 'post']) }}
              {{ Form::submit('REZERVUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['treciasbl', 'treciasb'=>$treciasb->id],  'method' => 'post']) }}
              {{ Form::submit('LAISVAS') }}
              {{ Form::close() }}
    </td>
    
    {!! Form::model($treciasb, ['method' => 'PATCH', 'files' => true, 'action' => ['AdminController@updatetreciasb', $treciasb['id']]]) !!}
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
      <a href="/3/2/{{$treciasb->id}}"><button>PERŽIŪRETI</button></a>
    </td>
</tr>
   @endforeach
   @foreach($trecio3 as $treciasc)
   <tr>
   
   {{ csrf_field() }}
     <td>{{$treciasc->buto_id}}</td>
     <td id="{{$treciasc->buto_id}}">{{$treciasc->statusas}}</td>

   

   
    <td>
      {{ Form::open(['route' => ['treciascp', 'treciasc'=>$treciasc->id],  'method' => 'post']) }}
              {{ Form::submit('PARDUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['treciascr', 'treciasc'=>$treciasc->id],  'method' => 'post']) }}
              {{ Form::submit('REZERVUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['treciascl', 'treciasc'=>$treciasc->id],  'method' => 'post']) }}
              {{ Form::submit('LAISVAS') }}
              {{ Form::close() }}
    </td>
    
    {!! Form::model($treciasc, ['method' => 'PATCH', 'files' => true, 'action' => ['AdminController@updatetreciasc', $treciasc['id']]]) !!}
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
      <a href="/3/3/{{$treciasc->id}}"><button>PERŽIŪRETI</button></a>
    </td>
</tr>
   @endforeach
</tbody>
</table>
</div>
<script type="text/javascript">
  var treciasastatusas = {!! json_encode($treciasa->statusas) !!}
  var trecio1 = {!! json_encode($trecio1) !!}
  trecio1.filter((x) => {
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
   var treciasbstatusas = {!! json_encode($treciasb->statusas) !!}
  var trecio2 = {!! json_encode($trecio2) !!}
  trecio2.filter((y) => {
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
   
  var treciascstatusas = {!! json_encode($treciasc->statusas) !!}
  var trecio3 = {!! json_encode($trecio3) !!}
  trecio3.filter((z) => {
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