@extends('layouts.master')
@section('main')
    @include('layouts._partials/selectbar')
<div id="daugiabuciai">
<img id="mobile-only" src="{{asset('images\ketvirtasd.jpg')}}">
  <div id="mainsection">
    <div id="bar" class="klase">
      <svg viewBox="0 0 1920 1080" class="select-svg-main mobile-none svg-defection" xml:space="preserve" version="1.1" height="100" width="100" style="shape-rendering:geometricPrecision; text-rendering:geometricPrecision; image-rendering:optimizeQuality; fill-rule:evenodd; clip-rule:evenodd">
      <image height="1080" width="100%" id="mainpic" xlink:href="{{asset('images\ketvirtasd.jpg')}}"  />
      <a href="/namas/4/3"><path style="fill:transparent;opacity:0.4"  d="M 420.89552,463.8806 1146.2687,26.865672 1354.0299,467.46269 1352.2388,583.8806 1090.7463,424.47761 417.31343,614.32836 Z" class="mouseListener" id="ketvirto3a" inkscape:connector-curvature="0"></path></a>
      <a href="/namas/4/2"><path style="fill:transparent;opacity:0.4"  d="M 1352.2388,583.8806 V 739.70149 L 1094.3284,705.67164 420.89552,737.91045 417.31343,614.32836 1090.7463,424.47761 Z" class="mouseListener" id="ketvirto2a" inkscape:connector-curvature="0"></path></a>
      <a href="/namas/4/1"><path style="fill:transparent;opacity:0.4"  d="M 1352.2388,739.70149 V 856.1194 l -202.3881,132.53732 -57.3134,-8.95523 -673.43282,-128.95522 1.79104,-112.83582 673.43288,-32.23881 z" class="mouseListener" id="ketvirto1a" inkscape:connector-curvature="0"></path></a>
       </svg>
   </div>
  </div>
</div>
<div class="showPopup" id="ketvirto3" style="display: none;">
  <div class="popup">
    <img src="{{ asset('/images/namukas.png') }}">
    <ul>
      <li>3 Aukstas</li>
      <li class="laisvas4" id='ketvirto3alaisvu'></li>
      <li class="rezervuotas4" id='ketvirto3arezervuotu'></li>
      <li class="parduotas4" id='ketvirto3aparduotu'></li>
    </ul>
  </div>
</div>
<div class="showPopup" id="ketvirto2" style="display: none;">
  <div class="popup">
    <img src="{{ asset('/images/namukas.png') }}">
    <ul>
      <li>2 Aukstas</li>
      <li class="laisvas4" id='ketvirto2alaisvu'></li>
      <li class="rezervuotas4" id='ketvirto2arezervuotu'></li>
      <li class="parduotas4" id='ketvirto2aparduotu'></li>
    </ul>
  </div>
</div>

<div class="showPopup" id="ketvirto1" style="display: none" >
  <div class="popup">
    <img src="{{ asset('/images/namukas.png') }}">
    <ul>
      <li>1 Aukstas</li>
      <li class="laisvas4" id='ketvirto1alaisvu'></li>
      <li class="rezervuotas4" id='ketvirto1arezervuotu'></li>
      <li class="parduotas4" id='ketvirto1aparduotu'></li>
    </ul>
  </div>
</div>





<script type="text/javascript">
var fit=function(){"use strict";function t(t){return t.toUpperCase()}function e(t){return"number"==typeof t&&!isNaN(t)}function n(){return(new Date).getTime()}function i(t,e){for(var n=[],i=0,r=t.length;r>i;i++)n[i]=e(t[i]);return n}function r(t,e){for(var n in e)n in t||(t[n]=e[n]);return t}function o(e){if(!d)for(var n,i=H(C.body),r=w,o=0,a=T.length;a>o&&(d=T[o],n=d+r,!(n in i))&&(d=d.replace(/^(\w)/,t),n=d+r,!(n in i));o++);return d+e}function a(t){var e=H(t),n=e[o(w)].replace(/[a-z()]/gi,"").split(",");if(n.length<6)return[1,0,0,1,0,0];for(var i=0;6>i;i++)n[i]=parseFloat(n[i]);return n}function f(t,e){var n=a(e);n[0]=t.scale,n[3]=t.scale,n[4]+=t.tx,n[5]+=t.ty;var r=i(n,function(t){return t.toFixed(6)});e.style[o(m)]="0 0",e.style[o(w)]="matrix("+r.join(",")+")"}function s(t,e){var n=H(e),i=parseFloat(n.left)||0,r=parseFloat(n.top)||0;"static"===n.position&&(e.style.position="relative"),e.style.left=i+t.tx+b,e.style.top=r+t.ty+b,e.style.height=t.height+b,e.style.width=t.width+b}function l(t,e){var n=H(e),i=parseFloat(n.marginLeft)||0,r=parseFloat(n.marginTop)||0;e.style.marginLeft=i+t.tx+b,e.style.marginTop=r+t.ty+b,e.style.height=t.height+b,e.style.width=t.width+b}function h(t,e){e.height*=t.scale,e.width*=t.scale,e.x+=t.tx,e.y+=t.ty}function u(t){if(t.nodeType&&1==t.nodeType){var n=t.getBoundingClientRect();t={height:t.offsetHeight,width:t.offsetWidth,x:n.left,y:n.top}}return!e(t.x)&&e(t.left)&&(t.x=t.left),!e(t.y)&&e(t.top)&&(t.y=t.top),t}function c(){var t=n(),e=t-y;if(x>=e)clearInterval(v),v=setTimeout(c,x-e);else{for(var i=0,r=M.length;r>i;i++)M[i]();y=t}}function g(t,e,n,i,r){var o=u(t),a=u(e),s=0===o.width?R:o.width,l=0===o.height?P:o.height,c=0===a.width?I:a.width,g=0===a.height?P:a.height;R=s,B=l,I=c,P=g;var p=c/s,d=g/l,y=s/l,v=c/g,x=n.cover?d:p,m=n.cover?p:d,w=y>=v?x:m,T=s*w,O=l*w,F=n.hAlign==E?.5*(T-c):n.hAlign==L?T-c:0,b=n.vAlign==E?.5*(O-g):n.vAlign==A?O-g:0;return r=r||{},r.tx=a.x-F-o.x,r.ty=a.y-b-o.y,r.x=a.x-F-o.x*w,r.y=a.y-b-o.y*w,r.height=o.height*w,r.width=o.width*w,r.scale=w,i?i(r,t):n.apply&&(i="undefined"!=typeof HTMLElement&&t instanceof HTMLElement?f:h)(r,t),r}function p(t,e,n,i){if(!t||!e)throw"You must supply a target and a container";"function"==typeof n&&(i=n,n={}),n=r(n||{},N);var o=g(t,e,n,i);return n.watch&&(M.length||(z.addEventListener?(z.addEventListener("resize",c),z.addEventListener("orientationchange",c)):(z.attachEvent("onresize",c),z.attachEvent("onorientationchange",c))),o.trigger=function(){g(t,e,n,i,o)},o.on=function(t){var e=M.indexOf(o.trigger);~e||M.push(o.trigger),t||o.trigger()},o.off=function(){var t=M.indexOf(o.trigger);~t&&M.splice(t,1)},o.on(!0)),o}var d,y,v,x=50,m="TransformOrigin",w="Transform",T="moz ms o webkit".split(" "),E="center",A="bottom",L="right",O="left",F="top",b="px",z=window||self,C=document,H=z.getComputedStyle,M=[],N={hAlign:E,vAlign:E,watch:!1,cover:!1,apply:!0};Array.prototype.indexOf||(Array.prototype.indexOf=function(t){for(var e=0;e<this.length;++e)if(this[e]==t)return e;return-1});var R,B,I,P;return r(p,{watching:M,defaults:N,cssTransform:f,cssPosition:s,cssMargin:l,CENTER:E,BOTTOM:A,RIGHT:L,LEFT:O,TOP:F})}();"undefined"!=typeof exports&&("undefined"!=typeof module&&module.exports&&(exports=module.exports=fit),exports.fit=fit);
  $(document).ready(function(){
    console.log(123);
    $(window).resize(function(){
    console.log("pasileido");
        if($('#mainsection').length) {
          console.log("viduje suveike");
            fit(bar, mainsection,{cover: true});

        }
    });
    if($('#mainsection').length){
        fit( bar, mainsection, { cover: true } );
    }
    
});



</script>
@endsection