			<?php 
			header("Access-Control-Allow-Origin: *");
			header('Content-Type: text/html; charset=utf-8');
			$j="dni";// dni=dependencias no incluidas
		if(array_key_exists('j',$_REQUEST)){
			$j= $_REQUEST['j'];
		}
			if($j=="dni"):// dni=dependencias no incluidas
			 ?>
			<!DOCTYPE html>
	<html lang="es">
	<head>
			<meta charset="utf-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">	
			<title></title>
			<link rel="stylesheet" href="http://localhost:8000/utilitarios/bootstrap/dist/css/bootstrap.min.css">
			<link rel="stylesheet" href="http://localhost:8000/utilitarios/glyicons/glyicons.css">
			<script src="http://localhost:8000//utilitarios/vue3/vue.global.js"></script>
			<script src="http://localhost:8000/utilitarios/axios/axios.js"></script>
			<script src="http://localhost:8000/utilitarios/ajax/miajax.js"></script>
			<script src="http://localhost:8000/utilitarios/miscript/draganddrop.js"></script>
			<script src="http://localhost:8000/utilitarios/contextmenu/contextmenu.js"></script>
			<script src="http://localhost:8000/utilitarios/helpers/helpers.js"></script>
			
	</head>
	<body>
			<?php endif;  ?>
		<div id="apptodo" class="apptodo">
	<h3>mis notas</h3>
		<header>
 			<li v-for="etiqueta in etiquetas">
		    	<input type="radio" v-bind:value="etiqueta.etiqueta" name="filtro" v-model="filtro" placeholder=""><label>{{etiqueta.etiqueta}}</label>
		    </li>
		    <li @click="ingresaretiqueta" class="app-plus"><span class="ico plus"></span></li>
		</header>
		<div class="listas">
		<li  v-for="(value,key) in todos">
			<span class='id'>{{key}}</span>
			<span class='title' @click="valor = value">{{value.title}}</span>
			<span class='cerrar'><span v-bind:clave="value.id"  @click="borrar" class="ico cerrar"></span></span>
		</li>
		</div>
		<aside>
			<button @click="pressme">pressme</button>
	<span class="asideid">{{valor.id}}</span>
	<span class="asidetitle">{{valor.title}}</span>

	<p>
		{{key}}{{valor.nota}}
	</p>
	</aside>
	</div>
	<!-- <script src="http://localhost:8000/servicios/notas/todosvue3.js.php"></script> -->
		<script>

			<?= include 'todosvue3.js.php';?>

		const vue3app = {
			
			data(){
				return{
				todos:notas,
				valor:notas[0],
				filtro:[],
				etiquetas:etiquetas
			}
			},
			computed:{},
			watch:{
				filtro:function(){
					let j = {filtro:this.filtro}
					ajax.POST('http://localhost:8000/servicios/notas/todo.php/filtrar',j).then((response)=>{
						this.todos = response;
					})
				}
			},
			methods:{
				mostrareste(){
					console.log(arguments,this);
				},
				borrar(){
					let clave = arguments[0].target.getAttribute('clave');
					let filtro = this.filtro;
					let j={clave,filtro};
					ajax.POST('http://localhost:8000/servicios/notas/todo.php/delete',j).then((data)=>{
						this.todos = data;
					})
				},
				pressme(){
					document.body.append(r(`
						<aside>
			<span class="asideid">${this.valor.id}</span>
			<span class="asidetitle">${this.valor.title}</span>

			<p>
		${this.valor.nota}
			</p>
	</aside>
						`))
				}
			}
		}
		apptodo=Vue.createApp(vue3app).mount('#apptodo');
		let apptodo2 = s('#apptodo');
			document.body.append(r(`
				<style>
	#apptodo{width: 300px;float: right;border: 1px solid;list-style: none;padding-left: 10px;}
	#apptodo .ico{width: 20px;height: 20px;cursor: pointer;}
	#apptodo li{border-bottom: 1px solid;clear: both;}
	#apptodo .listas{height: 400px;overflow: auto;}
	aside {width: 300px;float: right;border: 1px solid;}
	aside>span {background: red;}
	#apptodo .cerrar{float: right;}
	.asidefecha {display: block;}
	.asidetitle {display: block;text-align: center;background: lightcoral;}
	.asideid {width: 20px;height: 20px;text-align: center;float: left;border-radius: 50%;}
	header li {display: inline;}
	.apptodo .id{width: 15px;text-align: right;margin-right: 10px;display: inline-block;}
				</style>
				`));
		
		</script>


	<?php if($j==""):  ?>
	</body>
</html>
	<?php endif; ?>