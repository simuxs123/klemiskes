@extends('admin.admin')
@section('main')
<div id="cpkotedzai">
<table>
  <thead>
        <th>KOTEDŽO NR.</th>
       <th>STATUSAS</th>
        <th>PARDUOTAS</th>
        <th>REZERVUOTAS</th>
        <th>LAISVAS</th>
        <th>PLOTAS</th>
        <th>KAMBARIAI</th>
        <th>KAINA</th>
        <th>APDAILA</th>        
        <th>ATNAUJINTI</th>
        <th>PERŽIŪRETI</th>
  </thead>
  <tbody>
   @foreach($kotedzai as $kotedzas)
   <tr>
   
   {{ csrf_field() }}
     <td>{{$kotedzas->kotedzo_id}}</td>
     <td id="{{$kotedzas->id}}">{{$kotedzas->statusas}}</td>
     
    <td>
      {{ Form::open(['route' => ['kotedzasp', 'kotedzas'=>$kotedzas->kotedzo_id],  'method' => 'post']) }}
              {{ Form::submit('PARDUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['kotedzasr', 'kotedzas'=>$kotedzas->kotedzo_id],  'method' => 'post']) }}
              {{ Form::submit('REZERVUOTAS') }}
              {{ Form::close() }}
    </td>
    <td>
      {{ Form::open(['route' => ['kotedzasl', 'kotedzas'=>$kotedzas->kotedzo_id],  'method' => 'post']) }}
              {{ Form::submit('LAISVAS') }}
              {{ Form::close() }}
    </td>
    {!! Form::model($kotedzas, ['method' => 'PATCH', 'files' => true, 'action' => ['AdminController@updatekotedzai', $kotedzas['id']]]) !!}
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
        <div class="editbutton">
         {!! Form::submit('ATNAUJINTI', ['class' => 'btn btn-primary']) !!}
        </div>
        </td>
        {!! Form::close() !!}
    <td>
      <a href="/kotedzas/{{$kotedzas->id}}"><button>PERŽIŪRETI</button></a>
    </td>
    

    
    

   </tr>


   @endforeach
</tbody>
</table>
</div>
<script type="text/javascript">
  var kotedzostatusas = {!! json_encode($kotedzas->statusas) !!}
  var fea = {!! json_encode($kotedzai) !!}
  // console.log(fea);

   fea.filter((x) => {
       if(x.statusas == 0){
      x.statusas = 'Laisvas'
      }else if(x.statusas == 1) {
       x.statusas = 'Parduotas'
      }else{
        x.statusas = 'Rezervuotas'
      }
      document.getElementById(x.id).innerHTML=  x.statusas
      // console.log( x.statusas);
    })
    


      

      
      
</script>
<script type="text/javascript">
  $(function() {
  $('#footer').css('display', 'none');
});
</script>
<script type="text/javascript">

</script>
@endsection