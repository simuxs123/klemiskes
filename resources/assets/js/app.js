
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

// window.Vue = require('vue');

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

// Vue.component('example-component', require('./components/ExampleComponent.vue'));

// const app = new Vue({
//     el: '#app'
// });



//kotedzu planu slider


$(document).ready(function() {

  var index = 0;
  var x = document.getElementsByClassName('skaidre');


document.getElementById("btnr").addEventListener("click", function(){
    pindex(-1);
});
document.getElementById("btnn").addEventListener("click", function(){
    pindex(+1);
});
  function pindex(n){

    index = index +n;
    if (index > x.length-1) {
      index = 0;
    }else if (index < 0) {
      index = x.length-1;
    };
    ShowTime(index);
  };



  function ShowTime(index){
    var x = document.getElementsByClassName('skaidre');
    for (i=0; i < x.length; i++) {
      x[i].style.display = "none";
    };
    x[index].style.display = "inline-block";

  };

    
});




$.ajaxSetup({
  headers: {
    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
  }
});

var pirmolaisvi = 0;
var pirmorezervuoti = 0;
var pirmoparduoti = 0;
var antrolaisvi = 0;
var antrorezervuoti = 0;
var antroparduoti = 0;
var treciolaisvi = 0;
var treciorezervuoti = 0;
var trecioparduoti = 0;
var ketvirtolaisvi = 0;
var ketvirtorezervuoti = 0;
var ketvirtoparduoti = 0;
var kotedzolaisvi = 0;
var kotedzorezervuoti = 0;
var kotedzoparduoti = 0;

window.onload = function() {


  //pirmas namas

   $.ajax({
                  url: '/pirmasa',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    // console.log(this.url);
                    // console.log(data);
                      if (data[0].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#pirmasa1" ).attr('d', data[0].cords).css("fill", "transparent");
        }else if(data[0].statusas == 1 ){
            $( "#pirmasa1" ).attr('d', data[0].cords).css("fill", "transparent");
            }else {
              $( "#pirmasa1" ).attr('d', data[0].cords).css("fill", "transparent");
           }

        if (data[1].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#pirmasa2" ).attr('d', data[1].cords).css("fill", "transparent");
        }else if(data[1].statusas == 1 ){
            $( "#pirmasa2" ).attr('d', data[1].cords).css("fill", "transparent");
            }else {
              $( "#pirmasa2" ).attr('d', data[1].cords).css("fill", "transparent");
           }

           if (data[2].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#pirmasa3" ).attr('d', data[2].cords).css("fill", "transparent");
        }else if(data[2].statusas == 1 ){
            $( "#pirmasa3" ).attr('d', data[2].cords).css("fill", "transparent");
            }else {
              $( "#pirmasa3" ).attr('d', data[2].cords).css("fill", "transparent");
           }

           document.getElementById("pirmasa1").addEventListener("mouseover", function(){
                          if (data[0].statusas == 0) {
          $( "#pirmasa1" ).attr('d', data[0].cords).css("fill", "#ccffcc");
        }else if(data[0].statusas == 1 ){
            $( "#pirmasa1" ).attr('d', data[0].cords).css("fill", "#ff6666");
            }else {
              $( "#pirmasa1" ).attr('d', data[0].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("pirmasa1").addEventListener("mouseout", function(){
              document.getElementById("pirmasa1").style.fill ="transparent"
            })

            document.getElementById("pirmasa2").addEventListener("mouseover", function(){
                          if (data[1].statusas == 0) {
          $( "#pirmasa2" ).attr('d', data[1].cords).css("fill", "#ccffcc");
        }else if(data[1].statusas == 1 ){
            $( "#pirmasa2" ).attr('d', data[1].cords).css("fill", "#ff6666");
            }else {
              $( "#pirmasa2" ).attr('d', data[1].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("pirmasa2").addEventListener("mouseout", function(){
              document.getElementById("pirmasa2").style.fill ="transparent"
            })


          document.getElementById("pirmasa3").addEventListener("mouseover", function(){
                          if (data[2].statusas == 0) {
          $( "#pirmasa3" ).attr('d', data[2].cords).css("fill", "#ccffcc");
        }else if(data[2].statusas == 1 ){
            $( "#pirmasa3" ).attr('d', data[2].cords).css("fill", "#ff6666");
            }else {
              $( "#pirmasa3" ).attr('d', data[2].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("pirmasa3").addEventListener("mouseout", function(){
              document.getElementById("pirmasa3").style.fill ="transparent"
            })
        
                  },
                  error: function(){
                    console.log(error)
                  },
     });

   $.ajax({
                  url: '/pirmasa',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    // console.log(this.url);
                    var laisvi = 0;
                    var rezervuota = 0;
                    var parduota = 0;
                    for(var i = 0 ; i < 3; i++){
                  if (data[i].statusas == 0) {
                    laisvi++;
                    pirmolaisvi++;
                  } else if(data[i].statusas == 1){
                     parduota++;
                     pirmoparduoti++;
                  }else{
                    rezervuota++;
                    pirmorezervuoti++;
                  }
                     
                 }
                  var pirmo1alaisvu = document.getElementById('pirmo1alaisvu');
                  if (pirmo1alaisvu) {
                    pirmo1alaisvu.innerHTML = 'Laisvu: ' + laisvi;
                  }

                  
                  var pirmo1arezervuotu = document.getElementById('pirmo1arezervuotu');
                  if (pirmo1arezervuotu) {
                    pirmo1arezervuotu.innerHTML = 'Rezervuotu: ' + rezervuota;
                  }
                  
                  var pirmo1aparduotu = document.getElementById('pirmo1aparduotu');
                  if (pirmo1aparduotu) {
                    pirmo1aparduotu.innerHTML = 'Parduotu: ' + parduota;
                  }

                  var pirmox =document.getElementById('pirmolaisvi');
                  if(pirmox){
                    pirmox.innerHTML = 'Laisvu: ' + pirmolaisvi;
                  }

                  var pirmoy =document.getElementById('pirmorezervuoti');
                  if(pirmoy){
                    pirmoy.innerHTML = 'Rezervuotu: ' + pirmorezervuoti;
                  }

                  var pirmoz =document.getElementById('pirmoparduoti');
                  if(pirmoz){
                    pirmoz.innerHTML = 'Parduotu: ' + pirmoparduoti;
                  }

                  
                  },




                  error: function(){
                    console.log(error)
                  },
     });

   $.ajax({
                  url: '/pirmasb',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    // console.log(this.url);
                    // console.log(data);
                      if (data[0].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#pirmasb1" ).attr('d', data[0].cords).css("fill", "transparent");
        }else if(data[0].statusas == 1 ){
            $( "#pirmasb1" ).attr('d', data[0].cords).css("fill", "transparent");
            }else {
              $( "#pirmasb1" ).attr('d', data[0].cords).css("fill", "transparent");
           }

        if (data[1].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#pirmasb2" ).attr('d', data[1].cords).css("fill", "transparent");
        }else if(data[1].statusas == 1 ){
            $( "#pirmasb2" ).attr('d', data[1].cords).css("fill", "transparent");
            }else {
              $( "#pirmasb2" ).attr('d', data[1].cords).css("fill", "transparent");
           }

           if (data[2].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#pirmasb3" ).attr('d', data[2].cords).css("fill", "transparent");
        }else if(data[2].statusas == 1 ){
            $( "#pirmasb3" ).attr('d', data[2].cords).css("fill", "transparent");
            }else {
              $( "#pirmasb3" ).attr('d', data[2].cords).css("fill", "transparent");
           }

           document.getElementById("pirmasb1").addEventListener("mouseover", function(){
                          if (data[0].statusas == 0) {
          $( "#pirmasb1" ).attr('d', data[0].cords).css("fill", "#ccffcc");
        }else if(data[0].statusas == 1 ){
            $( "#pirmasb1" ).attr('d', data[0].cords).css("fill", "#ff6666");
            }else {
              $( "#pirmasb1" ).attr('d', data[0].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("pirmasb1").addEventListener("mouseout", function(){
              document.getElementById("pirmasb1").style.fill ="transparent"
            })

              document.getElementById("pirmasb2").addEventListener("mouseover", function(){
                          if (data[1].statusas == 0) {
          $( "#pirmasb2" ).attr('d', data[1].cords).css("fill", "#ccffcc");
        }else if(data[1].statusas == 1 ){
            $( "#pirmasb2" ).attr('d', data[1].cords).css("fill", "#ff6666");
            }else {
              $( "#pirmasb2" ).attr('d', data[1].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("pirmasb2").addEventListener("mouseout", function(){
              document.getElementById("pirmasb2").style.fill ="transparent"
            })

         document.getElementById("pirmasb3").addEventListener("mouseover", function(){
                          if (data[2].statusas == 0) {
          $( "#pirmasb3" ).attr('d', data[2].cords).css("fill", "#ccffcc");
        }else if(data[2].statusas == 1 ){
            $( "#pirmasb3" ).attr('d', data[2].cords).css("fill", "#ff6666");
            }else {
              $( "#pirmasb3" ).attr('d', data[2].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("pirmasb3").addEventListener("mouseout", function(){
              document.getElementById("pirmasb3").style.fill ="transparent"
            })     
        
                  },
                  error: function(){
                    console.log(error)
                  },
     });

   

   $.ajax({
                  url: '/pirmasb',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    // console.log(this.url);
                    var laisvi = 0;
                    var rezervuota = 0;
                    var parduota = 0;
                    for(var i = 0 ; i < 3; i++){
                  if (data[i].statusas == 0) {
                    laisvi++;
                    pirmolaisvi++;
                  } else if(data[i].statusas == 1){
                     parduota++;
                     pirmoparduoti++;
                  }else{
                    rezervuota++;
                    pirmorezervuoti++;
                  }
                     
                 }
                  var pirmo2alaisvu = document.getElementById('pirmo2alaisvu');
                  if (pirmo2alaisvu){
                    pirmo2alaisvu.innerHTML = 'Laisvu: ' + laisvi;
                  }                  
                  var pirmo2arezervuotu = document.getElementById('pirmo2arezervuotu');
                  if (pirmo2arezervuotu) {
                    pirmo2arezervuotu.innerHTML = 'Rezervuotu: ' + rezervuota;
                  }
                  
                  var pirmo2aparduotu = document.getElementById('pirmo2aparduotu');
                  if (pirmo2aparduotu) {
                    pirmo2aparduotu.innerHTML = 'Parduotu: ' + parduota;
                  }

                  var pirmox =document.getElementById('pirmolaisvi');
                  if(pirmox){
                    pirmox.innerHTML = 'Laisvu: ' + pirmolaisvi;
                  }

                  var pirmoy =document.getElementById('pirmorezervuoti');
                  if(pirmoy){
                    pirmoy.innerHTML = 'Rezervuotu: ' + pirmorezervuoti;
                  }

                  var pirmoz =document.getElementById('pirmoparduoti');
                  if(pirmoz){
                    pirmoz.innerHTML = 'Parduotu: ' + pirmoparduoti;
                  }

                  
                  },




                  error: function(){
                    console.log(error)
                  },
     });

   $.ajax({
                  url: '/pirmasc',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    // console.log(this.url);
                    // console.log(data);
                      if (data[0].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#pirmasc1" ).attr('d', data[0].cords).css("fill", "transparent");
        }else if(data[0].statusas == 1 ){
            $( "#pirmasc1" ).attr('d', data[0].cords).css("fill", "transparent");
            }else {
              $( "#pirmasc1" ).attr('d', data[0].cords).css("fill", "transparent");
           }

        if (data[1].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#pirmasc2" ).attr('d', data[1].cords).css("fill", "transparent");
        }else if(data[1].statusas == 1 ){
            $( "#pirmasc2" ).attr('d', data[1].cords).css("fill", "transparent");
            }else {
              $( "#pirmasc2" ).attr('d', data[1].cords).css("fill", "transparent");
           }

           if (data[2].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#pirmasc3" ).attr('d', data[2].cords).css("fill", "transparent");
        }else if(data[2].statusas == 1 ){
            $( "#pirmasc3" ).attr('d', data[2].cords).css("fill", "transparent");
            }else {
              $( "#pirmasc3" ).attr('d', data[2].cords).css("fill", "transparent");
           }

            document.getElementById("pirmasc1").addEventListener("mouseover", function(){
                          if (data[0].statusas == 0) {
          $( "#pirmasc1" ).attr('d', data[0].cords).css("fill", "#ccffcc");
        }else if(data[0].statusas == 1 ){
            $( "#pirmasc1" ).attr('d', data[0].cords).css("fill", "#ff6666");
            }else {
              $( "#pirmasc1" ).attr('d', data[0].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("pirmasc1").addEventListener("mouseout", function(){
              document.getElementById("pirmasc1").style.fill ="transparent"
            })

              document.getElementById("pirmasc2").addEventListener("mouseover", function(){
                          if (data[1].statusas == 0) {
          $( "#pirmasc2" ).attr('d', data[1].cords).css("fill", "#ccffcc");
        }else if(data[1].statusas == 1 ){
            $( "#pirmasc2" ).attr('d', data[1].cords).css("fill", "#ff6666");
            }else {
              $( "#pirmasc2" ).attr('d', data[1].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("pirmasc2").addEventListener("mouseout", function(){
              document.getElementById("pirmasc2").style.fill ="transparent"
            })

         document.getElementById("pirmasc3").addEventListener("mouseover", function(){
                          if (data[2].statusas == 0) {
          $( "#pirmasc3" ).attr('d', data[2].cords).css("fill", "#ccffcc");
        }else if(data[2].statusas == 1 ){
            $( "#pirmasc3" ).attr('d', data[2].cords).css("fill", "#ff6666");
            }else {
              $( "#pirmasc3" ).attr('d', data[2].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("pirmasc3").addEventListener("mouseout", function(){
              document.getElementById("pirmasc3").style.fill ="transparent"
            })     
        
                  },
                  error: function(){
                    console.log(error)
                  },
     });

   $.ajax({
                  url: '/pirmasc',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    // console.log(this.url);
                    var laisvi = 0;
                    var rezervuota = 0;
                    var parduota = 0;
                    for(var i = 0 ; i < 3; i++){
                  if (data[i].statusas == 0) {
                    laisvi++;
                    pirmolaisvi++;
                  } else if(data[i].statusas == 1){
                     parduota++;
                     pirmoparduoti++;
                  }else{
                    rezervuota++;
                    pirmorezervuoti++;
                  }
                     
                 }
                  var pirmo3alaisvu = document.getElementById('pirmo3alaisvu');
                  if (pirmo3alaisvu) {
                    pirmo3alaisvu.innerHTML = 'Laisvu: ' + laisvi;
                  }
                  
                  var pirmo3arezervuotu = document.getElementById('pirmo3arezervuotu');
                  if (pirmo3arezervuotu) {
                    pirmo3arezervuotu.innerHTML = 'Rezervuotu: ' + rezervuota;
                  }
                  
                  var pirmo3aparduotu = document.getElementById('pirmo3aparduotu');
                  if(pirmo3aparduotu) {
                    pirmo3aparduotu.innerHTML = 'Parduotu: ' + parduota;
                  }
                  

                  var pirmox =document.getElementById('pirmolaisvi');
                  if(pirmox){
                    pirmox.innerHTML = 'Laisvu: ' + pirmolaisvi;
                  }

                  var pirmoy =document.getElementById('pirmorezervuoti');
                  if(pirmoy){
                    pirmoy.innerHTML = 'Rezervuotu: ' + pirmorezervuoti;
                  }

                  var pirmoz =document.getElementById('pirmoparduoti');
                  if(pirmoz){
                    pirmoz.innerHTML = 'Parduotu: ' + pirmoparduoti;
                  }
                  
                  
                  },




                  error: function(){
                    console.log(error)
                  },
     });

   //antras namas
   
   
   $.ajax({
                  url: '/antrasa',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    // console.log(this.url);
                    // console.log(data);
                      if (data[0].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#antrasa1" ).attr('d', data[0].cords).css("fill", "transparent");
        }else if(data[0].statusas == 1 ){
            $( "#antrasa1" ).attr('d', data[0].cords).css("fill", "transparent");
            }else {
              $( "#antrasa1" ).attr('d', data[0].cords).css("fill", "transparent");
           }

        if (data[1].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#antrasa2" ).attr('d', data[1].cords).css("fill", "transparent");
        }else if(data[1].statusas == 1 ){
            $( "#antrasa2" ).attr('d', data[1].cords).css("fill", "transparent");
            }else {
              $( "#antrasa2" ).attr('d', data[1].cords).css("fill", "transparent");
           }

           if (data[2].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#antrasa3" ).attr('d', data[2].cords).css("fill", "transparent");
        }else if(data[2].statusas == 1 ){
            $( "#antrasa3" ).attr('d', data[2].cords).css("fill", "transparent");
            }else {
              $( "#antrasa3" ).attr('d', data[2].cords).css("fill", "transparent");
           }


           document.getElementById("antrasa1").addEventListener("mouseover", function(){
                          if (data[0].statusas == 0) {
          $( "#antrasa1" ).attr('d', data[0].cords).css("fill", "#ccffcc");
        }else if(data[0].statusas == 1 ){
            $( "#antrasa1" ).attr('d', data[0].cords).css("fill", "#ff6666");
            }else {
              $( "#antrasa1" ).attr('d', data[0].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("antrasa1").addEventListener("mouseout", function(){
              document.getElementById("antrasa1").style.fill ="transparent"
            })

              document.getElementById("antrasa2").addEventListener("mouseover", function(){
                          if (data[1].statusas == 0) {
          $( "#antrasa2" ).attr('d', data[1].cords).css("fill", "#ccffcc");
        }else if(data[1].statusas == 1 ){
            $( "#antrasa2" ).attr('d', data[1].cords).css("fill", "#ff6666");
            }else {
              $( "#antrasa2" ).attr('d', data[1].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("antrasa2").addEventListener("mouseout", function(){
              document.getElementById("antrasa2").style.fill ="transparent"
            })

         document.getElementById("antrasa3").addEventListener("mouseover", function(){
                          if (data[2].statusas == 0) {
          $( "#antrasa3" ).attr('d', data[2].cords).css("fill", "#ccffcc");
        }else if(data[2].statusas == 1 ){
            $( "#antrasa3" ).attr('d', data[2].cords).css("fill", "#ff6666");
            }else {
              $( "#antrasa3" ).attr('d', data[2].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("antrasa3").addEventListener("mouseout", function(){
              document.getElementById("antrasa3").style.fill ="transparent"
            })     
        
                  },
                  error: function(){
                    console.log(error)
                  },
     });

   $.ajax({
                  url: '/antrasa',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    // console.log(this.url);
                    var laisvi = 0;
                    var rezervuota = 0;
                    var parduota = 0;
                    for(var i = 0 ; i < 3; i++){
                  if (data[i].statusas == 0) {
                    laisvi++;
                    antrolaisvi++;
                  } else if(data[i].statusas == 1){
                     parduota++;
                     antroparduoti++;
                  }else{
                    rezervuota++;
                    antrorezervuoti++;
                  }
                     
                 }
                  var antro1alaisvu = document.getElementById('antro1alaisvu');
                  if (antro1alaisvu) {
                    antro1alaisvu.innerHTML = 'Laisvu: ' + laisvi;
                  }

                  
                  var antro1arezervuotu = document.getElementById('antro1arezervuotu');
                  if (antro1arezervuotu) {
                    antro1arezervuotu.innerHTML = 'Rezervuotu: ' + rezervuota;
                  }
                  
                  var antro1aparduotu = document.getElementById('antro1aparduotu');
                  if (antro1aparduotu) {
                    antro1aparduotu.innerHTML = 'Parduotu: ' + parduota;
                  }

                  var antrox =document.getElementById('antrolaisvi');
                  if(antrox){
                    antrox.innerHTML = 'Laisvu: ' + antrolaisvi;
                  }

                  var antroy =document.getElementById('antrorezervuoti');
                  if(antroy){
                    antroy.innerHTML = 'Rezervuotu: ' + antrorezervuoti;
                  }

                  var antroz =document.getElementById('antroparduoti');
                  if(antroz){
                    antroz.innerHTML = 'Parduotu: ' + antroparduoti;
                  }

                  
                  },




                  error: function(){
                    console.log(error)
                  },
     });

   $.ajax({
                  url: '/antrasb',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    // console.log(this.url);
                    // console.log(data);
                      if (data[0].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#antrasb1" ).attr('d', data[0].cords).css("fill", "transparent");
        }else if(data[0].statusas == 1 ){
            $( "#antrasb1" ).attr('d', data[0].cords).css("fill", "transparent");
            }else {
              $( "#antrasb1" ).attr('d', data[0].cords).css("fill", "transparent");
           }

        if (data[1].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#antrasb2" ).attr('d', data[1].cords).css("fill", "transparent");
        }else if(data[1].statusas == 1 ){
            $( "#antrasb2" ).attr('d', data[1].cords).css("fill", "transparent");
            }else {
              $( "#antrasb2" ).attr('d', data[1].cords).css("fill", "transparent");
           }

           if (data[2].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#antrasb3" ).attr('d', data[2].cords).css("fill", "transparent");
        }else if(data[2].statusas == 1 ){
            $( "#antrasb3" ).attr('d', data[2].cords).css("fill", "transparent");
            }else {
              $( "#antrasb3" ).attr('d', data[2].cords).css("fill", "transparent");
           }


           document.getElementById("antrasb1").addEventListener("mouseover", function(){
                          if (data[0].statusas == 0) {
          $( "#antrasb1" ).attr('d', data[0].cords).css("fill", "#ccffcc");
        }else if(data[0].statusas == 1 ){
            $( "#antrasb1" ).attr('d', data[0].cords).css("fill", "#ff6666");
            }else {
              $( "#antrasb1" ).attr('d', data[0].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("antrasb1").addEventListener("mouseout", function(){
              document.getElementById("antrasb1").style.fill ="transparent"
            })

              document.getElementById("antrasb2").addEventListener("mouseover", function(){
                          if (data[1].statusas == 0) {
          $( "#antrasb2" ).attr('d', data[1].cords).css("fill", "#ccffcc");
        }else if(data[1].statusas == 1 ){
            $( "#antrasb2" ).attr('d', data[1].cords).css("fill", "#ff6666");
            }else {
              $( "#antrasb2" ).attr('d', data[1].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("antrasb2").addEventListener("mouseout", function(){
              document.getElementById("antrasb2").style.fill ="transparent"
            })

         document.getElementById("antrasb3").addEventListener("mouseover", function(){
                          if (data[2].statusas == 0) {
          $( "#antrasb3" ).attr('d', data[2].cords).css("fill", "#ccffcc");
        }else if(data[2].statusas == 1 ){
            $( "#antrasb3" ).attr('d', data[2].cords).css("fill", "#ff6666");
            }else {
              $( "#antrasb3" ).attr('d', data[2].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("antrasb3").addEventListener("mouseout", function(){
              document.getElementById("antrasb3").style.fill ="transparent"
            })     
        
                  },
                  error: function(){
                    console.log(error)
                  },
     });

   

   $.ajax({
                  url: '/antrasb',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    // console.log(this.url);
                    var laisvi = 0;
                    var rezervuota = 0;
                    var parduota = 0;
                    for(var i = 0 ; i < 3; i++){
                  if (data[i].statusas == 0) {
                    laisvi++;
                    antrolaisvi++;
                  } else if(data[i].statusas == 1){
                     parduota++;
                     antroparduoti++;
                  }else{
                    rezervuota++;
                    antrorezervuoti++;
                  }
                     
                 }
                  var antro2alaisvu = document.getElementById('antro2alaisvu');
                  if (antro2alaisvu){
                    antro2alaisvu.innerHTML = 'Laisvu: ' + laisvi;
                  }                  
                  var antro2arezervuotu = document.getElementById('antro2arezervuotu');
                  if (antro2arezervuotu) {
                    antro2arezervuotu.innerHTML = 'Rezervuotu: ' + rezervuota;
                  }
                  
                  var antro2aparduotu = document.getElementById('antro2aparduotu');
                  if (antro2aparduotu) {
                    antro2aparduotu.innerHTML = 'Parduotu: ' + parduota;
                  }

                  var antrox =document.getElementById('antrolaisvi');
                  if(antrox){
                    antrox.innerHTML = 'Laisvu: ' + antrolaisvi;
                  }

                  var antroy =document.getElementById('antrorezervuoti');
                  if(antroy){
                    antroy.innerHTML = 'Rezervuotu: ' + antrorezervuoti;
                  }

                  var antroz =document.getElementById('antroparduoti');
                  if(antroz){
                    antroz.innerHTML = 'Parduotu: ' + antroparduoti;
                  }

                  
                  },




                  error: function(){
                    console.log(error)
                  },
     });

   $.ajax({
                  url: '/antrasc',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    // console.log(this.url);
                    // console.log(data);
                      if (data[0].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#antrasc1" ).attr('d', data[0].cords).css("fill", "transparent");
        }else if(data[0].statusas == 1 ){
            $( "#antrasc1" ).attr('d', data[0].cords).css("fill", "transparent");
            }else {
              $( "#antrasc1" ).attr('d', data[0].cords).css("fill", "transparent");
           }

           if(data[1].statusas == 0){
                 // console.log(data[1]);
          $( "#antrasc2" ).attr('d', data[1].cords).css("fill", "transparent");
        }else if(data[1].statusas == 1 ){
            $( "#antrasc2" ).attr('d', data[1].cords).css("fill", "transparent");
            }else {
              $( "#antrasc2" ).attr('d', data[1].cords).css("fill", "transparent");
           }

           if (data[2].statusas == 0) {
                        // console.log(data[2].statusas);
          $( "#antrasc3" ).attr('d', data[2].cords).css("fill", "transparent");
        }else if(data[2].statusas == 1 ){
            $( "#antrasc3" ).attr('d', data[2].cords).css("fill", "transparent");
            }else {
              $( "#antrasc3" ).attr('d', data[2].cords).css("fill", "transparent");
           }


           document.getElementById("antrasc1").addEventListener("mouseover", function(){
                          if (data[0].statusas == 0) {
          $( "#antrasc1" ).attr('d', data[0].cords).css("fill", "#ccffcc");
        }else if(data[0].statusas == 1 ){
            $( "#antrasc1" ).attr('d', data[0].cords).css("fill", "#ff6666");
            }else {
              $( "#antrasc1" ).attr('d', data[0].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("antrasc1").addEventListener("mouseout", function(){
              document.getElementById("antrasc1").style.fill ="transparent"
            })

              document.getElementById("antrasc2").addEventListener("mouseover", function(){
                          if (data[1].statusas == 0) {
          $( "#antrasc2" ).attr('d', data[1].cords).css("fill", "#ccffcc");
        }else if(data[1].statusas == 1 ){
            $( "#antrasc2" ).attr('d', data[1].cords).css("fill", "#ff6666");
            }else {
              $( "#antrasc2" ).attr('d', data[1].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("antrasc2").addEventListener("mouseout", function(){
              document.getElementById("antrasc2").style.fill ="transparent"
            })

         document.getElementById("antrasc3").addEventListener("mouseover", function(){
                          if (data[2].statusas == 0) {
          $( "#antrasc3" ).attr('d', data[2].cords).css("fill", "#ccffcc");
        }else if(data[2].statusas == 1 ){
            $( "#antrasc3" ).attr('d', data[2].cords).css("fill", "#ff6666");
            }else {
              $( "#antrasc3" ).attr('d', data[2].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("antrasc3").addEventListener("mouseout", function(){
              document.getElementById("antrasc3").style.fill ="transparent"
            })     
        
                  },
                  error: function(){
                    console.log(error)
                  },
     });

   $.ajax({
                  url: '/antrasc',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    // console.log(this.url);
                    var laisvi = 0;
                    var rezervuota = 0;
                    var parduota = 0;
                    for(var i = 0 ; i < 3; i++){
                  if (data[i].statusas == 0) {
                    laisvi++;
                    antrolaisvi++;
                  } else if(data[i].statusas == 1){
                     parduota++;
                     antroparduoti++;
                  }else{
                    rezervuota++;
                    antrorezervuoti++;
                  }
                     
                 }
                  var antro3alaisvu = document.getElementById('antro3alaisvu');
                  if (antro3alaisvu) {
                    antro3alaisvu.innerHTML = 'Laisvu: ' + laisvi;
                  }
                  
                  var antro3arezervuotu = document.getElementById('antro3arezervuotu');
                  if (antro3arezervuotu) {
                    antro3arezervuotu.innerHTML = 'Rezervuotu: ' + rezervuota;
                  }
                  
                  var antro3aparduotu = document.getElementById('antro3aparduotu');
                  if(antro3aparduotu) {
                    antro3aparduotu.innerHTML = 'Parduotu: ' + parduota;
                  }
                  

                  var antrox =document.getElementById('antrolaisvi');
                  if(antrox){
                    antrox.innerHTML = 'Laisvu: ' + antrolaisvi;
                  }

                  var antroy =document.getElementById('antrorezervuoti');
                  if(antroy){
                    antroy.innerHTML = 'Rezervuotu: ' + antrorezervuoti;
                  }

                  var antroz =document.getElementById('antroparduoti');
                  if(antroz){
                    antroz.innerHTML = 'Parduotu: ' + antroparduoti;
                  }
                  
                  
                  },




                  error: function(){
                    console.log(error)
                  },
     });


   //trecias namas


     $.ajax({
                  url: '/treciasa',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    // console.log(this.url);
                    // console.log(data);
                      if (data[0].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#treciasa1" ).attr('d', data[0].cords).css("fill", "transparent");
        }else if(data[0].statusas == 1 ){
            $( "#treciasa1" ).attr('d', data[0].cords).css("fill", "transparent");
            }else {
              $( "#treciasa1" ).attr('d', data[0].cords).css("fill", "transparent");
           }

        if (data[1].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#treciasa2" ).attr('d', data[1].cords).css("fill", "transparent");
        }else if(data[1].statusas == 1 ){
            $( "#treciasa2" ).attr('d', data[1].cords).css("fill", "transparent");
            }else {
              $( "#treciasa2" ).attr('d', data[1].cords).css("fill", "transparent");
           }

           if (data[2].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#treciasa3" ).attr('d', data[2].cords).css("fill", "transparent");
        }else if(data[2].statusas == 1 ){
            $( "#treciasa3" ).attr('d', data[2].cords).css("fill", "transparent");
            }else {
              $( "#treciasa3" ).attr('d', data[2].cords).css("fill", "transparent");
           }

           document.getElementById("treciasa1").addEventListener("mouseover", function(){
                          if (data[0].statusas == 0) {
          $( "#treciasa1" ).attr('d', data[0].cords).css("fill", "#ccffcc");
        }else if(data[0].statusas == 1 ){
            $( "#treciasa1" ).attr('d', data[0].cords).css("fill", "#ff6666");
            }else {
              $( "#treciasa1" ).attr('d', data[0].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("treciasa1").addEventListener("mouseout", function(){
              document.getElementById("treciasa1").style.fill ="transparent"
            })

              document.getElementById("treciasa2").addEventListener("mouseover", function(){
                          if (data[1].statusas == 0) {
          $( "#treciasa2" ).attr('d', data[1].cords).css("fill", "#ccffcc");
        }else if(data[1].statusas == 1 ){
            $( "#treciasa2" ).attr('d', data[1].cords).css("fill", "#ff6666");
            }else {
              $( "#treciasa2" ).attr('d', data[1].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("treciasa2").addEventListener("mouseout", function(){
              document.getElementById("treciasa2").style.fill ="transparent"
            })

         document.getElementById("treciasa3").addEventListener("mouseover", function(){
                          if (data[2].statusas == 0) {
          $( "#treciasa3" ).attr('d', data[2].cords).css("fill", "#ccffcc");
        }else if(data[2].statusas == 1 ){
            $( "#treciasa3" ).attr('d', data[2].cords).css("fill", "#ff6666");
            }else {
              $( "#treciasa3" ).attr('d', data[2].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("treciasa3").addEventListener("mouseout", function(){
              document.getElementById("treciasa3").style.fill ="transparent"
            })     
        
                  },
                  error: function(){
                    console.log(error)
                  },
     });

   $.ajax({
                  url: '/treciasa',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    // console.log(this.url);
                    var laisvi = 0;
                    var rezervuota = 0;
                    var parduota = 0;
                    for(var i = 0 ; i < 3; i++){
                  if (data[i].statusas == 0) {
                    laisvi++;
                    treciolaisvi++;
                  } else if(data[i].statusas == 1){
                     parduota++;
                     trecioparduoti++;
                  }else{
                    rezervuota++;
                    treciorezervuoti++;
                  }
                     
                 }
                  var trecio1alaisvu = document.getElementById('trecio1alaisvu');
                  if (trecio1alaisvu) {
                    trecio1alaisvu.innerHTML = 'Laisvu: ' + laisvi;
                  }

                  
                  var trecio1arezervuotu = document.getElementById('trecio1arezervuotu');
                  if (trecio1arezervuotu) {
                    trecio1arezervuotu.innerHTML = 'Rezervuotu: ' + rezervuota;
                  }
                  
                  var trecio1aparduotu = document.getElementById('trecio1aparduotu');
                  if (trecio1aparduotu) {
                    trecio1aparduotu.innerHTML = 'Parduotu: ' + parduota;
                  }

                  var treciox =document.getElementById('treciolaisvi');
                  if(treciox){
                    treciox.innerHTML = 'Laisvu: ' + treciolaisvi;
                  }

                  var trecioy =document.getElementById('antrorezervuoti');
                  if(trecioy){
                    trecioy.innerHTML = 'Rezervuotu: ' + treciorezervuoti;
                  }

                  var trecioz =document.getElementById('trecioparduoti');
                  if(trecioz){
                    trecioz.innerHTML = 'Parduotu: ' + trecioparduoti;
                  }

                  
                  },




                  error: function(){
                    console.log(error)
                  },
     });

   $.ajax({
                  url: '/treciasb',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    // console.log(this.url);
                    // console.log(data);
                      if (data[0].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#treciasb1" ).attr('d', data[0].cords).css("fill", "transparent");
        }else if(data[0].statusas == 1 ){
            $( "#treciasb1" ).attr('d', data[0].cords).css("fill", "transparent");
            }else {
              $( "#treciasb1" ).attr('d', data[0].cords).css("fill", "transparent");
           }

        if (data[1].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#treciasb2" ).attr('d', data[1].cords).css("fill", "transparent");
        }else if(data[1].statusas == 1 ){
            $( "#treciasb2" ).attr('d', data[1].cords).css("fill", "transparent");
            }else {
              $( "#treciasb2" ).attr('d', data[1].cords).css("fill", "transparent");
           }

           if (data[2].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#treciasb3" ).attr('d', data[2].cords).css("fill", "transparent");
        }else if(data[2].statusas == 1 ){
            $( "#treciasb3" ).attr('d', data[2].cords).css("fill", "transparent");
            }else {
              $( "#treciasb3" ).attr('d', data[2].cords).css("fill", "transparent");
           }

           document.getElementById("treciasb1").addEventListener("mouseover", function(){
                          if (data[0].statusas == 0) {
          $( "#treciasb1" ).attr('d', data[0].cords).css("fill", "#ccffcc");
        }else if(data[0].statusas == 1 ){
            $( "#treciasb1" ).attr('d', data[0].cords).css("fill", "#ff6666");
            }else {
              $( "#treciasb1" ).attr('d', data[0].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("treciasb1").addEventListener("mouseout", function(){
              document.getElementById("treciasb1").style.fill ="transparent"
            })

              document.getElementById("treciasb2").addEventListener("mouseover", function(){
                          if (data[1].statusas == 0) {
          $( "#treciasb2" ).attr('d', data[1].cords).css("fill", "#ccffcc");
        }else if(data[1].statusas == 1 ){
            $( "#treciasb2" ).attr('d', data[1].cords).css("fill", "#ff6666");
            }else {
              $( "#treciasb2" ).attr('d', data[1].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("treciasb2").addEventListener("mouseout", function(){
              document.getElementById("treciasb2").style.fill ="transparent"
            })

         document.getElementById("treciasb3").addEventListener("mouseover", function(){
                          if (data[2].statusas == 0) {
          $( "#treciasb3" ).attr('d', data[2].cords).css("fill", "#ccffcc");
        }else if(data[2].statusas == 1 ){
            $( "#treciasb3" ).attr('d', data[2].cords).css("fill", "#ff6666");
            }else {
              $( "#treciasb3" ).attr('d', data[2].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("treciasb3").addEventListener("mouseout", function(){
              document.getElementById("treciasb3").style.fill ="transparent"
            })     
        
                  },
                  error: function(){
                    console.log(error)
                  },
     });

   

   $.ajax({
                  url: '/treciasb',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    // console.log(this.url);
                    var laisvi = 0;
                    var rezervuota = 0;
                    var parduota = 0;
                    for(var i = 0 ; i < 3; i++){
                  if (data[i].statusas == 0) {
                    laisvi++;
                    treciolaisvi++;
                  } else if(data[i].statusas == 1){
                     parduota++;
                     trecioparduoti++;
                  }else{
                    rezervuota++;
                    treciorezervuoti++;
                  }
                     
                 }
                  var trecio2alaisvu = document.getElementById('trecio2alaisvu');
                  if (trecio2alaisvu){
                    trecio2alaisvu.innerHTML = 'Laisvu: ' + laisvi;
                  }                  
                  var trecio2arezervuotu = document.getElementById('trecio2arezervuotu');
                  if (trecio2arezervuotu) {
                    trecio2arezervuotu.innerHTML = 'Rezervuotu: ' + rezervuota;
                  }
                  
                  var trecio2aparduotu = document.getElementById('trecio2aparduotu');
                  if (trecio2aparduotu) {
                    trecio2aparduotu.innerHTML = 'Parduotu: ' + parduota;
                  }

                  var treciox =document.getElementById('treciolaisvi');
                  if(treciox){
                    treciox.innerHTML = 'Laisvu: ' + treciolaisvi;
                  }

                  var trecioy =document.getElementById('treciorezervuoti');
                  if(trecioy){
                    trecioy.innerHTML = 'Rezervuotu: ' + treciorezervuoti;
                  }

                  var trecioz =document.getElementById('trecioparduoti');
                  if(trecioz){
                    trecioz.innerHTML = 'Parduotu: ' + trecioparduoti;
                  }

                  
                  },




                  error: function(){
                    console.log(error)
                  },
     });

   $.ajax({
                  url: '/treciasc',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    // console.log(this.url);
                    // console.log(data);
                      if (data[0].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#treciasc1" ).attr('d', data[0].cords).css("fill", "transparent");
        }else if(data[0].statusas == 1 ){
            $( "#treciasc1" ).attr('d', data[0].cords).css("fill", "transparent");
            }else {
              $( "#treciasc1" ).attr('d', data[0].cords).css("fill", "transparent");
           }

        if (data[1].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#treciasc2" ).attr('d', data[1].cords).css("fill", "transparent");
        }else if(data[1].statusas == 1 ){
            $( "#treciasc2" ).attr('d', data[1].cords).css("fill", "transparent");
            }else {
              $( "#treciasc2" ).attr('d', data[1].cords).css("fill", "transparent");
           }

           if (data[2].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#treciasc3" ).attr('d', data[2].cords).css("fill", "transparent");
        }else if(data[2].statusas == 1 ){
            $( "#treciasc3" ).attr('d', data[2].cords).css("fill", "transparent");
            }else {
              $( "#treciasc3" ).attr('d', data[2].cords).css("fill", "transparent");
           }

           document.getElementById("treciasc1").addEventListener("mouseover", function(){
                          if (data[0].statusas == 0) {
          $( "#treciasc1" ).attr('d', data[0].cords).css("fill", "#ccffcc");
        }else if(data[0].statusas == 1 ){
            $( "#treciasc1" ).attr('d', data[0].cords).css("fill", "#ff6666");
            }else {
              $( "#treciasc1" ).attr('d', data[0].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("treciasc1").addEventListener("mouseout", function(){
              document.getElementById("treciasc1").style.fill ="transparent"
            })

              document.getElementById("treciasc2").addEventListener("mouseover", function(){
                          if (data[1].statusas == 0) {
          $( "#treciasc2" ).attr('d', data[1].cords).css("fill", "#ccffcc");
        }else if(data[1].statusas == 1 ){
            $( "#treciasc2" ).attr('d', data[1].cords).css("fill", "#ff6666");
            }else {
              $( "#treciasc2" ).attr('d', data[1].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("treciasc2").addEventListener("mouseout", function(){
              document.getElementById("treciasc2").style.fill ="transparent"
            })

         document.getElementById("treciasc3").addEventListener("mouseover", function(){
                          if (data[2].statusas == 0) {
          $( "#treciasc3" ).attr('d', data[2].cords).css("fill", "#ccffcc");
        }else if(data[2].statusas == 1 ){
            $( "#treciasc3" ).attr('d', data[2].cords).css("fill", "#ff6666");
            }else {
              $( "#treciasc3" ).attr('d', data[2].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("treciasc3").addEventListener("mouseout", function(){
              document.getElementById("treciasc3").style.fill ="transparent"
            })     
        
                  },
                  error: function(){
                    console.log(error)
                  },
     });

   $.ajax({
                  url: '/treciasc',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    // console.log(this.url);
                    var laisvi = 0;
                    var rezervuota = 0;
                    var parduota = 0;
                    for(var i = 0 ; i < 3; i++){
                  if (data[i].statusas == 0) {
                    laisvi++;
                    treciolaisvi++;
                  } else if(data[i].statusas == 1){
                     parduota++;
                     trecioparduoti++;
                  }else{
                    rezervuota++;
                    treciorezervuoti++;
                  }
                     
                 }
                  var trecio3alaisvu = document.getElementById('trecio3alaisvu');
                  if (trecio3alaisvu) {
                    trecio3alaisvu.innerHTML = 'Laisvu: ' + laisvi;
                  }
                  
                  var trecio3arezervuotu = document.getElementById('trecio3arezervuotu');
                  if (trecio3arezervuotu) {
                    trecio3arezervuotu.innerHTML = 'Rezervuotu: ' + rezervuota;
                  }
                  
                  var trecio3aparduotu = document.getElementById('trecio3aparduotu');
                  if(trecio3aparduotu) {
                    trecio3aparduotu.innerHTML = 'Parduotu: ' + parduota;
                  }
                  

                  var treciox =document.getElementById('treciolaisvi');
                  if(treciox){
                    treciox.innerHTML = 'Laisvu: ' + treciolaisvi;
                  }

                  var trecioy =document.getElementById('treciorezervuoti');
                  if(trecioy){
                    trecioy.innerHTML = 'Rezervuotu: ' + treciorezervuoti;
                  }

                  var trecioz =document.getElementById('trecioparduoti');
                  if(trecioz){
                    trecioz.innerHTML = 'Parduotu: ' + trecioparduoti;
                  }
                  
                  
                  },




                  error: function(){
                    console.log(error)
                  },
     });


   //ketvirtas namas


      $.ajax({
                  url: '/ketvirtasa',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    // console.log(this.url);
                    // console.log(data);
                      if (data[0].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#ketvirtasa1" ).attr('d', data[0].cords).css("fill", "transparent");
        }else if(data[0].statusas == 1 ){
            $( "#ketvirtasa1" ).attr('d', data[0].cords).css("fill", "transparent");
            }else {
              $( "#ketvirtasa1" ).attr('d', data[0].cords).css("fill", "transparent");
           }

        if (data[1].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#ketvirtasa2" ).attr('d', data[1].cords).css("fill", "transparent");
        }else if(data[1].statusas == 1 ){
            $( "#ketvirtasa2" ).attr('d', data[1].cords).css("fill", "transparent");
            }else {
              $( "#ketvirtasa2" ).attr('d', data[1].cords).css("fill", "transparent");
           }

           if (data[2].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#ketvirtasa3" ).attr('d', data[2].cords).css("fill", "transparent");
        }else if(data[2].statusas == 1 ){
            $( "#ketvirtasa3" ).attr('d', data[2].cords).css("fill", "transparent");
            }else {
              $( "#ketvirtasa3" ).attr('d', data[2].cords).css("fill", "transparent");
           }

           document.getElementById("ketvirtasa1").addEventListener("mouseover", function(){
                          if (data[0].statusas == 0) {
          $( "#ketvirtasa1" ).attr('d', data[0].cords).css("fill", "#ccffcc");
        }else if(data[0].statusas == 1 ){
            $( "#ketvirtasa1" ).attr('d', data[0].cords).css("fill", "#ff6666");
            }else {
              $( "#ketvirtasa1" ).attr('d', data[0].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("ketvirtasa1").addEventListener("mouseout", function(){
              document.getElementById("ketvirtasa1").style.fill ="transparent"
            })

              document.getElementById("ketvirtasa2").addEventListener("mouseover", function(){
                          if (data[1].statusas == 0) {
          $( "#ketvirtasa2" ).attr('d', data[1].cords).css("fill", "#ccffcc");
        }else if(data[1].statusas == 1 ){
            $( "#ketvirtasa2" ).attr('d', data[1].cords).css("fill", "#ff6666");
            }else {
              $( "#ketvirtasa2" ).attr('d', data[1].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("ketvirtasa2").addEventListener("mouseout", function(){
              document.getElementById("ketvirtasa2").style.fill ="transparent"
            })

         document.getElementById("ketvirtasa3").addEventListener("mouseover", function(){
                          if (data[2].statusas == 0) {
          $( "#ketvirtasa3" ).attr('d', data[2].cords).css("fill", "#ccffcc");
        }else if(data[2].statusas == 1 ){
            $( "#ketvirtasa3" ).attr('d', data[2].cords).css("fill", "#ff6666");
            }else {
              $( "#ketvirtasa3" ).attr('d', data[2].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("ketvirtasa3").addEventListener("mouseout", function(){
              document.getElementById("ketvirtasa3").style.fill ="transparent"
            })  
        
                  },
                  error: function(){
                    console.log(error)
                  },
     });

   $.ajax({
                  url: '/ketvirtasa',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    // console.log(this.url);
                    var laisvi = 0;
                    var rezervuota = 0;
                    var parduota = 0;
                    for(var i = 0 ; i < 3; i++){
                  if (data[i].statusas == 0) {
                    laisvi++;
                    ketvirtolaisvi++;
                  } else if(data[i].statusas == 1){
                     parduota++;
                     ketvirtoparduoti++;
                  }else{
                    rezervuota++;
                    ketvirtorezervuoti++;
                  }
                     
                 }
                  var ketvirto1alaisvu = document.getElementById('ketvirto1alaisvu');
                  if (ketvirto1alaisvu) {
                    ketvirto1alaisvu.innerHTML = 'Laisvu: ' + laisvi;
                  }

                  
                  var ketvirto1arezervuotu = document.getElementById('ketvirto1arezervuotu');
                  if (ketvirto1arezervuotu) {
                    ketvirto1arezervuotu.innerHTML = 'Rezervuotu: ' + rezervuota;
                  }
                  
                  var ketvirto1aparduotu = document.getElementById('ketvirto1aparduotu');
                  if (ketvirto1aparduotu) {
                    ketvirto1aparduotu.innerHTML = 'Parduotu: ' + parduota;
                  }

                  var ketvirtox =document.getElementById('ketvirtolaisvi');
                  if(ketvirtox){
                    ketvirtox.innerHTML = 'Laisvu: ' + ketvirtolaisvi;
                  }

                  var ketvirtoy =document.getElementById('ketvirtorezervuoti');
                  if(ketvirtoy){
                    ketvirtoy.innerHTML = 'Rezervuotu: ' + ketvirtorezervuoti;
                  }

                  var ketvirtoz =document.getElementById('ketvirtoparduoti');
                  if(ketvirtoz){
                    ketvirtoz.innerHTML = 'Parduotu: ' + ketvirtoparduoti;
                  }

                  
                  },




                  error: function(){
                    console.log(error)
                  },
     });

   $.ajax({
                  url: '/ketvirtasb',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    // console.log(this.url);
                    // console.log(data);
                      if (data[0].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#ketvirtasb1" ).attr('d', data[0].cords).css("fill", "transparent");
        }else if(data[0].statusas == 1 ){
            $( "#ketvirtasb1" ).attr('d', data[0].cords).css("fill", "transparent");
            }else {
              $( "#ketvirtasb1" ).attr('d', data[0].cords).css("fill", "transparent");
           }

        if (data[1].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#ketvirtasb2" ).attr('d', data[1].cords).css("fill", "transparent");
        }else if(data[1].statusas == 1 ){
            $( "#ketvirtasb2" ).attr('d', data[1].cords).css("fill", "transparent");
            }else {
              $( "#ketvirtasb2" ).attr('d', data[1].cords).css("fill", "transparent");
           }

           if (data[2].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#ketvirtasb3" ).attr('d', data[2].cords).css("fill", "transparent");
        }else if(data[2].statusas == 1 ){
            $( "#ketvirtasb3" ).attr('d', data[2].cords).css("fill", "transparent");
            }else {
              $( "#ketvirtasb3" ).attr('d', data[2].cords).css("fill", "transparent");
           }

           document.getElementById("ketvirtasb1").addEventListener("mouseover", function(){
                          if (data[0].statusas == 0) {
          $( "#ketvirtasb1" ).attr('d', data[0].cords).css("fill", "#ccffcc");
        }else if(data[0].statusas == 1 ){
            $( "#ketvirtasb1" ).attr('d', data[0].cords).css("fill", "#ff6666");
            }else {
              $( "#ketvirtasb1" ).attr('d', data[0].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("ketvirtasb1").addEventListener("mouseout", function(){
              document.getElementById("ketvirtasb1").style.fill ="transparent"
            })

              document.getElementById("ketvirtasb2").addEventListener("mouseover", function(){
                          if (data[1].statusas == 0) {
          $( "#ketvirtasb2" ).attr('d', data[1].cords).css("fill", "#ccffcc");
        }else if(data[1].statusas == 1 ){
            $( "#ketvirtasb2" ).attr('d', data[1].cords).css("fill", "#ff6666");
            }else {
              $( "#ketvirtasb2" ).attr('d', data[1].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("ketvirtasb2").addEventListener("mouseout", function(){
              document.getElementById("ketvirtasb2").style.fill ="transparent"
            })

         document.getElementById("ketvirtasb3").addEventListener("mouseover", function(){
                          if (data[2].statusas == 0) {
          $( "#ketvirtasb3" ).attr('d', data[2].cords).css("fill", "#ccffcc");
        }else if(data[2].statusas == 1 ){
            $( "#ketvirtasb3" ).attr('d', data[2].cords).css("fill", "#ff6666");
            }else {
              $( "#ketvirtasb3" ).attr('d', data[2].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("ketvirtasb3").addEventListener("mouseout", function(){
              document.getElementById("ketvirtasb3").style.fill ="transparent"
            })  
        
                  },
                  error: function(){
                    console.log(error)
                  },
     });

   

   $.ajax({
                  url: '/ketvirtasb',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    // console.log(this.url);
                    var laisvi = 0;
                    var rezervuota = 0;
                    var parduota = 0;
                    for(var i = 0 ; i < 3; i++){
                  if (data[i].statusas == 0) {
                    laisvi++;
                    ketvirtolaisvi++;
                  } else if(data[i].statusas == 1){
                     parduota++;
                     ketvirtoparduoti++;
                  }else{
                    rezervuota++;
                    ketvirtorezervuoti++;
                  }
                     
                 }
                  var ketvirto2alaisvu = document.getElementById('ketvirto2alaisvu');
                  if (ketvirto2alaisvu){
                    ketvirto2alaisvu.innerHTML = 'Laisvu: ' + laisvi;
                  }                  
                  var ketvirto2arezervuotu = document.getElementById('ketvirto2arezervuotu');
                  if (ketvirto2arezervuotu) {
                    ketvirto2arezervuotu.innerHTML = 'Rezervuotu: ' + rezervuota;
                  }
                  
                  var ketvirto2aparduotu = document.getElementById('ketvirto2aparduotu');
                  if (ketvirto2aparduotu) {
                    ketvirto2aparduotu.innerHTML = 'Parduotu: ' + parduota;
                  }

                  var ketvirtox =document.getElementById('ketvirtolaisvi');
                  if(ketvirtox){
                    ketvirtox.innerHTML = 'Laisvu: ' + ketvirtolaisvi;
                  }

                  var ketvirtoy =document.getElementById('ketvirtorezervuoti');
                  if(ketvirtoy){
                    ketvirtoy.innerHTML = 'Rezervuotu: ' + ketvirtorezervuoti;
                  }

                  var ketvirtoz =document.getElementById('ketvirtoparduoti');
                  if(ketvirtoz){
                    ketvirtoz.innerHTML = 'Parduotu: ' + ketvirtoparduoti;
                  }

                  
                  },




                  error: function(){
                    console.log(error)
                  },
     });

   $.ajax({
                  url: '/ketvirtasc',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    // console.log(this.url);
                    // console.log(data);
                      if (data[0].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#ketvirtasc1" ).attr('d', data[0].cords).css("fill", "transparent");
        }else if(data[0].statusas == 1 ){
            $( "#ketvirtasc1" ).attr('d', data[0].cords).css("fill", "transparent");
            }else {
              $( "#ketvirtasc1" ).attr('d', data[0].cords).css("fill", "transparent");
           }

        if (data[1].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#ketvirtasc2" ).attr('d', data[1].cords).css("fill", "transparent");
        }else if(data[1].statusas == 1 ){
            $( "#ketvirtasc2" ).attr('d', data[1].cords).css("fill", "transparent");
            }else {
              $( "#ketvirtasc2" ).attr('d', data[1].cords).css("fill", "transparent");
           }

           if (data[2].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#ketvirtasc3" ).attr('d', data[2].cords).css("fill", "transparent");
        }else if(data[2].statusas == 1 ){
            $( "#ketvirtasc3" ).attr('d', data[2].cords).css("fill", "transparent");
            }else {
              $( "#ketvirtasc3" ).attr('d', data[2].cords).css("fill", "transparent");
           }


            document.getElementById("ketvirtasc1").addEventListener("mouseover", function(){
                          if (data[0].statusas == 0) {
          $( "#ketvirtasc1" ).attr('d', data[0].cords).css("fill", "#ccffcc");
        }else if(data[0].statusas == 1 ){
            $( "#ketvirtasc1" ).attr('d', data[0].cords).css("fill", "#ff6666");
            }else {
              $( "#ketvirtasc1" ).attr('d', data[0].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("ketvirtasc1").addEventListener("mouseout", function(){
              document.getElementById("ketvirtasc1").style.fill ="transparent"
            })

              document.getElementById("ketvirtasc2").addEventListener("mouseover", function(){
                          if (data[1].statusas == 0) {
          $( "#ketvirtasc2" ).attr('d', data[1].cords).css("fill", "#ccffcc");
        }else if(data[1].statusas == 1 ){
            $( "#ketvirtasc2" ).attr('d', data[1].cords).css("fill", "#ff6666");
            }else {
              $( "#ketvirtasc2" ).attr('d', data[1].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("ketvirtasc2").addEventListener("mouseout", function(){
              document.getElementById("ketvirtasc2").style.fill ="transparent"
            })

         document.getElementById("ketvirtasc3").addEventListener("mouseover", function(){
                          if (data[2].statusas == 0) {
          $( "#ketvirtasc3" ).attr('d', data[2].cords).css("fill", "#ccffcc");
        }else if(data[2].statusas == 1 ){
            $( "#ketvirtasc3" ).attr('d', data[2].cords).css("fill", "#ff6666");
            }else {
              $( "#ketvirtasc3" ).attr('d', data[2].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("ketvirtasc3").addEventListener("mouseout", function(){
              document.getElementById("ketvirtasc3").style.fill ="transparent"
            })  
        
                  },
                  error: function(){
                    console.log(error)
                  },
     });

   $.ajax({
                  url: '/ketvirtasc',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    // console.log(this.url);
                    var laisvi = 0;
                    var rezervuota = 0;
                    var parduota = 0;
                    for(var i = 0 ; i < 3; i++){
                  if (data[i].statusas == 0) {
                    laisvi++;
                    ketvirtolaisvi++;
                  } else if(data[i].statusas == 1){
                     parduota++;
                     ketvirtoparduoti++;
                  }else{
                    rezervuota++;
                    ketvirtorezervuoti++;
                  }
                     
                 }
                  var ketvirto3alaisvu = document.getElementById('ketvirto3alaisvu');
                  if (ketvirto3alaisvu) {
                    ketvirto3alaisvu.innerHTML = 'Laisvu: ' + laisvi;
                  }
                  
                  var ketvirto3arezervuotu = document.getElementById('ketvirto3arezervuotu');
                  if (ketvirto3arezervuotu) {
                    ketvirto3arezervuotu.innerHTML = 'Rezervuotu: ' + rezervuota;
                  }
                  
                  var ketvirto3aparduotu = document.getElementById('ketvirto3aparduotu');
                  if(ketvirto3aparduotu) {
                    ketvirto3aparduotu.innerHTML = 'Parduotu: ' + parduota;
                  }
                  

                  var ketvirtox =document.getElementById('ketvirtolaisvi');
                  if(ketvirtox){
                    ketvirtox.innerHTML = 'Laisvu: ' + ketvirtolaisvi;
                  }

                  var ketvirtoy =document.getElementById('ketvirtorezervuoti');
                  if(ketvirtoy){
                    ketvirtoy.innerHTML = 'Rezervuotu: ' + ketvirtorezervuoti;
                  }

                  var ketvirtoz =document.getElementById('ketvirtoparduoti');
                  if(ketvirtoz){
                    ketvirtoz.innerHTML = 'Parduotu: ' + ketvirtoparduoti;
                  }
                  
                  
                  },




                  error: function(){
                    console.log(error)
                  },
     });


   //kotedzai
   




   
   $.ajax({
                  url: '/kotedzasjson',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    // console.log(data);
                    if (data[0].statusas == 0) {
          $( "#kotedzas1" ).attr('d', data[0].cords).css("fill", "transparent");
        }else if(data[0].statusas == 1 ){
            $( "#kotedzas1" ).attr('d', data[0].cords).css("fill", "transparent");
            }else {
              $( "#kotedzas1" ).attr('d', data[0].cords).css("fill", "transparent");
           }

            if (data[1].statusas == 0) {
          $( "#kotedzas2" ).attr('d', data[1].cords).css("fill", "transparent");
        }else if(data[1].statusas == 1 ){
            $( "#kotedzas2" ).attr('d', data[1].cords).css("fill", "transparent");
            }else {
              $( "#kotedzas2" ).attr('d', data[1].cords).css("fill", "transparent");
           }

            if (data[2].statusas == 0) {
          $( "#kotedzas3" ).attr('d', data[2].cords).css("fill", "transparent");
        }else if(data[2].statusas == 1 ){
            $( "#kotedzas3" ).attr('d', data[2].cords).css("fill", "transparent");
            }else {
              $( "#kotedzas3" ).attr('d', data[2].cords).css("fill", "transparent");
           }

            if (data[3].statusas == 0) {
          $( "#kotedzas4" ).attr('d', data[3].cords).css("fill", "transparent");
        }else if(data[3].statusas == 1 ){
            $( "#kotedzas4" ).attr('d', data[3].cords).css("fill", "transparent");
            }else {
              $( "#kotedzas4" ).attr('d', data[3].cords).css("fill", "transparent");
           }

            if (data[4].statusas == 0) {
          $( "#kotedzas5" ).attr('d', data[4].cords).css("fill", "transparent");
        }else if(data[4].statusas == 1 ){
            $( "#kotedzas5" ).attr('d', data[4].cords).css("fill", "transparent");
            }else {
              $( "#kotedzas5" ).attr('d', data[4].cords).css("fill", "transparent");
           }

            if (data[5].statusas == 0) {
          $( "#kotedzas6" ).attr('d', data[5].cords).css("fill", "transparent");
        }else if(data[5].statusas == 1 ){
            $( "#kotedzas6" ).attr('d', data[5].cords).css("fill", "transparent");
            }else {
              $( "#kotedzas6" ).attr('d', data[5].cords).css("fill", "transparent");
           }


                    // if(data[0].statusas == 0);
                        document.getElementById("kotedzas1").addEventListener("mouseover", function(){
                          if (data[0].statusas == 0) {
          $( "#kotedzas1" ).attr('d', data[0].cords).css("fill", "#ccffcc");
        }else if(data[0].statusas == 1 ){
            $( "#kotedzas1" ).attr('d', data[0].cords).css("fill", "#ff6666");
            }else {
              $( "#kotedzas1" ).attr('d', data[0].cords).css("fill", "#f4f442");
           }

                          })
              document.getElementById("kotedzas1").addEventListener("mouseout", function(){
              document.getElementById("kotedzas1").style.fill ="transparent"
            })

        document.getElementById("kotedzas2").addEventListener("mouseover", function(){
          if (data[1].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#kotedzas2" ).attr('d', data[1].cords).css("fill", "#ccffcc");
        }else if(data[1].statusas == 1 ){
            $( "#kotedzas2" ).attr('d', data[1].cords).css("fill", "#ff6666");
            }else {
              $( "#kotedzas2" ).attr('d', data[1].cords).css("fill", "#f4f442");
           }
        })
         document.getElementById("kotedzas2").addEventListener("mouseout", function(){
  document.getElementById("kotedzas2").style.fill ="transparent"
})
         // console.log(123);
        
           document.getElementById("kotedzas3").addEventListener("mouseover", function(){
            if (data[2].statusas == 0) {
                        // console.log(data[2].statusas);
          $( "#kotedzas3" ).attr('d', data[2].cords).css("fill", "#ccffcc");
        }else if(data[2].statusas == 1 ){
            $( "#kotedzas3" ).attr('d', data[2].cords).css("fill", "#ff6666");
            }else {
              $( "#kotedzas3" ).attr('d', data[2].cords).css("fill", "#f4f442");
           }
           })

            document.getElementById("kotedzas3").addEventListener("mouseout", function(){
  document.getElementById("kotedzas3").style.fill ="transparent"
})
           
        document.getElementById("kotedzas4").addEventListener("mouseover", function(){
          if (data[3].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#kotedzas4" ).attr('d', data[3].cords).css("fill", "#ccffcc");
        }else if(data[3].statusas == 1 ){
            $( "#kotedzas4" ).attr('d', data[3].cords).css("fill", "#ff6666");
            }else {
              $( "#kotedzas4" ).attr('d', data[3].cords).css("fill", "#f4f442");
           }
        })

         document.getElementById("kotedzas4").addEventListener("mouseout", function(){
  document.getElementById("kotedzas4").style.fill ="transparent"
})
           
      document.getElementById("kotedzas5").addEventListener("mouseover", function(){
           if (data[4].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#kotedzas5" ).attr('d', data[4].cords).css("fill", "#ccffcc");
        }else if(data[4].statusas == 1 ){
            $( "#kotedzas5" ).attr('d', data[4].cords).css("fill", "#ff6666");
            }else {
              $( "#kotedzas5" ).attr('d', data[4].cords).css("fill", "#f4f442");
           }

           })

      document.getElementById("kotedzas5").addEventListener("mouseout", function(){
  document.getElementById("kotedzas5").style.fill ="transparent"
})

         document.getElementById("kotedzas6").addEventListener("mouseover", function(){
           if (data[5].statusas == 0) {
                        // console.log(data[0].statusas);
          $( "#kotedzas6" ).attr('d', data[5].cords).css("fill", "#ccffcc");
        }else if(data[5].statusas == 1 ){
            $( "#kotedzas6" ).attr('d', data[5].cords).css("fill", "#ff6666");
            }else {
              $( "#kotedzas6" ).attr('d', data[5].cords).css("fill", "#f4f442");
           }
           })

          document.getElementById("kotedzas6").addEventListener("mouseout", function(){
  document.getElementById("kotedzas6").style.fill ="transparent"
})
        
                  },
                  error: function(){
                    console.log(error)
                  },
     });

   $.ajax({
                  url: '/kotedzasjson',
                  method: 'GET',         
                  data: {
                    
                  },
                  success: function(data){
                    for(var i = 0 ; i < 6; i++){
                  if (data[i].statusas == 0) {
                    kotedzolaisvi++;
                  } else if(data[i].statusas == 1){
                     kotedzoparduoti++;
                  }else{
                    kotedzorezervuoti++;
                  }
                     
                 }
                  

                  var kotedzox =document.getElementById('kotedzolaisvi');
                  if(kotedzox){
                    kotedzox.innerHTML = 'Laisvu: ' + kotedzolaisvi;
                  }

                  var kotedzoy =document.getElementById('kotedzorezervuoti');
                  if(kotedzoy){
                    kotedzoy.innerHTML = 'Rezervuotu: ' + kotedzorezervuoti;
                  }

                  var kotedzoz =document.getElementById('kotedzoparduoti');
                  if(kotedzoz){
                    kotedzoz.innerHTML = 'Parduotu: ' + kotedzoparduoti;
                  }
                  
                  
                  },




                  error: function(){
                    console.log(error)
                  },
     });

 };






//svg

var pirmasd = document.getElementById("pirmasd");
 if(pirmasd !== null && pirmasd !== undefined) {
 	document.getElementById("pirmasd").addEventListener("mouseover", function(){
 		// console.log('uzsidejo');
document.getElementById("pirmasd").style.fill="#1a2b87"
})
document.getElementById("pirmasd").addEventListener("mouseout", function(){
  document.getElementById("pirmasd").style.fill ="transparent"
})
 }

var antrasd = document.getElementById("antrasd");
 if(antrasd !== null && antrasd !== undefined) {
    document.getElementById("antrasd").addEventListener("mouseover", function(){
document.getElementById("antrasd").style.fill="#1a2b87"
})
document.getElementById("antrasd").addEventListener("mouseout", function(){
  document.getElementById("antrasd").style.fill ="transparent"
})
 }
var treciasd = document.getElementById("treciasd");
 if(treciasd !== null && treciasd !== undefined) {
 	document.getElementById("treciasd").addEventListener("mouseover", function(){
document.getElementById("treciasd").style.fill="#1a2b87"
})
document.getElementById("treciasd").addEventListener("mouseout", function(){
  document.getElementById("treciasd").style.fill ="transparent"
})
 }

 var ketvirtasd = document.getElementById("ketvirtasd");
 if(ketvirtasd !== null && ketvirtasd !== undefined) {
 	document.getElementById("ketvirtasd").addEventListener("mouseover", function(){
document.getElementById("ketvirtasd").style.fill="#1a2b87"
})
document.getElementById("ketvirtasd").addEventListener("mouseout", function(){
  document.getElementById("ketvirtasd").style.fill ="transparent"
})
 }

 var kotedzas = document.getElementById("kotedzas");
 if(kotedzas !== null && kotedzas !== undefined) {
 	document.getElementById("kotedzas").addEventListener("mouseover", function(){
document.getElementById("kotedzas").style.fill="#1a2b87"
})
document.getElementById("kotedzas").addEventListener("mouseout", function(){
  document.getElementById("kotedzas").style.fill ="transparent"
})
 }

var pirmo1a = document.getElementById("pirmo1a");
 if(pirmo1a !== null && pirmo1a !== undefined){
 	document.getElementById("pirmo1a").addEventListener("mouseover", function(){
document.getElementById("pirmo1a").style.fill="#1a2b87"
})
document.getElementById("pirmo1a").addEventListener("mouseout", function(){
  document.getElementById("pirmo1a").style.fill ="transparent"
})
 }

 var pirmo2a = document.getElementById("pirmo2a");
 if(pirmo2a !== null && pirmo2a !== undefined){
 	document.getElementById("pirmo2a").addEventListener("mouseover", function(){
document.getElementById("pirmo2a").style.fill="#1a2b87"
})
document.getElementById("pirmo2a").addEventListener("mouseout", function(){
  document.getElementById("pirmo2a").style.fill ="transparent"
})
 }

 var pirmo3a = document.getElementById("pirmo3a");
 if(pirmo3a !== null && pirmo3a !== undefined){
 	document.getElementById("pirmo3a").addEventListener("mouseover", function(){
document.getElementById("pirmo3a").style.fill="#1a2b87"
})
document.getElementById("pirmo3a").addEventListener("mouseout", function(){
  document.getElementById("pirmo3a").style.fill ="transparent"
})
 }

 var antro1a = document.getElementById("antro1a");
 if(antro1a !== null && antro1a !== undefined){
 	document.getElementById("antro1a").addEventListener("mouseover", function(){
document.getElementById("antro1a").style.fill="#1a2b87"
})
document.getElementById("antro1a").addEventListener("mouseout", function(){
  document.getElementById("antro1a").style.fill ="transparent"
})
 }

 var antro2a = document.getElementById("antro2a");
 if(antro2a !== null && antro2a !== undefined){
 	document.getElementById("antro2a").addEventListener("mouseover", function(){
document.getElementById("antro2a").style.fill="#1a2b87"
})
document.getElementById("antro2a").addEventListener("mouseout", function(){
  document.getElementById("antro2a").style.fill ="transparent"
})
 }

 var antro3a = document.getElementById("antro3a");
 if(antro3a !== null && antro3a !== undefined){
 	document.getElementById("antro3a").addEventListener("mouseover", function(){
document.getElementById("antro3a").style.fill="#1a2b87"
})
document.getElementById("antro3a").addEventListener("mouseout", function(){
  document.getElementById("antro3a").style.fill ="transparent"
})
 }

  var trecio1a = document.getElementById("trecio1a");
 if(trecio1a !== null && trecio1a !== undefined){
 	document.getElementById("trecio1a").addEventListener("mouseover", function(){
document.getElementById("trecio1a").style.fill="#1a2b87"
})
document.getElementById("trecio1a").addEventListener("mouseout", function(){
  document.getElementById("trecio1a").style.fill ="transparent"
})
 }

 var trecio2a = document.getElementById("trecio2a");
 if(trecio2a !== null && trecio2a !== undefined){
 	document.getElementById("trecio2a").addEventListener("mouseover", function(){
document.getElementById("trecio2a").style.fill="#1a2b87"
})
document.getElementById("trecio2a").addEventListener("mouseout", function(){
  document.getElementById("trecio2a").style.fill ="transparent"
})
 }

 var trecio3a = document.getElementById("trecio3a");
 if(trecio3a !== null && trecio3a !== undefined){
 	document.getElementById("trecio3a").addEventListener("mouseover", function(){
document.getElementById("trecio3a").style.fill="#1a2b87"
})
document.getElementById("trecio3a").addEventListener("mouseout", function(){
  document.getElementById("trecio3a").style.fill ="transparent"
})
 }

  var ketvirto1a = document.getElementById("ketvirto1a");
 if(ketvirto1a !== null && ketvirto1a !== undefined){
 	document.getElementById("ketvirto1a").addEventListener("mouseover", function(){
document.getElementById("ketvirto1a").style.fill="#1a2b87"
})
document.getElementById("ketvirto1a").addEventListener("mouseout", function(){
  document.getElementById("ketvirto1a").style.fill ="transparent"
})
 }

  var ketvirto2a = document.getElementById("ketvirto2a");
 if(ketvirto2a !== null && ketvirto2a !== undefined){
 	document.getElementById("ketvirto2a").addEventListener("mouseover", function(){
document.getElementById("ketvirto2a").style.fill="#1a2b87"
})
document.getElementById("ketvirto2a").addEventListener("mouseout", function(){
  document.getElementById("ketvirto2a").style.fill ="transparent"
})
 }

  var ketvirto3a = document.getElementById("ketvirto3a");
 if(ketvirto3a !== null && ketvirto3a !== undefined){
 	document.getElementById("ketvirto3a").addEventListener("mouseover", function(){
document.getElementById("ketvirto3a").style.fill="#1a2b87"
})
document.getElementById("ketvirto3a").addEventListener("mouseout", function(){
  document.getElementById("ketvirto3a").style.fill ="transparent"
})
 }



//tooltip

var pirmasd = document.getElementById("pirmasd");
 if(pirmasd !== null && pirmasd !== undefined){
	document.getElementById("pirmasd").addEventListener("mouseover", function(){
	document.getElementById("house1").style.display="block"
	})
	document.getElementById("pirmasd").addEventListener("mouseout", function(){
	  document.getElementById("house1").style.display ="none"
	})
 }

var antrasd = document.getElementById("antrasd");
 if(antrasd !== null && antrasd !== undefined){
    document.getElementById("antrasd").addEventListener("mouseover", function(){
	document.getElementById("house2").style.display="block"
	})
	document.getElementById("antrasd").addEventListener("mouseout", function(){
	  document.getElementById("house2").style.display ="none"
	})
 }

var treciasd = document.getElementById("treciasd");
if(treciasd !== null && treciasd !== undefined){
	document.getElementById("treciasd").addEventListener("mouseover", function(){
	document.getElementById("house3").style.display="block"
	})
	document.getElementById("treciasd").addEventListener("mouseout", function(){
	  document.getElementById("house3").style.display ="none"
	})
 } 



var ketvirtasd = document.getElementById("ketvirtasd");
if(ketvirtasd !== null && ketvirtasd !== undefined){
	document.getElementById("ketvirtasd").addEventListener("mouseover", function(){
	document.getElementById("house4").style.display="block"
	})
	document.getElementById("ketvirtasd").addEventListener("mouseout", function(){
	  document.getElementById("house4").style.display ="none"
	})
 }


var kotedzas = document.getElementById("kotedzas");
if(kotedzas !== null && kotedzas !== undefined){
	document.getElementById("kotedzas").addEventListener("mouseover", function(){
	document.getElementById("house5").style.display="block"
	})
	document.getElementById("kotedzas").addEventListener("mouseout", function(){
	  document.getElementById("house5").style.display ="none"
	})
 }


var pirmo1a = document.getElementById("pirmo1a");
if(pirmo1a !== null && pirmo1a !== undefined){
	document.getElementById("pirmo1a").addEventListener("mouseover", function(){
	document.getElementById("pirmo1").style.display="block"
	})
	document.getElementById("pirmo1a").addEventListener("mouseout", function(){
	  document.getElementById("pirmo1").style.display ="none"
	})
 }



var pirmo2a = document.getElementById("pirmo2a");
if(pirmo2a !== null && pirmo2a !== undefined){
	document.getElementById("pirmo2a").addEventListener("mouseover", function(){
	document.getElementById("pirmo2").style.display="block"
	})
	document.getElementById("pirmo2a").addEventListener("mouseout", function(){
	  document.getElementById("pirmo2").style.display ="none"
	})
 }



var pirmo3a = document.getElementById("pirmo3a");
if(pirmo3a !== null && pirmo3a !== undefined){
	document.getElementById("pirmo3a").addEventListener("mouseover", function(){
	document.getElementById("pirmo3").style.display="block"
	})
	document.getElementById("pirmo3a").addEventListener("mouseout", function(){
	  document.getElementById("pirmo3").style.display ="none"
	})
 }

var antro1a = document.getElementById("antro1a");
if(antro1a !== null && antro1a !== undefined){
  document.getElementById("antro1a").addEventListener("mouseover", function(){
  document.getElementById("antro1").style.display="block"
  })
  document.getElementById("antro1a").addEventListener("mouseout", function(){
    document.getElementById("antro1").style.display ="none"
  })
 }



var antro2a = document.getElementById("antro2a");
if(antro2a !== null && antro2a !== undefined){
  document.getElementById("antro2a").addEventListener("mouseover", function(){
  document.getElementById("antro2").style.display="block"
  })
  document.getElementById("antro2a").addEventListener("mouseout", function(){
    document.getElementById("antro2").style.display ="none"
  })
 }



var antro3a = document.getElementById("antro3a");
if(antro3a !== null && antro3a !== undefined){
  document.getElementById("antro3a").addEventListener("mouseover", function(){
  document.getElementById("antro3").style.display="block"
  })
  document.getElementById("antro3a").addEventListener("mouseout", function(){
    document.getElementById("antro3").style.display ="none"
  })
 }

 var trecio1a = document.getElementById("trecio1a");
if(trecio1a !== null && trecio1a !== undefined){
  document.getElementById("trecio1a").addEventListener("mouseover", function(){
  document.getElementById("trecio1").style.display="block"
  })
  document.getElementById("trecio1a").addEventListener("mouseout", function(){
    document.getElementById("trecio1").style.display ="none"
  })
 }



var trecio2a = document.getElementById("trecio2a");
if(trecio2a !== null && trecio2a !== undefined){
  document.getElementById("trecio2a").addEventListener("mouseover", function(){
  document.getElementById("trecio2").style.display="block"
  })
  document.getElementById("trecio2a").addEventListener("mouseout", function(){
    document.getElementById("trecio2").style.display ="none"
  })
 }



var trecio3a = document.getElementById("trecio3a");
if(trecio3a !== null && trecio3a !== undefined){
  document.getElementById("trecio3a").addEventListener("mouseover", function(){
  document.getElementById("trecio3").style.display="block"
  })
  document.getElementById("trecio3a").addEventListener("mouseout", function(){
    document.getElementById("trecio3").style.display ="none"
  })
 }

  var ketvirto1a = document.getElementById("ketvirto1a");
if(ketvirto1a !== null && ketvirto1a !== undefined){
  document.getElementById("ketvirto1a").addEventListener("mouseover", function(){
  document.getElementById("ketvirto1").style.display="block"
  })
  document.getElementById("ketvirto1a").addEventListener("mouseout", function(){
    document.getElementById("ketvirto1").style.display ="none"
  })
 }



var ketvirto2a = document.getElementById("ketvirto2a");
if(ketvirto2a !== null && ketvirto2a !== undefined){
  document.getElementById("ketvirto2a").addEventListener("mouseover", function(){
  document.getElementById("ketvirto2").style.display="block"
  })
  document.getElementById("ketvirto2a").addEventListener("mouseout", function(){
    document.getElementById("ketvirto2").style.display ="none"
  })
 }



var ketvirto3a = document.getElementById("ketvirto3a");
if(ketvirto3a !== null && ketvirto3a !== undefined){
  document.getElementById("ketvirto3a").addEventListener("mouseover", function(){
  document.getElementById("ketvirto3").style.display="block"
  })
  document.getElementById("ketvirto3a").addEventListener("mouseout", function(){
    document.getElementById("ketvirto3").style.display ="none"
  })
 }

 //stogelio img vir navigacijos

 var headerapieprojekta = document.getElementById("headerapieprojekta");
if(headerapieprojekta !== null && headerapieprojekta !== undefined){
  document.getElementById("headerapieprojekta").addEventListener("mouseover", function(){
  document.getElementById("apiestogelis").style.display="block"
  })
  document.getElementById("headerapieprojekta").addEventListener("mouseout", function(){
    document.getElementById("apiestogelis").style.display ="none"
  })
 }

  var headerbutai = document.getElementById("headerbutai");
if(headerbutai !== null && headerbutai !== undefined){
  document.getElementById("headerbutai").addEventListener("mouseover", function(){
  document.getElementById("butaistogelis").style.display="block"
  })
  document.getElementById("headerbutai").addEventListener("mouseout", function(){
    document.getElementById("butaistogelis").style.display ="none"
  })
 }

   var headerkotedzai = document.getElementById("headerkotedzai");
if(headerkotedzai !== null && headerkotedzai !== undefined){
  document.getElementById("headerkotedzai").addEventListener("mouseover", function(){
  document.getElementById("kotedzaistogelis").style.display="block"
  })
  document.getElementById("headerkotedzai").addEventListener("mouseout", function(){
    document.getElementById("kotedzaistogelis").style.display ="none"
  })
 }

    var headervieta = document.getElementById("headervieta");
if(headervieta !== null && headervieta !== undefined){
  document.getElementById("headervieta").addEventListener("mouseover", function(){
  document.getElementById("vietastogelis").style.display="block"
  })
  document.getElementById("headervieta").addEventListener("mouseout", function(){
    document.getElementById("vietastogelis").style.display ="none"
  })
 }

     var headerkontaktai = document.getElementById("headerkontaktai");
if(headerkontaktai !== null && headerkontaktai !== undefined){
  document.getElementById("headerkontaktai").addEventListener("mouseover", function(){
  document.getElementById("kontaktaistogelis").style.display="block"
  })
  document.getElementById("headerkontaktai").addEventListener("mouseout", function(){
    document.getElementById("kontaktaistogelis").style.display ="none"
  })
 }

 var kotedzas1 = document.getElementById("kotedzas1");
 if(kotedzas1 !== null && kotedzas1 !== undefined){
  document.getElementById("kotedzas1").addEventListener("mouseover", function(){
  document.getElementById("pirmaskotedzas").style.display="block"
  })
  document.getElementById("kotedzas1").addEventListener("mouseout", function(){
    document.getElementById("pirmaskotedzas").style.display ="none"
  })
 }

 var kotedzas2 = document.getElementById("kotedzas2");
 if(kotedzas2 !== null && kotedzas2 !== undefined){
  document.getElementById("kotedzas2").addEventListener("mouseover", function(){
  document.getElementById("antraskotedzas").style.display="block"
  })
  document.getElementById("kotedzas2").addEventListener("mouseout", function(){
    document.getElementById("antraskotedzas").style.display ="none"
  })
 }

  var kotedzas3 = document.getElementById("kotedzas3");
 if(kotedzas3 !== null && kotedzas3 !== undefined){
  document.getElementById("kotedzas3").addEventListener("mouseover", function(){
  document.getElementById("treciaskotedzas").style.display="block"
  })
  document.getElementById("kotedzas3").addEventListener("mouseout", function(){
    document.getElementById("treciaskotedzas").style.display ="none"
  })
 }

  var kotedzas4 = document.getElementById("kotedzas4");
 if(kotedzas4 !== null && kotedzas4 !== undefined){
  document.getElementById("kotedzas4").addEventListener("mouseover", function(){
  document.getElementById("ketvirtaskotedzas").style.display="block"
  })
  document.getElementById("kotedzas4").addEventListener("mouseout", function(){
    document.getElementById("ketvirtaskotedzas").style.display ="none"
  })
 }

   var kotedzas5 = document.getElementById("kotedzas5");
 if(kotedzas5 !== null && kotedzas5 !== undefined){
  document.getElementById("kotedzas5").addEventListener("mouseover", function(){
  document.getElementById("penktaskotedzas").style.display="block"
  })
  document.getElementById("kotedzas5").addEventListener("mouseout", function(){
    document.getElementById("penktaskotedzas").style.display ="none"
  })
 }

    var kotedzas6 = document.getElementById("kotedzas6");
 if(kotedzas6 !== null && kotedzas6 !== undefined){
  document.getElementById("kotedzas6").addEventListener("mouseover", function(){
  document.getElementById("sestaskotedzas").style.display="block"
  })
  document.getElementById("kotedzas6").addEventListener("mouseout", function(){
    document.getElementById("sestaskotedzas").style.display ="none"
  })
 }

     var pirmasa1 = document.getElementById("pirmasa1");
 if(pirmasa1 !== null && pirmasa1 !== undefined){
  document.getElementById("pirmasa1").addEventListener("mouseover", function(){
  document.getElementById("pa1").style.display="block"
  })
  document.getElementById("pirmasa1").addEventListener("mouseout", function(){
    document.getElementById("pa1").style.display ="none"
  })
 }

      var pirmasa2 = document.getElementById("pirmasa2");
 if(pirmasa2 !== null && pirmasa2 !== undefined){
  document.getElementById("pirmasa2").addEventListener("mouseover", function(){
  document.getElementById("pa2").style.display="block"
  })
  document.getElementById("pirmasa2").addEventListener("mouseout", function(){
    document.getElementById("pa2").style.display ="none"
  })
 }

       var pirmasa3 = document.getElementById("pirmasa3");
 if(pirmasa3 !== null && pirmasa3 !== undefined){
  document.getElementById("pirmasa3").addEventListener("mouseover", function(){
  document.getElementById("pa3").style.display="block"
  })
  document.getElementById("pirmasa3").addEventListener("mouseout", function(){
    document.getElementById("pa3").style.display ="none"
  })
 }

        var pirmasb1 = document.getElementById("pirmasb1");
 if(pirmasb1 !== null && pirmasb1 !== undefined){
  document.getElementById("pirmasb1").addEventListener("mouseover", function(){
  document.getElementById("pb1").style.display="block"
  })
  document.getElementById("pirmasb1").addEventListener("mouseout", function(){
    document.getElementById("pb1").style.display ="none"
  })
 }

         var pirmasb2 = document.getElementById("pirmasb2");
 if(pirmasb2 !== null && pirmasb2 !== undefined){
  document.getElementById("pirmasb2").addEventListener("mouseover", function(){
  document.getElementById("pb2").style.display="block"
  })
  document.getElementById("pirmasb2").addEventListener("mouseout", function(){
    document.getElementById("pb2").style.display ="none"
  })
 }

         var pirmasb3 = document.getElementById("pirmasb3");
 if(pirmasb3 !== null && pirmasb3 !== undefined){
  document.getElementById("pirmasb3").addEventListener("mouseover", function(){
  document.getElementById("pb3").style.display="block"
  })
  document.getElementById("pirmasb3").addEventListener("mouseout", function(){
    document.getElementById("pb3").style.display ="none"
  })
 }

          var pirmasc1 = document.getElementById("pirmasc1");
 if(pirmasc1 !== null && pirmasc1 !== undefined){
  document.getElementById("pirmasc1").addEventListener("mouseover", function(){
  document.getElementById("pc1").style.display="block"
  })
  document.getElementById("pirmasc1").addEventListener("mouseout", function(){
    document.getElementById("pc1").style.display ="none"
  })
 }

           var pirmasc2 = document.getElementById("pirmasc2");
 if(pirmasc2 !== null && pirmasc2 !== undefined){
  document.getElementById("pirmasc2").addEventListener("mouseover", function(){
  document.getElementById("pc2").style.display="block"
  })
  document.getElementById("pirmasc2").addEventListener("mouseout", function(){
    document.getElementById("pc2").style.display ="none"
  })
 }

            var pirmasc3 = document.getElementById("pirmasc3");
 if(pirmasc3 !== null && pirmasc3 !== undefined){
  document.getElementById("pirmasc3").addEventListener("mouseover", function(){
  document.getElementById("pc3").style.display="block"
  })
  document.getElementById("pirmasc3").addEventListener("mouseout", function(){
    document.getElementById("pc3").style.display ="none"
  })
 }

             var antrasa1 = document.getElementById("antrasa1");
 if(antrasa1 !== null && antrasa1 !== undefined){
  document.getElementById("antrasa1").addEventListener("mouseover", function(){
  document.getElementById("aa1").style.display="block"
  })
  document.getElementById("antrasa1").addEventListener("mouseout", function(){
    document.getElementById("aa1").style.display ="none"
  })
 }

              var antrasa2 = document.getElementById("antrasa2");
 if(antrasa2 !== null && antrasa2 !== undefined){
  document.getElementById("antrasa2").addEventListener("mouseover", function(){
  document.getElementById("aa2").style.display="block"
  })
  document.getElementById("antrasa2").addEventListener("mouseout", function(){
    document.getElementById("aa2").style.display ="none"
  })
 }

               var antrasa3 = document.getElementById("antrasa3");
 if(antrasa3 !== null && antrasa3 !== undefined){
  document.getElementById("antrasa3").addEventListener("mouseover", function(){
  document.getElementById("aa3").style.display="block"
  })
  document.getElementById("antrasa3").addEventListener("mouseout", function(){
    document.getElementById("aa3").style.display ="none"
  })
 }

                var antrasb1 = document.getElementById("antrasb1");
 if(antrasb1 !== null && antrasb1 !== undefined){
  document.getElementById("antrasb1").addEventListener("mouseover", function(){
  document.getElementById("ab1").style.display="block"
  })
  document.getElementById("antrasb1").addEventListener("mouseout", function(){
    document.getElementById("ab1").style.display ="none"
  })
 }

                 var antrasb2 = document.getElementById("antrasb2");
 if(antrasb2 !== null && antrasb2 !== undefined){
  document.getElementById("antrasb2").addEventListener("mouseover", function(){
  document.getElementById("ab2").style.display="block"
  })
  document.getElementById("antrasb2").addEventListener("mouseout", function(){
    document.getElementById("ab2").style.display ="none"
  })
 }

                  var antrasb3 = document.getElementById("antrasb3");
 if(antrasb3 !== null && antrasb3 !== undefined){
  document.getElementById("antrasb3").addEventListener("mouseover", function(){
  document.getElementById("ab3").style.display="block"
  })
  document.getElementById("antrasb3").addEventListener("mouseout", function(){
    document.getElementById("ab3").style.display ="none"
  })
 }

                   var antrasc1 = document.getElementById("antrasc1");
 if(antrasc1 !== null && antrasc1 !== undefined){
  document.getElementById("antrasc1").addEventListener("mouseover", function(){
  document.getElementById("ac1").style.display="block"
  })
  document.getElementById("antrasc1").addEventListener("mouseout", function(){
    document.getElementById("ac1").style.display ="none"
  })
 }

                    var antrasc2 = document.getElementById("antrasc2");
 if(antrasc2 !== null && antrasc2 !== undefined){
  document.getElementById("antrasc2").addEventListener("mouseover", function(){
  document.getElementById("ac2").style.display="block"
  })
  document.getElementById("antrasc2").addEventListener("mouseout", function(){
    document.getElementById("ac2").style.display ="none"
  })
 }

                     var antrasc3 = document.getElementById("antrasc3");
 if(antrasc3 !== null && antrasc3 !== undefined){
  document.getElementById("antrasc3").addEventListener("mouseover", function(){
  document.getElementById("ac3").style.display="block"
  })
  document.getElementById("antrasc3").addEventListener("mouseout", function(){
    document.getElementById("ac3").style.display ="none"
  })
 }

                      var treciasa1 = document.getElementById("treciasa1");
 if(treciasa1 !== null && treciasa1 !== undefined){
  document.getElementById("treciasa1").addEventListener("mouseover", function(){
  document.getElementById("ta1").style.display="block"
  })
  document.getElementById("treciasa1").addEventListener("mouseout", function(){
    document.getElementById("ta1").style.display ="none"
  })
 }

                       var treciasa2 = document.getElementById("treciasa2");
 if(treciasa2 !== null && treciasa2 !== undefined){
  document.getElementById("treciasa2").addEventListener("mouseover", function(){
  document.getElementById("ta2").style.display="block"
  })
  document.getElementById("treciasa2").addEventListener("mouseout", function(){
    document.getElementById("ta2").style.display ="none"
  })
 }

                        var treciasa3 = document.getElementById("treciasa3");
 if(treciasa3 !== null && treciasa3 !== undefined){
  document.getElementById("treciasa3").addEventListener("mouseover", function(){
  document.getElementById("ta3").style.display="block"
  })
  document.getElementById("treciasa3").addEventListener("mouseout", function(){
    document.getElementById("ta3").style.display ="none"
  })
 }


                        var treciasb1 = document.getElementById("treciasb1");
 if(treciasb1 !== null && treciasb1 !== undefined){
  document.getElementById("treciasb1").addEventListener("mouseover", function(){
  document.getElementById("tb1").style.display="block"
  })
  document.getElementById("treciasb1").addEventListener("mouseout", function(){
    document.getElementById("tb1").style.display ="none"
  })
 }

                         var treciasb2 = document.getElementById("treciasb2");
 if(treciasb2 !== null && treciasb2 !== undefined){
  document.getElementById("treciasb2").addEventListener("mouseover", function(){
  document.getElementById("tb2").style.display="block"
  })
  document.getElementById("treciasb2").addEventListener("mouseout", function(){
    document.getElementById("tb2").style.display ="none"
  })
 }

                          var treciasb3 = document.getElementById("treciasb3");
 if(treciasb3 !== null && treciasb3 !== undefined){
  document.getElementById("treciasb3").addEventListener("mouseover", function(){
  document.getElementById("tb3").style.display="block"
  })
  document.getElementById("treciasb3").addEventListener("mouseout", function(){
    document.getElementById("tb3").style.display ="none"
  })
 }

                           var treciasc1 = document.getElementById("treciasc1");
 if(treciasc1 !== null && treciasc1 !== undefined){
  document.getElementById("treciasc1").addEventListener("mouseover", function(){
  document.getElementById("tc1").style.display="block"
  })
  document.getElementById("treciasc1").addEventListener("mouseout", function(){
    document.getElementById("tc1").style.display ="none"
  })
 }

                            var treciasc2 = document.getElementById("treciasc2");
 if(treciasc2 !== null && treciasc2 !== undefined){
  document.getElementById("treciasc2").addEventListener("mouseover", function(){
  document.getElementById("tc2").style.display="block"
  })
  document.getElementById("treciasc2").addEventListener("mouseout", function(){
    document.getElementById("tc2").style.display ="none"
  })
 }

                             var treciasc3 = document.getElementById("treciasc3");
 if(treciasc3 !== null && treciasc3 !== undefined){
  document.getElementById("treciasc3").addEventListener("mouseover", function(){
  document.getElementById("tc3").style.display="block"
  })
  document.getElementById("treciasc3").addEventListener("mouseout", function(){
    document.getElementById("tc3").style.display ="none"
  })
 }

                              var ketvirtasa1 = document.getElementById("ketvirtasa1");
 if(ketvirtasa1 !== null && ketvirtasa1 !== undefined){
  document.getElementById("ketvirtasa1").addEventListener("mouseover", function(){
  document.getElementById("ka1").style.display="block"
  })
  document.getElementById("ketvirtasa1").addEventListener("mouseout", function(){
    document.getElementById("ka1").style.display ="none"
  })
 }

                               var ketvirtasa2 = document.getElementById("ketvirtasa2");
 if(ketvirtasa2 !== null && ketvirtasa2 !== undefined){
  document.getElementById("ketvirtasa2").addEventListener("mouseover", function(){
  document.getElementById("ka2").style.display="block"
  })
  document.getElementById("ketvirtasa2").addEventListener("mouseout", function(){
    document.getElementById("ka2").style.display ="none"
  })
 }

                                var ketvirtasa3 = document.getElementById("ketvirtasa3");
 if(ketvirtasa3 !== null && ketvirtasa3 !== undefined){
  document.getElementById("ketvirtasa3").addEventListener("mouseover", function(){
  document.getElementById("ka3").style.display="block"
  })
  document.getElementById("ketvirtasa3").addEventListener("mouseout", function(){
    document.getElementById("ka3").style.display ="none"
  })
 }

                                 var ketvirtasb1 = document.getElementById("ketvirtasb1");
 if(ketvirtasb1 !== null && ketvirtasb1 !== undefined){
  document.getElementById("ketvirtasb1").addEventListener("mouseover", function(){
  document.getElementById("kb1").style.display="block"
  })
  document.getElementById("ketvirtasb1").addEventListener("mouseout", function(){
    document.getElementById("kb1").style.display ="none"
  })
 }

                                  var ketvirtasb2 = document.getElementById("ketvirtasb2");
 if(ketvirtasb2 !== null && ketvirtasb2 !== undefined){
  document.getElementById("ketvirtasb2").addEventListener("mouseover", function(){
  document.getElementById("kb2").style.display="block"
  })
  document.getElementById("ketvirtasb2").addEventListener("mouseout", function(){
    document.getElementById("kb2").style.display ="none"
  })
 }

                                   var ketvirtasb3 = document.getElementById("ketvirtasb3");
 if(ketvirtasb3 !== null && ketvirtasb3 !== undefined){
  document.getElementById("ketvirtasb3").addEventListener("mouseover", function(){
  document.getElementById("kb3").style.display="block"
  })
  document.getElementById("ketvirtasb3").addEventListener("mouseout", function(){
    document.getElementById("kb3").style.display ="none"
  })
 }

                                   var ketvirtasc1 = document.getElementById("ketvirtasc1");
 if(ketvirtasc1 !== null && ketvirtasc1 !== undefined){
  document.getElementById("ketvirtasc1").addEventListener("mouseover", function(){
  document.getElementById("kc1").style.display="block"
  })
  document.getElementById("ketvirtasc1").addEventListener("mouseout", function(){
    document.getElementById("kc1").style.display ="none"
  })
 }

                                    var ketvirtasc2 = document.getElementById("ketvirtasc2");
 if(ketvirtasc2 !== null && ketvirtasc2 !== undefined){
  document.getElementById("ketvirtasc2").addEventListener("mouseover", function(){
  document.getElementById("kc2").style.display="block"
  })
  document.getElementById("ketvirtasc2").addEventListener("mouseout", function(){
    document.getElementById("kc2").style.display ="none"
  })
 }

                                     var ketvirtasc3 = document.getElementById("ketvirtasc3");
 if(ketvirtasc3 !== null && ketvirtasc3 !== undefined){
  document.getElementById("ketvirtasc3").addEventListener("mouseover", function(){
  document.getElementById("kc3").style.display="block"
  })
  document.getElementById("ketvirtasc3").addEventListener("mouseout", function(){
    document.getElementById("kc3").style.display ="none"
  })
 }

$(document).on('mousemove', function(e){
    $('#house1').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#house2').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#house3').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#house4').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#house5').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#pirmo1').css({
       left:  e.pageX-45,
       top:   e.pageY-120
    });
});

$(document).on('mousemove', function(e){
    $('#pirmo2').css({
       left:  e.pageX-45,
       top:   e.pageY-120
    });
});

$(document).on('mousemove', function(e){
    $('#pirmo3').css({
       left:  e.pageX-45,
       top:   e.pageY-120
    });
});

$(document).on('mousemove', function(e){
    $('#antro1').css({
       left:  e.pageX-45,
       top:   e.pageY-120
    });
});

$(document).on('mousemove', function(e){
    $('#antro2').css({
       left:  e.pageX-45,
       top:   e.pageY-120
    });
});

$(document).on('mousemove', function(e){
    $('#antro3').css({
       left:  e.pageX-45,
       top:   e.pageY-120
    });
});

$(document).on('mousemove', function(e){
    $('#trecio1').css({
       left:  e.pageX-45,
       top:   e.pageY-120
    });
});

$(document).on('mousemove', function(e){
    $('#trecio2').css({
       left:  e.pageX-45,
       top:   e.pageY-120
    });
});

$(document).on('mousemove', function(e){
    $('#trecio3').css({
       left:  e.pageX-45,
       top:   e.pageY-120
    });
});

$(document).on('mousemove', function(e){
    $('#ketvirto1').css({
       left:  e.pageX-45,
       top:   e.pageY-120
    });
});

$(document).on('mousemove', function(e){
    $('#ketvirto2').css({
       left:  e.pageX-45,
       top:   e.pageY-120
    });
});

$(document).on('mousemove', function(e){
    $('#ketvirto3').css({
       left:  e.pageX-45,
       top:   e.pageY-120
    });
});

$(document).on('mousemove', function(e){
    $('#pirmaskotedzas').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#antraskotedzas').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#treciaskotedzas').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#ketvirtaskotedzas').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#penktaskotedzas').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#sestaskotedzas').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#pa1').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#pa2').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#pa3').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});


$(document).on('mousemove', function(e){
    $('#pb1').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#pb2').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#pb3').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#pc1').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#pc2').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#pc3').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#aa1').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#aa2').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#aa3').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#ab1').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#ab2').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#ab3').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#ac1').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#ac2').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#ac3').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#ta1').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#ta2').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#ta3').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#tb1').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#tb2').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#tb3').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#tc1').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#tc2').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#tc3').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#ka1').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#ka2').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#ka3').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#kb1').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#kb2').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#kb3').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#kc1').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#kc2').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});

$(document).on('mousemove', function(e){
    $('#kc3').css({
       left:  e.pageX-45,
       top:   e.pageY-130
    });
});