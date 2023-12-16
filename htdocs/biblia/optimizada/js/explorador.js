let explorador=document.querySelector('.explorador')||r('<li class=".explorador">explorador</li>');
	if(explorador.parentElement.nodeName != "UL"){document.body.append(explorador)}
	explorador.addEventListener('click',function(){
		ajax.POST('explorador.php').then(function(data){
			//acontinuacion se crea el helpercuadro para utilizar el explorador
			let div = r(`
				 <div style="" class="helpercuadro">
    			 <li class="h" style="">
    			 <span style="" class="ico cerrar hcerrar"></span>
    			 </li>
    			 <h4 class="hh4 titulo" style="">explorador</h4>
    			 <h5 class="hh5"></h5>
    			 <div class="contenido">
				 	<div id="explorador"></div>
				 </div>
    			 </div>
  					`);

			let explorador=div.querySelector('#explorador');
			let datarender = r(data);//renderizando vista carpetas del servidor 
				explorador.append(datarender);//incluyendo la vista en el div explorador lo demas lo hace el app como se ve en el index del ejemplo de la libreria explorador
				let limove = div.querySelector('li');
     			let btncerrar = div.querySelector('.cerrar');
				limove.addEventListener('mousedown',function(){  draganddrop(this.parentNode);});
    			btncerrar.addEventListener('click',function(){this.parentNode.parentNode.remove();});
			document.body.append(div);
		})
	});

//funciones que se van a utilizar en el explorador
function cargardirectorio(path,anterior="",plusdir=""){
    return new Promise(function(resolve,reject){
      
       conexion = new XMLHttpRequest()
       conexion.open('post','explorador.php');
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
  boxfile = document.querySelector('#explorador')||document.querySelector('body');
  boxfile.innerHTML = data;
})
}
  function crearDirectorio(){
    let plusdir=prompt('nombre del directorio');
    
    let dir = s('#directorio').value;
    console.log(dir,plusdir);
    cargardirectorio(dir,dir,plusdir).then((data)=>{
  boxfile = document.querySelector('#explorador')||document.querySelector('body');
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
if(typeof r == 'function'){

	document.head.append(r(`<style>
    #explorador * {margin: 0;padding: 0px;top: 0;list-style: none;}
	#explorador #explorador{margin-left: 20px;border:2px solid;width: 250px;}
	#explorador .flechas .ico{width: 20px;height: 20px;float: right;}
	#explorador #boxfile .ico{width: 20px;height: 20px;}
	#explorador #boxfile > ul {padding-left: 10px;}
	#explorador #navegador>.ico{width: 20px;height: 20px;margin-left: 5px;}
	#explorador #navegador>input{float: left;}
	#explorador #navegador{display: inline-block;background: wheat;width: 250px;}
	#explorador #navegador.flvd{float: right;}
	#explorador .interfaz >span.flevd{width: 15px;height: 15px;}
	#explorador #boxfile{height: 300px;background: #f7f7f7;overflow-y: scroll;}
	#explorador #boxfile>ul>li{color: red;}
	#explorador #boxfile>ul>li:hover{color:blue;cursor: -moz-grab;background: aquamarine;}
	#explorador .carpeta{color:gray;}
	#explorador .carpeta:hover{color:yellow;}
		</style>`))
}else{
	alert('requiere dependencia r en helpers como dependencia');
}
//para el menu contextual
configurar['li.lista']=[abrirensublime,abrirruta,mostrarrutacompleta];
configurar['li.carpeta']=[abrirruta]