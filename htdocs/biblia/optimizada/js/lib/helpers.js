/***********************helpers.js ayudante de codigo para paginas web dinamicas********************/
/*******************************creador Dioni Rozo****************************/
/***************************************version 1.0 date:29-03-2020*/
(function(exports){

let r = retornarPlantilla,
	s=retornarobj,
	ss=retornarobjall,
	ifoh=insertarfuncionesaobjetohtml,
	version=1.0,
	mensajeoculto='yo estoy oculto',//ojo mensaje oculto esto es solo para ver el alcance
	m=mimensaje,
	helpers = {r,s,ss,ifoh}
	helpersexpors = {r,s,ss,ifoh,version,m}

function retornarPlantilla(template){
  let box = document.createElement('box');
      box.innerHTML = template;
      return box.children[0];
}
function retornarobj(selector){return document.querySelector(selector)}
function retornarobjall(selector){return document.querySelectorAll(selector)}

function insertarfuncionesaobjetohtml(obj,elehtml){
        for(i in obj){
          elehtml.addEventListener(i,obj[i])
        }
      }
function mimensaje(mensaje = 'hola mundo'){return mensaje + ' mi nombre es dioni '+mensajeoculto }
for(i in helpers){
	exports[i]=helpers[i];
}
	exports.helpers = helpersexpors;


})(window)