<div class="" id="clock">
<input  id="alarma" type="time"/><span id="time"></span>
    <audio controls style="display:none;">
  <source  src=<?php echo __dir__."\Kansas-Dust-In-The-Wind.mp3";?> type="audio/mpeg">
Your browser does not support the audio element.
    </audio>
<button onclick="lanzaralarma()">alarma</button>
<button onclick="clearInterval(a);">||</button>

  
  <style>
    #time{
      background:red;
      width:50px;
    }
  </style>
<script>
var a ;
var time;
var horarray;
var horaallarmaarray;
var t;
function timeSolo(){
        //llevando reloj
        var p = document.getElementById('time');
        var d = new Date();
        t = new Date();
        var mostrarHora = d.getHours()+":";
        mostrarHora+=d.getMinutes();
        time = mostrarHora;
        mostrarHora+=":"+d.getSeconds();
        p.innerHTML = mostrarHora;
     }


setInterval(timeSolo,1000);
  

function comparar(uno,dos){
  var alarma = document.querySelector('#alarma');
      

horarray = time.split(':');//array 

horaallarma = alarma.value;//array

horaallarmaarray = horaallarma.split(':');
horaallarmaarray[0]=parseInt(horaallarmaarray[0]);
horaallarmaarray[1]=parseInt(horaallarmaarray[1]);
  if(horarray.toString()==horaallarmaarray.toString()){
    clock.children[1].play()
    clearInterval(a);
  }
  else{console.log(horaallarmaarray,horarray)}
}


function lanzaralarma(){
  a=setInterval(comparar,1000) 
}

</script>
</div>