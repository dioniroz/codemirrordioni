<!DOCTYPE html>
<?php 
  include './vendors/autoload.php';
  use vendors\consultadb\Biblia;
  $favoritos = new Biblia();
  $favoritos->get();
  $resultado = [];
  foreach ($re = $favoritos->resultado as $key => $value) {
      $resultado[] = $re[$key]['favoritos'];
  }
  $libro=file_get_contents('lecturas.txt');
  if($libro==""){$libro='{"libro":"GÉNESIS","capitulo":"1"}';}
  $j= json_decode($libro);
 
 //$versiculos 	 = json_encode(simplexml_load_file('./BOOKS/'.$j->libro.'/'.$j->capitulo.'.xml'));
  $versiculos    = file_get_contents('./BOOKS/'.$j->libro.'/'.$j->capitulo.'.json');
  //$capitulos     = json_encode(simplexml_load_file('./BOOKS/'.$j->libro.'/'.'index.xml'));
  $capitulos     = file_get_contents('./BOOKS/'.$j->libro.'/'.'index.json');
 ?>
  <html lang="es">
  <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">  
      <title>app biblia con vue</title>
      <script src="js/lib/miajax.js"></script>
      <script src="js/lib/biblia.js"></script>
      <script src="js/lib/helpers.js"></script>
      <script src="js/lib/vue.min.js"></script>
      <script src="js/lib/contextmenu.js"></script>
      <script src="js/lib/draganddrop.js"></script>
      <script src="js/lanzar.js"></script>
      <script src="http://localhost:8000/utilitarios/miscript/componente.js"></script>
      <script src="http://localhost:8000/utilitarios/axios/axios.js"></script>

      <script>
      //inicializando las variables de datos para el cliente montadas desde el servidor
      $versiculos = <?= $versiculos; ?>;
      $capitulos  = <?= $capitulos; ?>;
      $libro 	  = <?= $libro; ?>;
      $favoritos  = <?=json_encode($resultado);?>
      </script>


     <!--  <script src="js/lib/universal.js"></script> -->
     <!-- para cargar los archivos y modulos que utiliza la app biblia -->
      <link rel="stylesheet" href="css/glyicons.css">
      <link rel="stylesheet" href="css/estilos.css">
  </head>
  <body>
  <div class="header">
  	  <ul>
  	      <li class="favoritos">favoritos</li>
  	      <li class="timeline">timeline</li>
  	      <li class="plan">plan bibliaco</li>
  	      <li class="estudios">estudios biblicos</li>
  	      <li class="diccionario">diccionario</li>
  	      <li class="explorador">explorador</li>
  	  </ul>
  </div>

    <div id="app">
        <div id="libros" class="libros">  
        	<h4 @click="mostrarocultar1">Antiguo</h4>
            <h4 @click="mostrarocultar2">Nuevo</h4>
            <ul v-bind:class='active' class='algo'>
                <li  @click='cargarlibro' v-for='(value, key) in at'>{{value}}</li>
            </ul>
            <ul v-bind:class='oculto' class='algo'>
                <li @click='cargarlibro' v-for='(value, key) in nt'>{{value}}</li>
            </ul>
        </div>
        <div class="lecturas">
        <div class="capitulos" id="cargarlibro">
        	<h3>{{actual}}</h3>
           <li  @click='cargarCapitulos' v-for='(value,key) in capitulos'>{{ value["@attributes"].number }}<span> {{ value["@attributes"].name }} </span></li>
        </div>
        <div class="versiculos" id="cargarversiculos">
        	
            <div class="ventana">
            <h3>
            <span>{{libroactual.libro}}-{{libroactual.capitulo}}</span>
            <span>{{capitulos[libroactual.capitulo-1]['@attributes']['name']}}</span>
            </h3>
            <div class="flechaslecturas"><span @click='ant' class="ico fleri"></span><span @click="sig" class="ico flerd"></span></div>
              <div class="botones">
              <span class="ico minimizar"></span>
              <span class="ico maximizar"></span>
              <span class="ico cerrar"></span>
              </div>
            </div>
            
           <li class="lia"
           v-for='(value,key) in versiculos' 
           v-bind:class="(favoritos.indexOf(value['@attributes'].id) == -1 ) ? '' : 'favoritos' " 
           v-bind:id="value['@attributes'].id"
           v-bind:versiculo="++key">
           <span v-if="value['@attributes'].type == 4">
           {{ value["@attributes"].text }}
           </span>
           {{(value["@attributes"].type == 1) ? 
              value["@attributes"].text :
              null 
           }}
           </li>
        </div>
    </div>
    <footer>
    	<!-- <div><li v-for="(value,key) in COVERBOOKS">{{value['@attributes'].text}}</li></div> -->
    </footer>
    </div>
     <script>
      var  app = new Vue({
                el:'#app',
                data:{
                  actual:$libro.libro,
                  biblia:biblia.libros,
                  at:biblia.conacronimos.AT,
                  nt:biblia.conacronimos.NT,
                  capitulos:$capitulos.chapter,
                  versiculos:$versiculos.entry,
                  favoritos:$favoritos,
                  libroactual:$libro,
                  active:'active',
                  oculto:'oculto',
                  // COVERBOOKS:[]
                },
                methods:{
                  cargarlibro:function(){
                    let este = arguments[0].target;
                    app.actual = este.textContent;
                    ajax.POST('xmlToJSON.php',{libro:este.textContent}).then(function(response){
                      app.capitulos = response.chapter;
                    });
                    // ajax.POST('COVERBOOKS.php',{libro:este.textContent}).then(function(response){
                    //   app.COVERBOOKS = response.entry;
                    // })

                  },
                  cargarCapitulos:function(){
                    let este = arguments[0].target.nodeName == 'SPAN' ? arguments[0].target.parentElement : arguments[0].target;
                        
                      let capitulo = este.firstChild.nodeValue;
                      let j = {libro:app.actual,capitulo:capitulo}
                      console.log(j);
                      this.libroactual = j;
                      ajax.POST('xmlToJSON.php',j).then(function(response){
                        app.versiculos = response.entry;
                      })
                      ajax.POST('lecturas.php',j).then(function(response){
                        console.log(response);
                      })
                  },
                  ant(){
                  	let cap = app.libroactual.capitulo;
                  	if(cap>1) cap--;app.libroactual.capitulo--;
                  	let j = {libro:app.actual,capitulo:cap}
                  	ajax.POST('xmlToJSON.php',j).then(function(response){
                        app.versiculos = response.entry;
                      })
                  },
                  sig(){
                  	let cap = this.libroactual.capitulo;
                  	if(cap!=this.capitulos.length) cap++;app.libroactual.capitulo++
                  	let j = {libro:app.actual,capitulo:cap}
                  	ajax.POST('xmlToJSON.php',j).then(function(response){
                        app.versiculos = response.entry;
                      })
                  },
                  mostrarocultar1:function(){this.oculto = 'oculto';this.active="active" },
                  mostrarocultar2:function(){this.oculto = 'active';this.active="oculto"}
                }
        })
     </script>
     <script src="js/favoritos.js"></script>
     <script src="js/timeline.js"></script>
     <script>
 			let lecturas 			= 	document.querySelector('.lecturas');
     		let cargarversiculos 	= 	document.querySelector('#cargarversiculos');
     		let minimizar			=	document.querySelector('.minimizar');
     		let maximizar			=	document.querySelector('.maximizar');
     		let cerrar				=	document.querySelector('.cerrar');
     		let aplicacion  		= 	document.querySelector('#app');
			let	plan				=	document.querySelector('.plan');
			let	estudios			=	document.querySelector('.estudios');
			let	diccionario			=	document.querySelector('.diccionario');

     		maximizar.addEventListener('click',function(){
     			document.body.append(cargarversiculos);
     			cargarversiculos.style.position = 'absolute';
     		});
     		minimizar.addEventListener('click',function(){
     			lecturas.append(cargarversiculos);
     			cargarversiculos.style.position = 'inherit';
     		});
     		
        function agreagarafavoritos(){
        	console.log(this)
  let id=this.id;
  let libroactual = app.libroactual;
  	  libroactual.id = id
  j=libroactual;
  ajax.POST('agregarf.php',j).then(function(data){
    app.favoritos = data;
  });
}
		function cargarfavoritos(){

		}
    configurar = {'li.lia':[agreagarafavoritos]};

     </script>
     <script src="js/nota.js"></script>
     <script src="js/explorador.js"></script>
        
  </body>
</html>