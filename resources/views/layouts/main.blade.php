@extends('layouts.master')
@section('main')
<div id="papildomas">
      <img id="mobile-only" src="{{asset('images\geresnis2.jpg')}}">
      <div id="mainsection">
       <div id="msgpopup" class="popup alert-success" style="display: none">ačiū už jūsų užklausą, pasistengsime atsakyti kuo greičiau</div>
      <img id="susisiekite" data-toggle="modal" data-target="#myModal" src="{{asset('images\SUSISIEKITE.png')}}">
        <div id="bar" class="klase">
          <svg viewBox="0 0 1280 720" class="select-svg-main mobile-none svg-defection" xml:space="preserve" version="1.1" height="100" width="100" style="shape-rendering:geometricPrecision; text-rendering:geometricPrecision; image-rendering:optimizeQuality; fill-rule:evenodd; clip-rule:evenodd">
             <image height="1280" width="100%" id="mainpic" xlink:href="{{asset('images/geresnis2.jpg')}}"  />
             <a href="{{route('pirmasd')}}"><path class="blink mouseListener" style="animation-delay: 2s; fill:transparent;opacity:0.4"  d="m 313.743 266.65 c 31.1834 169.281 31.8198 168.645 31.8198 168.645 L 502.117 581.666 L 765.585 399.657 L 782.131 234.83 L 599.485 164.827 Z" id="pirmasd" inkscape:connector-curvature="0"></path></a>
             <a href="{{route('antrasd')}}"><path class="blink mouseListener" style="animation-delay: 2.5s; fill:transparent;opacity:0.4" d="m 780.222 263.468 l 128.552 39.4566 l 80.8223 -56.6393 l 26.0923 -127.279 l -224.011 -52.1845 l -103.733 35.0018 l -2.54559 95.4594 l 96.7322 37.5474 Z" id="antrasd" inkscape:connector-curvature="0"></path></a>
             <a href="{{route('treciasd')}}"><path class="blink mouseListener" style="animation-delay: 3s; fill:transparent;opacity:0.4" d="m 447.386 112.006 l -5.09117 -70.64 l 108.187 -21.0011 l 133.643 32.4562 l -3.18198 103.096 l -50.9117 19.7283 l -30.547 -10.8187 l -51.5481 18.4555 l -49.0025 -17.1827 l -5.09116 -35.0018 Z" id="treciasd" inkscape:connector-curvature="0"></path></a>
             <a href="{{route('ketvirtasd')}}"><path class="blink mouseListener" style="animation-delay: 3.5s; fill:transparent;opacity:0.4" d="m 183.282 114.551 l 33.0926 128.552 l 41.3657 30.547 l 22.2739 -7.00035 l 37.5474 23.5466 l -3.81838 -23.5466 l 187.1 -66.1852 l -7.00035 -69.3672 l -143.189 -54.7301 Z" id="ketvirtasd" inkscape:connector-curvature="0"></path></a>
           </svg>
       </div>
      </div>
    <div class="apie-main">
        @include('layouts._partials.apie')
    </div>

</div>

<div class="showPopup"  id="house1" style="display: none" >

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

<div class="showPopup" id="house2" style="display: none;">
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

<div class="showPopup" id="house3" style="display: none;">
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

<div class="showPopup" id="house4" style="display: none;">
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
@endsection
@section('script')

    <script type="text/javascript"
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBlBm8xS8RWioeNIrbZ1G2AGwwYZmR0jjg&callback=initMap"
            async defer
    ></script>
    <script type="text/javascript">
        var fit=function(){"use strict";function t(t){return t.toUpperCase()}function e(t){return"number"==typeof t&&!isNaN(t)}function n(){return(new Date).getTime()}function i(t,e){for(var n=[],i=0,r=t.length;r>i;i++)n[i]=e(t[i]);return n}function r(t,e){for(var n in e)n in t||(t[n]=e[n]);return t}function o(e){if(!d)for(var n,i=H(C.body),r=w,o=0,a=T.length;a>o&&(d=T[o],n=d+r,!(n in i))&&(d=d.replace(/^(\w)/,t),n=d+r,!(n in i));o++);return d+e}function a(t){var e=H(t),n=e[o(w)].replace(/[a-z()]/gi,"").split(",");if(n.length<6)return[1,0,0,1,0,0];for(var i=0;6>i;i++)n[i]=parseFloat(n[i]);return n}function f(t,e){var n=a(e);n[0]=t.scale,n[3]=t.scale,n[4]+=t.tx,n[5]+=t.ty;var r=i(n,function(t){return t.toFixed(6)});e.style[o(m)]="0 0",e.style[o(w)]="matrix("+r.join(",")+")"}function s(t,e){var n=H(e),i=parseFloat(n.left)||0,r=parseFloat(n.top)||0;"static"===n.position&&(e.style.position="relative"),e.style.left=i+t.tx+b,e.style.top=r+t.ty+b,e.style.height=t.height+b,e.style.width=t.width+b}function l(t,e){var n=H(e),i=parseFloat(n.marginLeft)||0,r=parseFloat(n.marginTop)||0;e.style.marginLeft=i+t.tx+b,e.style.marginTop=r+t.ty+b,e.style.height=t.height+b,e.style.width=t.width+b}function h(t,e){e.height*=t.scale,e.width*=t.scale,e.x+=t.tx,e.y+=t.ty}function u(t){if(t.nodeType&&1==t.nodeType){var n=t.getBoundingClientRect();t={height:t.offsetHeight,width:t.offsetWidth,x:n.left,y:n.top}}return!e(t.x)&&e(t.left)&&(t.x=t.left),!e(t.y)&&e(t.top)&&(t.y=t.top),t}function c(){var t=n(),e=t-y;if(x>=e)clearInterval(v),v=setTimeout(c,x-e);else{for(var i=0,r=M.length;r>i;i++)M[i]();y=t}}function g(t,e,n,i,r){var o=u(t),a=u(e),s=0===o.width?R:o.width,l=0===o.height?P:o.height,c=0===a.width?I:a.width,g=0===a.height?P:a.height;R=s,B=l,I=c,P=g;var p=c/s,d=g/l,y=s/l,v=c/g,x=n.cover?d:p,m=n.cover?p:d,w=y>=v?x:m,T=s*w,O=l*w,F=n.hAlign==E?.5*(T-c):n.hAlign==L?T-c:0,b=n.vAlign==E?.5*(O-g):n.vAlign==A?O-g:0;return r=r||{},r.tx=a.x-F-o.x,r.ty=a.y-b-o.y,r.x=a.x-F-o.x*w,r.y=a.y-b-o.y*w,r.height=o.height*w,r.width=o.width*w,r.scale=w,i?i(r,t):n.apply&&(i="undefined"!=typeof HTMLElement&&t instanceof HTMLElement?f:h)(r,t),r}function p(t,e,n,i){if(!t||!e)throw"You must supply a target and a container";"function"==typeof n&&(i=n,n={}),n=r(n||{},N);var o=g(t,e,n,i);return n.watch&&(M.length||(z.addEventListener?(z.addEventListener("resize",c),z.addEventListener("orientationchange",c)):(z.attachEvent("onresize",c),z.attachEvent("onorientationchange",c))),o.trigger=function(){g(t,e,n,i,o)},o.on=function(t){var e=M.indexOf(o.trigger);~e||M.push(o.trigger),t||o.trigger()},o.off=function(){var t=M.indexOf(o.trigger);~t&&M.splice(t,1)},o.on(!0)),o}var d,y,v,x=50,m="TransformOrigin",w="Transform",T="moz ms o webkit".split(" "),E="center",A="bottom",L="right",O="left",F="top",b="px",z=window||self,C=document,H=z.getComputedStyle,M=[],N={hAlign:E,vAlign:E,watch:!1,cover:!1,apply:!0};Array.prototype.indexOf||(Array.prototype.indexOf=function(t){for(var e=0;e<this.length;++e)if(this[e]==t)return e;return-1});var R,B,I,P;return r(p,{watching:M,defaults:N,cssTransform:f,cssPosition:s,cssMargin:l,CENTER:E,BOTTOM:A,RIGHT:L,LEFT:O,TOP:F})}();"undefined"!=typeof exports&&("undefined"!=typeof module&&module.exports&&(exports=module.exports=fit),exports.fit=fit);
        $(document).ready(function(){
            // console.log(123);
            $(window).resize(function(){
                // console.log("pasileido");
                if($('#mainsection').length) {
                    // console.log("viduje suveike");
                    fit(bar, mainsection,{cover: true, hAlign: fit.CENTER,
                        vAlign: fit.TOP,});

                }
            });
            if($('#mainsection').length){
                fit( bar, mainsection, { cover: true,watch:true, hAlign: fit.CENTER,
                    vAlign: fit.TOP} );
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