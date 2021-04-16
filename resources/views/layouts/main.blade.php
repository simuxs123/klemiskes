@extends('layouts.master')
@section('main')
<div id="papildomas">
<img id="mobile-only" src="{{asset('images\geresnis.jpg')}}">
  <div id="mainsection">
   <div id="msgpopup" class="popup alert-success" style="display: none">ačiū už jūsų užklausą, pasistengsime atsakyti kuo greičiau</div>
  <img id="susisiekite" data-toggle="modal" data-target="#myModal" src="{{asset('images\SUSISIEKITE.png')}}">
    <div id="bar" class="klase">
      <svg viewBox="0 0 1920 933" class="select-svg-main mobile-none svg-defection" xml:space="preserve" version="1.1" height="100" width="100" style="shape-rendering:geometricPrecision; text-rendering:geometricPrecision; image-rendering:optimizeQuality; fill-rule:evenodd; clip-rule:evenodd">
         <image height="1080" width="100%" id="mainpic" xlink:href="{{asset('images/geresnis.jpg')}}"  />
         <a href="{{route('pirmasd')}}"><path class="blink" style="animation-delay: 2s; fill:transparent;opacity:0.4"  d="M 807.76119,886.56716 1187.4627,637.61194 1208.9552,413.73134 945.67164,315.22388 540.89552,458.50746 587.46269,696.71642 Z" id="pirmasd" inkscape:connector-curvature="0"></path></a>
         <a href="{{route('antrasd')}}"><path class="blink" style="animation-delay: 2.5s; fill:transparent;opacity:0.4" d="m 1080,231.04478 -7.1642,132.53731 136.1194,50.14925 -3.5821,39.40299 180.8956,55.52239 118.2089,-78.80597 44.7761,-175.52239 -317.0149,-69.85075 z" id="antrasd" inkscape:connector-curvature="0"></path></a>
         <a href="{{route('treciasd')}}"><path class="blink" style="animation-delay: 3s; fill:transparent;opacity:0.4" d="m 727.16418,152.23881 7.16418,96.71641 68.0597,23.28359 3.58209,46.56716 69.85075,23.28358 69.85074,-26.86567 55.52236,21.49254 68.0597,-28.65672 5.3732,-141.49254 L 879.40299,120 Z" id="treciasd" inkscape:connector-curvature="0"></path></a>
         <a href="{{route('ketvirtasd')}}"><path class="blink" style="animation-delay: 3.5s; fill:transparent;opacity:0.4" d="m 358.20896,248.95522 42.98507,175.52239 62.68657,42.98508 34.02985,-12.53732 46.56716,32.23881 -3.58209,-28.65672 268.65672,-93.13433 -7.16418,-93.13432 -200.59702,-75.22388 z" id="ketvirtasd" inkscape:connector-curvature="0"></path></a>
         <a href="{{route('kotedzas')}}"><path class="blink" style="animation-delay: 4s; fill:transparent;opacity:0.4" d="m 562.38806,80.597015 8.95522,59.104475 -372.53731,87.7612 -77.01493,-25.07463 -12.53731,-69.85075 30.44776,-28.65671 42.98508,1.79104 84.1791,-10.746267 21.49254,-17.910448 37.61194,7.164179 68.0597,-10.746268 19.70149,-17.910448 28.65672,8.955224 80.59701,-12.537313 z" id="kotedzas" inkscape:connector-curvature="0"></path></a>
       </svg>
   </div>
  </div>
  <div id="apieprojekta">
     <div class="projektas">
     <h3>Klemiškės namai – vieta miesto žmogui</h3>
    <div class="projektotekstas">
            <img id="projektoimg1" src="{{asset('images\geresnis.jpg')}}">
      <p>Klemiškės gatvėje kuriamas naujas kvartalas padės pajusti modernaus ir patogaus gyvenimo sąvoką: čia puikiai dera privatumas, laisvalaikio zonos ir galimybės naudotis lengvai pasiekiamais Klaipėdos senamiesčio privalumais.
         </p>
         <br>
         <p>Klemiškės namai – tai naujas keturių namų ir kotedžų kvartalas Klaipėdoje, kuriamas atsižvelgiant į aktyvių, daug dirbančių ir skubančių, tačiau gyvenimo džiaugsmą ir kokybę vertinančių žmonių poreikius.
         </p>
         <br>
         <p>Subtilios, šiuolaikiškos urbanistinės architektūros 3-jų aukštų pastatai leis pajusti tikrą gyvenimo mieste malonumą. Namuose, kurie tarnauja greitai besikeičiantiems gyventojų poreikiams, ypač gerai jausis mėgstantys didmiesčio gyvenimo ritmą.</p>
    </div>
    <!-- <div class="projektoimg">
      
    </div> -->
  </div>
  <div class="projektas">
  <h3>Racionalus išplanavimas ir patogaus gyvenimo sprendimai </h3>
    <div class="projektotekstas">
      <img id="projektoimg2" src="{{asset('images\treciasd.jpg')}}">
        <p>Erdviems savo butų balkonams ir terasoms gyventojai galės sugalvoti naujų paskirčių, kadangi dviračiai čia bus saugomi uždarose gyventojų dviračių saugyklose. 
        Šalia namų bus įrengtos erdvios parkavimo aikštelės, todėl gyventojams nereikės sukti galvos kur palikti savo automobilį.
        Gyventojai gales leisti laisvalaikį bendrose polisio ir sporto aikštelėse.
           </p>
    </div>
  </div>
  <div class="projektas">
  <h3>Strategiškai gera vieta mieste</h3>
    <div class="projektotekstas">
      <img id="projektoimg3" src="{{asset('images\Kotedzas.jpg')}}">
      <p>Strategiškai gera vieta Klaipėdoje dalyje leis ne tik patogiai pasiekti bet kurioje miesto pusėje esančius objektus, bet ir patogiai nuvykti į Palangą, Šventąją.
          </p>
      <br>
      <p>Naujasis kvartalas kuriamas atokiau nuo triukšmingų gatvių, kad netrikdytų kokybiško gyventojų poilsio, tačiau arti senamiesčio, kad būtų lengva ne tik efektyviai planuoti laiką, bet ir mėgautis kultūriniu, visuomeniniu ir asmeniniu gyvenimu.</p>
    </div>
  </div>
  <div class="projektas">
  <h3>Vieta mieste</h3>
    <div class="projektotekstas">
    <img id="projektoimg4" src="{{asset('images\kotedzas2.jpg')}}">
      <p>Klėmiškės gatvė pasižymi saugia ir ramia aplinka, strategiškai gera vieta mieste, patogiomis sąlygomis susisiekti su senamiesčiu – pėsčiomis (15 min.), dviračiu (7 min.) , automobiliu (5 min.), viešuoju transportu (10 min.).</p>
    </div>
  </div>
</div>
</div>

<div  id="house1" style="display: none" >

  <div class="popup">
  <div class="namukas">
  <img src="{{ asset('/images/namukas.png') }}">
  </div>
    <ul>
      <li>Nr.1</li>
      <li id="pirmolaisvi"></li>
      <li id="pirmorezervuoti"></li>
      <li id="pirmoparduoti"></li>
    </ul>
  </div>
</div>

<div  id="house2" style="display: none;">
  <div class="popup">
  <div class="namukas">
  <img src="{{ asset('/images/namukas.png') }}">
  </div>
    <ul>
      <li>Nr.2</li>
      <li id="antrolaisvi"></li>
      <li id="antrorezervuoti"></li>
      <li id="antroparduoti"></li>
    </ul>
  </div>
</div>

<div  id="house3" style="display: none;">
  <div class="popup">
  <div class="namukas">
  <img src="{{ asset('/images/namukas.png') }}">
  </div>
    <ul>
      <li>Nr.3</li>
      <li id="treciolaisvi"></li>
      <li id="treciorezervuoti"></li>
      <li id="trecioparduoti"></li>
    </ul>
  </div>
</div>

<div  id="house4" style="display: none;">
  <div class="popup">
  <div class="namukas">
  <img src="{{ asset('/images/namukas.png') }}">
  </div>
    <ul>
      <li>Nr.4</li>
      <li id="ketvirtolaisvi"></li>
      <li id="ketvirtorezervuoti"></li>
      <li id="ketvirtoparduoti"></li>
    </ul>
  </div>
</div>

<div  id="house5" style="display: none;">
  <div class="popup">
  <div class="namukas">
  <img src="{{ asset('/images/namukas.png') }}">
  </div>
    <ul>
      <li>Kotedžai</li>
      <li id="kotedzolaisvi"></li>
      <li id="kotedzorezervuoti"></li>
      <li id="kotedzoparduoti"></li>
    </ul>
  </div>
</div>

 <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
      <div class="loading"></div>
      <!-- Modal content-->
      <div class="modal-custom">
        
        <form class="contacts" action="{{route('sendmail')}}" method="post">
           {!! csrf_field() !!}
          <h3 class="form-title"><b>Palikti užklausą</b> 
            <button type="button" class="close" data-dismiss="modal">&times;</button>
          </h3>
          <div class="form-group">
            <label for="name"><span class="glyphicon glyphicon-user"></span><b>Vardas</b></label>
            <input id="name" class="form-control" type="text" name="name" required title="Jūsų vardas" placeholder="Jūsų vardas">
            <p class="error text-center alert alert-danger hidden"></p>
          </div>
          <div class="form-group">
            <label for="telnumber"><span class="glyphicon glyphicon-earphone"></span><b>Telefono numeris</b></label>
            <input id="number" class="form-control" type="tel" name="telnumber" placeholder="Jūsų telefono numeris" required>
            <p class="error text-center alert alert-danger hidden"></p>
          </div>
          <div class="form-group">
            
            <label for="email">El. pašto adresas</label>
            <input id="mail" class="form-control" type="e-mail" name="email" required title="Privalomas laukas" placeholder="Jūsų el. pašto adresas">
            <p class="error text-center alert alert-danger hidden"></p>
          </div>
          <div class="form-group">
            <label for="question"><span class="glyphicon glyphicon-hand-right"></span>Užklausa/Klausimas</label>
            <textarea id="uzklausa" rows="4" cols="50" name="question" class="form-control">
            </textarea>
          <button type="submit" class="btn btn-mine-modal">
                  Palikite užklausą
          </button>
          <p class="underbutton">Garantuojame Jūsų duomenų saugumą</p>
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

        </form>
      </div>
      
    </div>
  </div>


<script type="text/javascript">
var fit=function(){"use strict";function t(t){return t.toUpperCase()}function e(t){return"number"==typeof t&&!isNaN(t)}function n(){return(new Date).getTime()}function i(t,e){for(var n=[],i=0,r=t.length;r>i;i++)n[i]=e(t[i]);return n}function r(t,e){for(var n in e)n in t||(t[n]=e[n]);return t}function o(e){if(!d)for(var n,i=H(C.body),r=w,o=0,a=T.length;a>o&&(d=T[o],n=d+r,!(n in i))&&(d=d.replace(/^(\w)/,t),n=d+r,!(n in i));o++);return d+e}function a(t){var e=H(t),n=e[o(w)].replace(/[a-z()]/gi,"").split(",");if(n.length<6)return[1,0,0,1,0,0];for(var i=0;6>i;i++)n[i]=parseFloat(n[i]);return n}function f(t,e){var n=a(e);n[0]=t.scale,n[3]=t.scale,n[4]+=t.tx,n[5]+=t.ty;var r=i(n,function(t){return t.toFixed(6)});e.style[o(m)]="0 0",e.style[o(w)]="matrix("+r.join(",")+")"}function s(t,e){var n=H(e),i=parseFloat(n.left)||0,r=parseFloat(n.top)||0;"static"===n.position&&(e.style.position="relative"),e.style.left=i+t.tx+b,e.style.top=r+t.ty+b,e.style.height=t.height+b,e.style.width=t.width+b}function l(t,e){var n=H(e),i=parseFloat(n.marginLeft)||0,r=parseFloat(n.marginTop)||0;e.style.marginLeft=i+t.tx+b,e.style.marginTop=r+t.ty+b,e.style.height=t.height+b,e.style.width=t.width+b}function h(t,e){e.height*=t.scale,e.width*=t.scale,e.x+=t.tx,e.y+=t.ty}function u(t){if(t.nodeType&&1==t.nodeType){var n=t.getBoundingClientRect();t={height:t.offsetHeight,width:t.offsetWidth,x:n.left,y:n.top}}return!e(t.x)&&e(t.left)&&(t.x=t.left),!e(t.y)&&e(t.top)&&(t.y=t.top),t}function c(){var t=n(),e=t-y;if(x>=e)clearInterval(v),v=setTimeout(c,x-e);else{for(var i=0,r=M.length;r>i;i++)M[i]();y=t}}function g(t,e,n,i,r){var o=u(t),a=u(e),s=0===o.width?R:o.width,l=0===o.height?P:o.height,c=0===a.width?I:a.width,g=0===a.height?P:a.height;R=s,B=l,I=c,P=g;var p=c/s,d=g/l,y=s/l,v=c/g,x=n.cover?d:p,m=n.cover?p:d,w=y>=v?x:m,T=s*w,O=l*w,F=n.hAlign==E?.5*(T-c):n.hAlign==L?T-c:0,b=n.vAlign==E?.5*(O-g):n.vAlign==A?O-g:0;return r=r||{},r.tx=a.x-F-o.x,r.ty=a.y-b-o.y,r.x=a.x-F-o.x*w,r.y=a.y-b-o.y*w,r.height=o.height*w,r.width=o.width*w,r.scale=w,i?i(r,t):n.apply&&(i="undefined"!=typeof HTMLElement&&t instanceof HTMLElement?f:h)(r,t),r}function p(t,e,n,i){if(!t||!e)throw"You must supply a target and a container";"function"==typeof n&&(i=n,n={}),n=r(n||{},N);var o=g(t,e,n,i);return n.watch&&(M.length||(z.addEventListener?(z.addEventListener("resize",c),z.addEventListener("orientationchange",c)):(z.attachEvent("onresize",c),z.attachEvent("onorientationchange",c))),o.trigger=function(){g(t,e,n,i,o)},o.on=function(t){var e=M.indexOf(o.trigger);~e||M.push(o.trigger),t||o.trigger()},o.off=function(){var t=M.indexOf(o.trigger);~t&&M.splice(t,1)},o.on(!0)),o}var d,y,v,x=50,m="TransformOrigin",w="Transform",T="moz ms o webkit".split(" "),E="center",A="bottom",L="right",O="left",F="top",b="px",z=window||self,C=document,H=z.getComputedStyle,M=[],N={hAlign:E,vAlign:E,watch:!1,cover:!1,apply:!0};Array.prototype.indexOf||(Array.prototype.indexOf=function(t){for(var e=0;e<this.length;++e)if(this[e]==t)return e;return-1});var R,B,I,P;return r(p,{watching:M,defaults:N,cssTransform:f,cssPosition:s,cssMargin:l,CENTER:E,BOTTOM:A,RIGHT:L,LEFT:O,TOP:F})}();"undefined"!=typeof exports&&("undefined"!=typeof module&&module.exports&&(exports=module.exports=fit),exports.fit=fit);
  $(document).ready(function(){
    // console.log(123);
    $(window).resize(function(){
    // console.log("pasileido");
        if($('#mainsection').length) {
          // console.log("viduje suveike");
            fit(bar, mainsection,{cover: true});

        }
    });
    if($('#mainsection').length){
        fit( bar, mainsection, { cover: true } );
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
                    $('#msgpopup').slideDown(function() {
                        setTimeout(function() {
                            $('#msgpopup').slideUp();
                        }, 5000);
                    });
                    $('button').trigger('click');
                }
            }
        });
    });

});
</script>

<script type="text/javascript">
$(window).resize(function(){

       if ($(window).width() >= 770) {  

              $("body").css("overflow", "hidden");

       }     

});
  
</script>

@endsection