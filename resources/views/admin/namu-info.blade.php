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
  @foreach($namas as $butas)
      <tr>

          {{ csrf_field() }}
          <td>{{$butas->buto_id}}</td>
          <td id="{{$butas->buto_id}}">{{$butas->statusas}}</td>

          <td>
              {{ Form::open(['route' => ['update-status', 'butasId'=>$butas->buto_id, 'namasId'=>$butas->namo_id,  'method' => 'post']]) }}
              {{Form::hidden('pavadinimas', 'parduotas')}}
              {{ Form::submit('PARDUOTAS') }}
              {{ Form::close() }}
          </td>
          <td>
              {{ Form::open(['route' => ['update-status', 'butasId'=>$butas->buto_id,'namasId'=>$butas->namo_id,  'method' => 'post']]) }}
              {{Form::hidden('pavadinimas', 'rezervuotas')}}
              {{ Form::submit('REZERVUOTAS') }}
              {{ Form::close() }}
          </td>
          <td>
              {{ Form::open(['route' => ['update-status', 'butasId'=>$butas->buto_id,'namasId'=>$butas->namo_id,  'method' => 'post']]) }}
              {{Form::hidden('pavadinimas', 'laisvas')}}
              {{ Form::submit('LAISVAS') }}
              {{ Form::close() }}
          </td>

          {!! Form::model($butas, ['method' => 'PATCH', 'files' => true, 'action' => ['AdminController@update',$butas->namo_id, $butas->buto_id,]]) !!}
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
              <a href="/namas/{{$butas->namo_id}}/{{$butas->auksto_id}}/{{$butas->buto_id}}"><button>PERŽIŪRETI</button></a>
          </td>
      </tr>
  @endforeach

</tbody>
</table>
</div>
<script type="text/javascript">
  var pirmo1 = {!! json_encode($namas) !!}
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
  $(function() {
  $('#footer').css('display', 'none');
});
</script>
@endsection