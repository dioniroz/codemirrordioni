

var tiempocargar = ""
function cargardependencias(){
	if(typeof dom == 'undefined'){cargardependencias()}
		else{
document.body.prepend(crearlista());
clearInterval(tiempocargar)
}
}

tiempocargar = setInterval(cargardependencias,1000)

function crearlista(){
var lista=dom('div',
	{id:'mibarramenu'},
	  dom("ul", null,
      dom("li",{'src':'http://127.0.0.1/utilitarios/jquery/jquery-2.0.3.js',"onclick":"insertarScript(this)"},"jquery"),
      dom('li',{'src':'http://127.0.0.1/utilitarios/underscore/underscore-min.js',"onclick":"insertarScript(this)"},'underscore'),
      dom('li',{'src':'http://127.0.0.1/utilitarios/jasmine-standalone-2.3.4/lib/jasmine-2.3.4/jasmine.js',"onclick":"insertarScript(this)"},'jasmine'),
      dom('li',{'src':'http://127.0.0.1/utilitarios/handlebars/handlerbars.js',"onclick":"insertarScript(this)"},'handlerbars'),
      dom('li',{'src':'http://127.0.0.1/utilitarios/vivus/dist/vivus.js',"onclick":"insertarScript(this)"},'vivus'),
      dom('li',{'src':'http://127.0.0.1/utilitarios/mismodulos/arrayfamilia.js',"onclick":"insertarScript(this)"},'arrayfamilia'),
      dom('li',{'src':'http://127.0.0.1/utilitarios/mismodulos/familia.js',"onclick":"insertarScript(this)"},'familia'),
      dom('li',{'src':'','onclick':'abrir(this,{url:document.URL})'},'abrircarpeta'),
      dom('li',{'src':'','onclick':'abrir(this,{url:\'http://127.0.0.1/utilitarios/mismodulos/mi_menu_universal_1/\'})'},'abrirmodulo'),
      dom('li',{'src':'','onclick':'insertareditor()'},'insertarcodemirror'),
      dom('li',{'src':'http://127.0.0.1/utilitarios/mismodulos/_dom.js',"onclick":"insertarScript(this)"},'_dom.js')
      ))
      document.head.appendChild(dom('script',{'src':'http://127.0.0.1/utilitarios/mismodulos/abrir/abrir.js'}));
      return lista;
}

function insertarScript(este){
      script = dom('script',{src:este.getAttribute('src')})
      document.head.appendChild(script);
}