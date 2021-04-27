
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');
require("ion-rangeslider");
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

//     console.log('yra')
if(document.getElementById('map')!==null) {
    window.initMap = function () {
        var centriukas = {lat: 55.715408, lng: 21.161441};
        var myLatlng = {lat: 55.716326, lng: 21.175647};
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 14.4,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            center: centriukas,
            scrollwheel: false,
            zoomControl: true,
            scaleControl: false,
            disableDoubleClickZoom: false,
        });
        var contentString = '<div id="content">' +
            '<div id="siteNotice">' +
            '</div>' +
            '<h5 id="firstHeading" class="firstHeading">Klemiskes Namai</h5>' +
            '<div id="bodyContent">'

        '</div>' +
        '</div>';

        var vietalogo = '/images/trecias.png';

        var infowindow = new google.maps.InfoWindow({
            content: contentString
        });
        var marker = new google.maps.Marker({
            position: myLatlng,
            map: map,
            icon: vietalogo,
        });
        map.addListener('mouseover', function () {
            infowindow.open(map, marker);

        });
        map.addListener('mouseout', function () {
            infowindow.close();
        });
        google.maps.event.addListenerOnce(map, 'idle', function () {
            google.maps.event.trigger(map, 'resize');
        });


        var senamiestis = '/images/building1.png';

        var senamiestisMarker = new google.maps.Marker({
            position: {lat: 55.7074239, lng: 21.1333682},
            map: map,
            icon: senamiestis
        });

        contentString2 = '<div id="placemarkContent1" class="placemarkContent" >' +
            '<h5 id="headContent1" class="placemarkHead">' +
            'Senamiestis.' +
            '</h5>' +
            '<div id="bodyContent1"  class="placemarkBody">' +
            'Atstumas: 5.1 km. ' +
            '' +
            '</div>' +
            '</div>';

        var senamiestisinfowindow = new google.maps.InfoWindow({
            content: contentString2
        });

        senamiestisMarker.addListener('click', function () {
            senamiestisinfowindow.open(senamiestis, senamiestisMarker);

        });


        var slengmok = '/images/school1.png';
        var slengmokMarker = new google.maps.Marker({
            position: {lat: 55.7192398, lng: 21.1782899},
            map: map,
            icon: slengmok
        });

        contentString3 = '<div id="placemarkContent1" class="placemarkContent" >' +
            '<h5 id="headContent1" class="placemarkHead">' +
            'Klaipėdos r. Slengiu mokykla.' +
            '</h5>' +
            '<div id="bodyContent1"  class="placemarkBody">' +
            'Atstumas: 700 m. ' +
            '' +
            '</div>' +
            '</div>';

        var slengmokinfowindow = new google.maps.InfoWindow({
            content: contentString3
        });

        slengmokMarker.addListener('click', function () {
            slengmokinfowindow.open(slengmok, slengmokMarker);

        });


        var valskol = '/images/kolegija1.png';
        var valskolMarker = new google.maps.Marker({
            position: {lat: 55.7259046, lng: 21.1731293},
            map: map,
            icon: valskol
        });

        contentString4 = '<div id="placemarkContent1" class="placemarkContent" >' +
            '<h5 id="headContent1" class="placemarkHead">' +
            'Klaipėdos valstybinė kolegija.' +
            '</h5>' +
            '<div id="bodyContent1"  class="placemarkBody">' +
            'Atstumas: 1.5 km. ' +
            '' +
            '</div>' +
            '</div>';

        var valskolinfowindow = new google.maps.InfoWindow({
            content: contentString4
        });

        valskolMarker.addListener('click', function () {
            valskolinfowindow.open(valskol, valskolMarker);

        });

        var stotele = '/images/bus-stop1.png';
        var stoteleMarker = new google.maps.Marker({
            position: {lat: 55.717886, lng: 21.168475},
            map: map,
            icon: stotele
        });

        contentString5 = '<div id="placemarkContent1" class="placemarkContent" >' +
            '<h5 id="headContent1" class="placemarkHead">' +
            'Autobusu stotele.' +
            '</h5>' +
            '<div id="bodyContent1"  class="placemarkBody">' +
            'Atstumas: 200 m. ' +
            '' +
            '</div>' +
            '</div>';

        var stoteleinfowindow = new google.maps.InfoWindow({
            content: contentString5
        });

        stoteleMarker.addListener('click', function () {
            stoteleinfowindow.open(stotele, stoteleMarker);

        });

        var dviraciu = '/images/bike1.png';
        var dviraciuMarker = new google.maps.Marker({
            position: {lat: 55.720543, lng: 21.169634},
            map: map,
            icon: dviraciu,
            optimized: false
        });

        contentString5 = '<div id="placemarkContent1" class="placemarkContent" >' +
            '<h5 id="headContent1" class="placemarkHead">' +
            'Dviračių takas.' +
            '</h5>' +
            '<div id="bodyContent1"  class="placemarkBody">' +
            'Atstumas: 200 m. ' +
            '' +
            '</div>' +
            '</div>';

        var dviraciuinfowindow = new google.maps.InfoWindow({
            content: contentString5
        });

        dviraciuMarker.addListener('click', function () {
            dviraciuinfowindow.open(dviraciu, dviraciuMarker);

        });

        var liepug = '/images/road1.png';
        var liepugMarker = new google.maps.Marker({
            position: {lat: 55.72595, lng: 21.1644842},
            map: map,
            icon: liepug,
            optimized: false
        });

        contentString6 = '<div id="placemarkContent1" class="placemarkContent" >' +
            '<h5 id="headContent1" class="placemarkHead">' +
            'Liepų g.' +
            '</h5>' +
            '<div id="bodyContent1"  class="placemarkBody">' +
            'Atstumas: 1.2 km. ' +
            '' +
            '</div>' +
            '</div>';

        var liepuginfowindow = new google.maps.InfoWindow({
            content: contentString6
        });

        liepugMarker.addListener('click', function () {
            liepuginfowindow.open(liepug, liepugMarker);

        });

        var myoverlay = new google.maps.OverlayView();
        myoverlay.draw = function () {
            this.getPanes().markerLayer.id = 'markerLayer';
            console.log(markerLayer.id);
        };

        myoverlay.setMap(map);
    }
}
if(document.getElementById('projektoimg4')!==null){
    window.initMap=function() {
        var centriukas = {lat: 55.715408, lng: 21.161441};
        var myLatlng = {lat: 55.716326, lng: 21.175647};
        var map1 = new google.maps.Map(document.getElementById('projektoimg4'), {
            zoom: 15,
            mapTypeId: google.maps.MapTypeId.SATELLITE,
            center: myLatlng,
            scrollwheel: false,
            zoomControl: true,
            scaleControl: false,
            disableDoubleClickZoom: false,
        });
        var contentString1 = '<div id="content">'+
            '<div id="siteNotice">'+
            '</div>'+
            '<h5 id="firstHeading" class="firstHeading">Klemiskes Namai</h5>'+
            '<div id="bodyContent">'

        '</div>'+
        '</div>';

        // var vietalogo = '/images/mapologo.png';

        var infowindow1 = new google.maps.InfoWindow({
            content: contentString1
        });
        var marker = new google.maps.Marker({
            position: myLatlng,
            map: map1,
        });
        map1.addListener('mouseover', function() {
            infowindow1.open(map1, marker);

        });
        map1.addListener('mouseout', function(){
            infowindow1.close();
        });
        google.maps.event.addListenerOnce(map1, 'idle', function() {
            google.maps.event.trigger(map1, 'resize');
        });

    }
}
let $range = $(".js-range-slider"),
    inputFrom = $(".js-input-from"),
    inputTo = $(".js-input-to"),
    min = inputFrom.val(),
    max = inputTo.val(),
    from = inputFrom.val(),
    to = inputTo.val();
$(function () {
    $(".js-range-slider").ionRangeSlider({
        skin:'big',
        type: "double",
        min: min,
        max: max,
        from: from,
        to: to,
        onStart: updateInputs,
        onChange: updateInputs,
        onFinish: updateInputs
    });
    function updateInputs (data) {
        from = data.from;
        to = data.to;
        inputFrom.prop("value", from);
        inputTo.prop("value", to);
    }
});


$.ajaxSetup({
  headers: {
    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
  }
});

let chunkArray=(arr, chunk_size)=>{
    let results = [];

    while (arr.length) {
        results.push(arr.splice(0, chunk_size));
    }

    return results;
}
let namai=(arr,namas)=>{
    $.each(arr,function( index, value ) {
        if(index===9){
            return
        }
        if (value.statusas === 0) {
            $(`#${namas+(index+1)}`).attr('d', value.cords).css("fill", "transparent");
        } else if (value.statusas === 1) {
            $(`#${namas+(index+1)}`).attr('d', value.cords).css("fill", "transparent");
        } else {
            $(`#${namas+(index+1)}`).attr('d', value.cords).css("fill", "transparent");
        }
    });
    $.each(arr,function( index, value ) {
        if(index===9){
            return
        }
        $(`#${namas+(index+1)}`).mouseover( function () {
            if (value.statusas === 0) {
                $(`#${namas+(index+1)}`).attr('d', value.cords).css("fill", "#ccffcc");
            } else if (value.statusas === 1) {
                $(`#${namas+(index+1)}`).attr('d', value.cords).css("fill", "#ff6666");
            } else {
                $(`#${namas+(index+1)}`).attr('d', value.cords).css("fill", "#f4f442");
            }

        })
        $(`#${namas+(index+1)}`).mouseout( function () {
            $(`#${namas+(index+1)}`).css({ fill: "transparent" });
        })
    });
    }
    let namuInfo=(houseData)=>{
        let laisvi=[0,0,0];
        let rezervuota=[0,0,0];
        let parduota=[0,0,0];
        $.each(houseData,function (index,value ){
            if(index===3){
                return ;
            }
            $.each(value,function (i,val){
                    if (val.statusas === 0) {
                        laisvi[(value.length-1)-index]++;
                    } else if (value.statusas === 1) {
                        parduota[(val.length-1)-index]++;
                    } else {
                        rezervuota[(value.length-1)-index]++;
                    }
            })
        })
        return [laisvi,rezervuota,parduota];
    }
$(document).ready(function () {
    $(".filter-form").submit(function (event) {
        let values=$(this).serialize();
        if($('tr').hasClass('data-row')){
            $(".data-row").remove();
        }
        $.ajax({
            type: "post",
            url: "/filtras",
            data: values,
            success: function (data) {
                $('.rezultatai').fadeIn();
                $.each(data,function (i,value){
                    let statusas;
                    if(value.statusas===0){
                        statusas="Laisvas"
                    } else if(value.statusas===1){
                        statusas="Parduotas"
                    } else {
                        statusas="Rezervuotas"
                    }
                    let htmlTr=`<tr data-href="/namas/${value.namo_id}/${value.auksto_id}/${value.buto_id}" class="data-row"> 
                                    <td class="text-left">${value.namo_id}</td>
                                    <td class="text-left">${value.auksto_id}</td>
                                    <td class="text-left">${value.kambariai}</td>
                                    <td class="text-left">${value.plotas}</td>
                                    <td class="text-left">${value.kryptis}</td>
                                    <td class="text-left">${value.kaina}</td>
                                    <td class="text-left">${statusas}</td>
                                  </tr>`
                    $('.filter-body').append(htmlTr);
                    $('.data-row').click(function(){
                        window.location.href = $(this).data('href');
                    });
                    $('.data-row').css('cursor','pointer');
                })
            },
            error: function (error) {
                console.log("klaida");
                console.log(error)
            },
        })
        event.preventDefault();
    });
});
window.onload = function() {

    //pirmas namas
    $.ajax({
        url: '/pirmas',
        method: 'get',
        data: {},
        success: function (data) {
            namai(data,'pirmas');
        },
        error: function () {
            console.log("klaida");
            console.log(error)
        },
    });

    $.ajax({
        url: '/pirmas',
        method: 'GET',
        data: {},
        success: function (data) {
            let visiDuomenys=[...data];
            let arrayPagalAuksta=chunkArray(visiDuomenys,3);
            let [laisvas,rezervuotas,parduotas]=namuInfo(arrayPagalAuksta);
            let laisvas1=document.querySelectorAll('.laisvas1');
            let rezervuotas1=document.querySelectorAll('.rezervuotas1');
            let parduotas1=document.querySelectorAll('.parduotas1');

            laisvas1.forEach((el,i)=>{
                if (el) {
                    el.innerHTML = 'Laisvų: ' + laisvas[i];
                }
            })
            rezervuotas1.forEach((el,i)=>{
                if (el) {
                    el.innerHTML = 'Rezervuotų: ' + rezervuotas[i];
                }
            })
            parduotas1.forEach((el,i)=>{
                if (el) {
                    el.innerHTML = 'Parduotų: ' + parduotas[i];
                }
            })

            let pirmox = document.getElementById('pirmolaisvi');
            if (pirmox) {
                let p=data[9][0]?data[9][0]:"0";
                pirmox.innerHTML = 'Laisvų: ' + p;
            }

            let pirmoy = document.getElementById('pirmorezervuoti');
            if (pirmoy) {
                let p=data[9][2]?data[9][2]:"0";
                pirmoy.innerHTML = 'Rezervuotų: ' + p;
            }

            let pirmoz = document.getElementById('pirmoparduoti');
            if (pirmoz) {
                let p=data[9][1]?data[9][1]:"0";
                pirmoz.innerHTML = 'Parduotų: ' + p;
            }
        },
        error: function () {
            console.log("klaida");
            console.log(error)
        },
    });

    // //antras namas
    //
    //
    $.ajax({
        url: '/antras',
        method: 'GET',
        data: {},
        success: function(data){
            namai(data,'antras')
        },
        error: function(){
            console.log(error)
        },
      });

    $.ajax({
        url: '/antras',
        method: 'GET',
        data: {
            },
        success: function(data){
            let visiDuomenys={...data};
            let arrayPagalAuksta=chunkArray(visiDuomenys,3);
            let [laisvas,rezervuotas,parduotas]=namuInfo(arrayPagalAuksta);
            let laisvas2=document.querySelectorAll('.laisvas2');
            let rezervuotas2=document.querySelectorAll('.rezervuotas2');
            let parduotas2=document.querySelectorAll('.parduotas2');

            laisvas2.forEach((el,i)=>{
                if (el) {
                    el.innerHTML = 'Laisvų: ' + laisvas[i];
                }
            })
            rezervuotas2.forEach((el,i)=>{
                if (el) {
                    el.innerHTML = 'Rezervuotų: ' + rezervuotas[i];
                }
            })
            parduotas2.forEach((el,i)=>{
                if (el) {
                    el.innerHTML = 'Parduotų: ' + parduotas[i];
                }
            })
            let antrox =document.getElementById('antrolaisvi');
            if(antrox){
                let p=data[9][0]?data[9][0]:"0";
                antrox.innerHTML = 'Laisvų: ' + p;
            }
            let antroy =document.getElementById('antrorezervuoti');
            if(antroy){
                let p=data[9][2]?data[9][2]:"0";
                antroy.innerHTML = 'Rezervuotų: ' + p;
            }
            let antroz =document.getElementById('antroparduoti');
            if(antroz){
                let p=data[9][1]?data[9][1]:"0";
                antroz.innerHTML = 'Parduotų: ' + p;
            }
            },
        error: function(){
            console.log(error)
        },
      });

    //
    // //trecias namas
    //
    //
      $.ajax({
          url: '/trecias',
          method: 'GET',
          data: {},
          success: function(data){
              namai(data,'trecias')
              },
          error: function(){
              console.log(error)
          },
      });
    //
    $.ajax({
        url: '/trecias',
        method: 'GET',
        data: {
            },
        success: function(data){
            let visiDuomenys={...data};
            let arrayPagalAuksta=chunkArray(visiDuomenys,3);
            let [laisvas,rezervuotas,parduotas]=namuInfo(arrayPagalAuksta);
            let laisvas3=document.querySelectorAll('.laisvas3');
            let rezervuotas3=document.querySelectorAll('.rezervuotas3');
            let parduotas3=document.querySelectorAll('.parduotas3');

            laisvas3.forEach((el,i)=>{
                if (el) {
                    el.innerHTML = 'Laisvų: ' + laisvas[i];
                }
            })
            rezervuotas3.forEach((el,i)=>{
                if (el) {
                    el.innerHTML = 'Rezervuotų: ' + rezervuotas[i];
                }
            })
            parduotas3.forEach((el,i)=>{
                if (el) {
                    el.innerHTML = 'Parduotų: ' + parduotas[i];
                }
            })
            let treciox =document.getElementById('treciolaisvi');
            if(treciox){
                let p=data[9][0]?data[9][0]:"0";
                treciox.innerHTML = 'Laisvų: ' + p;
            }
            let trecioy =document.getElementById('treciorezervuoti');
            if(trecioy){
                let p=data[9][2]?data[9][2]:"0";
                trecioy.innerHTML = 'Rezervuotų: ' + p;
            }
            let trecioz =document.getElementById('trecioparduoti');
            if(trecioz){
                let p=data[9][1]?data[9][1]:"0";
                trecioz.innerHTML = 'Parduotų: ' + p;
            }
            },
        error: function(){
            console.log(error)
        },
      });

    //
    // //ketvirtas namas
    //
    //
       $.ajax({
           url: '/ketvirtas',
           method: 'GET',
           data: {},
           success: function(data){
              namai(data,'ketvirtas')
               },
           error: function(){
               console.log(error)
           },
      });
    //
    $.ajax({
        url: '/ketvirtas',
        method: 'GET',
        data: {
            },
        success: function(data){
            let visiDuomenys={...data};
            let arrayPagalAuksta=chunkArray(visiDuomenys,3);
            let [laisvas,rezervuotas,parduotas]=namuInfo(arrayPagalAuksta);
            let laisvas4=document.querySelectorAll('.laisvas4');
            let rezervuotas4=document.querySelectorAll('.rezervuotas4');
            let parduotas4=document.querySelectorAll('.parduotas4');

            laisvas4.forEach((el,i)=>{
                if (el) {
                    el.innerHTML = 'Laisvų: ' + laisvas[i];
                }
            })
            rezervuotas4.forEach((el,i)=>{
                if (el) {
                    el.innerHTML = 'Rezervuotų: ' + rezervuotas[i];
                }
            })
            parduotas4.forEach((el,i)=>{
                if (el) {
                    el.innerHTML = 'Parduotų: ' + parduotas[i];
                }
            })
            let ketvirtox =document.getElementById('ketvirtolaisvi');
            if(ketvirtox){
                let p=data[9][0]?data[9][0]:"0";
                ketvirtox.innerHTML = 'Laisvų: ' + p;
            }
            let ketvirtoy =document.getElementById('ketvirtorezervuoti');
            if(ketvirtoy){
                let p=data[9][2]?data[9][2]:"0";
                ketvirtoy.innerHTML = 'Rezervuotų: ' + p;
            }
            let ketvirtoz =document.getElementById('ketvirtoparduoti');
            if(ketvirtoz){
                let p=data[9][1]?data[9][1]:"0";
                ketvirtoz.innerHTML = 'Parduotų: ' + p;
            }
            },
        error: function(){
            console.log(error)
        },
      });
    //

//svg
    let mouseListener=document.querySelectorAll('.mouseListener');
    let showPopup=document.querySelectorAll('.showPopup');
    mouseListener.forEach((el,i)=>{
        if (el !== null && el !== undefined) {
            el.addEventListener("mouseover", function () {
                // console.log('uzsidejo');
                el.style.fill = "#1a2b87"
                showPopup[i].style.display = "block"
            })
            el.addEventListener("mouseout", function () {
                el.style.fill = "transparent"
                showPopup[i].style.display = "none"
            })
        }
    })


    //stogelio img vir navigacijos

    let headerStogas = document.querySelectorAll(".headerStogas");
    let stogelis = document.querySelectorAll(".stogelis");
    headerStogas.forEach((el,i)=>{
        if (el !== null && el !== undefined) {
            el.addEventListener("mouseover", function () {
                stogelis[i].style.display = "block"
            })
            el.addEventListener("mouseout", function () {
                stogelis[i].style.display = "none"
            })
        }
    })
    $(function() {
        let path = window.location.pathname;
        let navItem = document.querySelector("a[href='"+path+"']")
        navItem.classList.add("active");
    })
    let butoMouseover = document.querySelectorAll(".butoMouseover");
    let butoPopup= document.querySelectorAll(".butoPopup");
    butoMouseover.forEach((el,i)=>{
        if (el !== null && el !== undefined) {
            el.addEventListener("mouseover", function () {
                butoPopup[i].style.display = "block"
            })
            el.addEventListener("mouseout", function () {
                butoPopup[i].style.display = "none"
            })
        }
    })


    $(document).on('mousemove', function (e) {
        $('#house1').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#house2').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#house3').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#house4').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#house5').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#pirmo1').css({
            left: e.pageX - 45,
            top: e.pageY - 120
        });
    });

    $(document).on('mousemove', function (e) {
        $('#pirmo2').css({
            left: e.pageX - 45,
            top: e.pageY - 120
        });
    });

    $(document).on('mousemove', function (e) {
        $('#pirmo3').css({
            left: e.pageX - 45,
            top: e.pageY - 120
        });
    });

    $(document).on('mousemove', function (e) {
        $('#antro1').css({
            left: e.pageX - 45,
            top: e.pageY - 120
        });
    });

    $(document).on('mousemove', function (e) {
        $('#antro2').css({
            left: e.pageX - 45,
            top: e.pageY - 120
        });
    });

    $(document).on('mousemove', function (e) {
        $('#antro3').css({
            left: e.pageX - 45,
            top: e.pageY - 120
        });
    });

    $(document).on('mousemove', function (e) {
        $('#trecio1').css({
            left: e.pageX - 45,
            top: e.pageY - 120
        });
    });

    $(document).on('mousemove', function (e) {
        $('#trecio2').css({
            left: e.pageX - 45,
            top: e.pageY - 120
        });
    });

    $(document).on('mousemove', function (e) {
        $('#trecio3').css({
            left: e.pageX - 45,
            top: e.pageY - 120
        });
    });

    $(document).on('mousemove', function (e) {
        $('#ketvirto1').css({
            left: e.pageX - 45,
            top: e.pageY - 120
        });
    });

    $(document).on('mousemove', function (e) {
        $('#ketvirto2').css({
            left: e.pageX - 45,
            top: e.pageY - 120
        });
    });

    $(document).on('mousemove', function (e) {
        $('#ketvirto3').css({
            left: e.pageX - 45,
            top: e.pageY - 120
        });
    });


    $(document).on('mousemove', function (e) {
        $('#pa1').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#pa2').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#pa3').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });


    $(document).on('mousemove', function (e) {
        $('#pb1').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#pb2').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#pb3').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#pc1').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#pc2').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#pc3').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#aa1').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#aa2').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#aa3').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#ab1').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#ab2').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#ab3').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#ac1').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#ac2').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#ac3').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#ta1').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#ta2').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#ta3').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#tb1').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#tb2').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#tb3').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#tc1').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#tc2').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#tc3').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#ka1').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#ka2').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#ka3').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#kb1').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#kb2').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#kb3').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#kc1').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#kc2').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });

    $(document).on('mousemove', function (e) {
        $('#kc3').css({
            left: e.pageX - 45,
            top: e.pageY - 130
        });
    });
}





