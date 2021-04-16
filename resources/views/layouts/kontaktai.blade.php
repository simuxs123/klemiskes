@extends('layouts.master')
@section('main')
<div id="vietapapildomas">
  <div id="vietamainsection">
    <div id="bar123" class="klase">
     <div id="contact">
      <div id="pirmascont">
      	<h3>Jaunius Skierus</h3>
      	<div class="cont">
	      	<div class="contimg">
	      		<img id="contimg1" src="{{asset('images\blank.png')}}">
	      	</div>
	      	<div class="continfo">
	      		<h4>Mob: +370 659 99299</h4>
	      		<br>
	      		<h4>El.p: info@klemiskesnamai.lt</h4>
	      	</div>
      	</div>
      </div>
      <!-- <div id="antrascont">
      	<h3>VARDENIS PAVARDENIS</h3>
      	<div class="cont">
	      	<div class="contimg">
	      		<img id="contimg2" src="{{asset('images\blank.png')}}">
	      	</div>
	      	<div class="continfo">
	      		<h4>Mob: +370 999 99999</h4>
	      		<br>
	      		<h4>El.p: vardenis.pavardenis@klemiske.lt</h4>
	      	</div>
      	</div>
      </div> -->
     </div>
     <div id="contactform">
     	<form class="contacts" action="{{route('sendmail')}}" method="post">
           {!! csrf_field() !!}
           <div id="duomenys">
	          <div id="nameinput" class="form-group">
	            <label for="name"><b>Vardas</b></label>
	            <input id="name" class="form-control" type="text" name="name" required title="Jūsų vardas" placeholder="Jūsų vardas">
	            <p class="error text-center alert alert-danger hidden"></p>
	          </div>
	          <div id="numberinput" class="form-group">
	            <label for="telnumber"><b>Tel. nr.</b></label>
	            <input id="number" class="form-control" type="tel" name="telnumber" placeholder="Jūsų telefono numeris" required>
	            <p class="error text-center alert alert-danger hidden"></p>
	          </div>
	          <div id="mailinput" class="form-group">	            
	            <label for="email">El.paštas</label>
	            <input id="mail" class="form-control" type="e-mail" name="email" required title="Privalomas laukas" placeholder="Jūsų el. pašto adresas">
	            <p class="error text-center alert alert-danger hidden"></p>
	          </div>
          </div>
          <div id="zinuteinput" class="form-group">
            <label for="question">žinute</label>
            <textarea id="uzklausa" rows="4" cols="50" name="question" class="form-control">
            </textarea>
          <button id="sendbtn" type="submit" class="btn btn-mine-modal">
                  Siusti
          </button>
          </div>
          @if (count($errors) > 0)
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
            @endif
             <div id="msgpopup" class="popup alert-success" style="display: none">ačiū už jūsų užklausą, pasistengsime atsakyti kuo greičiau</div>
        </form>
     </div>
   </div>
  </div>
</div>

<script type="text/javascript">
$(function() {
  $('#akontaktai').addClass('active');
});
</script>
<script type="text/javascript">
$(function() {
  var url = location.pathname;
  var kontaktai = '/kontaktai';

  if(kontaktai == url){
    $('#mainsection').css('display') == 'block';
  }   
});
  
</script>
<script type="text/javascript">
  $(function() {
  $('.contacts').submit(function(event) {
        event.preventDefault();
        $('.loading').show();
        var form = $(this);
        var data = new FormData($(this)[0]);
        var url = form.attr("action");
        $.ajax({
            type: "POST",
            url: url,
            data: data,
            async: true,
            cache: false,
            contentType: false,
            processData: false,
            success: function (data) {
                if((data.errors)){
                    if (data.errors.name) {
                        $('#name + .error').removeClass('hidden');
                        $('#name + .error').text(data.errors.name);
                    }                    
                    if (data.errors.email) {
                        $('#mail + .error').removeClass('hidden');
                        $('#mail + .error').text(data.errors.email);
                    }
                    if (data.errors.question) {
                        $('#number + .error').removeClass('hidden');
                        $('#number + .error').text(data.errors.quey);
                    }
                    if (data.errors.question) {
                        $('#uzklausa + .error').removeClass('hidden');
                        $('#uzklausa + .error').text(data.errors.quey);
                    }
                } else {                    
                    $('.error').remove();
                    $('.popup').slideDown(function() {
                        setTimeout(function() {
                            $('.popup').slideUp();
                        }, 5000);
                    });
                    $('button').trigger('click');
                }
            }
        });
    });

});
</script>
@endsection