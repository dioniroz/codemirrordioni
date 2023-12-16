//aplicacion para actualizar pagina para curso de php
	//inicializando la variable que estara actualizando ajax
	var tiempo_actualiza = 0;
	//function cargador de plantillas de php con ajax 
        function cargarPlantilla(){
        	var selector=document.querySelector('#practicasphp');
        	conexion1=new XMLHttpRequest();
  			conexion1.onreadystatechange = procesarEventos;
  			conexion1.open('GET','js/script2.js', true);
  			conexion1.send(null);

        }    
        //funcion de carga ajax
        function procesarEventos(selector)
{
  var resultados = document.querySelector('#practicasphp');
  if(conexion1.readyState == 4)
  { 
    var script = document.createElement('script');
        script.textContent = conexion1.responseText;
        document.body.appendChild(script);
    //resultados.innerHTML = conexion1.responseText;
  } 
  else 
  {
    resultados.innerHTML = 'Cargando...';
  }
}
 	var contador = 0;
   	function recargar(){
   	tiempo_actualiza=setInterval(cargar,500);
	}
	function cargar(){
		contador++;
		//(contador ==2) ? location.reload() : console.log(contador);
		//(contador ==2) ? cargarPlantilla() : console.log(contador);
		cargarPlantilla();
	}

	function detener(){
		clearInterval(tiempo_actualiza);
	}
	function continuar(){
		tiempo_actualiza=setInterval(cargar,500);
	}