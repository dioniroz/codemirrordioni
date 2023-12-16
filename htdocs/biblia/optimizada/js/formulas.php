<script>
function cargardirectorio(path,anterior="",plusdir=""){
    return new Promise(function(resolve,reject){
      
       conexion = new XMLHttpRequest()
       conexion.open('post','interfaz.php');
       conexion.setRequestHeader("Content-type","application/x-www-form-urlencoded");
       conexion.onload = function(){
         if(this.status==200){
           resolve(this.response);
         }
        }
       conexion.send(`path=${path}&anterior=${anterior}&plusdir=${plusdir}`);
    })
}

function recargardirectorio(path){
  anterior = document.querySelector('#directorio').value
  cargardirectorio(path,anterior).then((data)=>{
  boxfile = document.querySelector('#interfaz')||document.querySelector('body');
  boxfile.innerHTML = data;
})
}
  function crearDirectorio(){
    let plusdir=prompt('nombre del directorio');
    
    let dir = s('#directorio').value;
    console.log(dir,plusdir);
    cargardirectorio(dir,dir,plusdir).then((data)=>{
  boxfile = document.querySelector('#interfaz')||document.querySelector('body');
  boxfile.innerHTML = data;
  })
}

function ir(este,event){
    valor = este.value;
    if(event.keyCode==13){
      recargardirectorio(valor)
      este.focus();
    }
  }
function mostrarrutacompleta(){
  //esta funcion solo trabaja bajo el contexto de this con addEventListener
      console.log(this)
  let path=this.getAttribute('path');
      path=path.split('\\');
      path.shift();
      path = path.join('/');
      path = document.location+path;
      c(path);
      return path;
}


function mostrarinterfaz(este){
  interfaces=document.querySelectorAll('.interfaces');
  for(let i=0;i<2;i++){
    interfaces[i].classList.add('ocultar');
  }
  interfaces[este].classList.remove('ocultar');

}


function cargarencodemirror(ele){
  file = ele.getAttribute('path');
  
  document.location = file;

}

function cargarimagen(ele){

  let file = ele.getAttribute('path');
  let img=document.createElement('img');
      img.src = file;
      mostrarcontenido.append(img);
}
function cargaraudio(ele){
  let file = ele.getAttribute('path');
  let au = 
      r(`<audio id="alfabetoaudio" controls="">
      <source src="${file}" type="audio/mpeg">
  Your browser does not support the audio element.
  </audio>`)
  
  mostrarcontenido.append(au);
}


function abrirruta(ruta){
  let dir = s('#directorio').value;
  http = new XMLHttpRequest();

  http.open('get','abrir.php?ruta='+dir,false);
  http.send();
  console.log(http.response);
}

function abrirensublime(){
  let file = this.getAttribute('path');
  let dir = s('#directorio').value;
  http = new XMLHttpRequest();

  http.open('get','abrir.php?ruta='+file,false);
  http.send();
  console.log(http.response);
}
</script>