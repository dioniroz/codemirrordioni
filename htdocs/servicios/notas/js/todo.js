(function(exports){
	var todo = {};
		todo.template = `
			<div id="app">
	<h3>mis notas</h3>
		<header>
 			<li v-for="etiqueta in etiquetas">
		    	<input type="radio" v-bind:value="etiqueta.etiqueta" name="filtro" v-model="filtro" placeholder=""><label>{{etiqueta.etiqueta}}</label>
		    </li>
		</header>
		<li @click="valor = value" v-for="(value,key) in todos">
			<span class='id'>{{value.id}}</span>
			<span class='title'>{{value.title}}</span>
			<span class='cerrar' @click="delete todos[value.id]"><span class="ico cerrar"></span></span>
		</li>
		<aside>
	<span class="asideid">{{valor.id}}</span>
	<span class="asidetitle">{{valor.title}}</span>
	<span class="asidefecha">{{r(valor.fecha).textContent}}</span>

	<p>
		{{valor.nota}}
	</p>
	</aside>
	</div>
		`;
		notas = <?=$n;?>;
		etiquetas = <?=$N;?>;

		app = new Vue({
			el:'#app',
			data:{
				todos:notas,
				valor:notas[0],
				filtro:[],
				etiquetas:etiquetas
			},
			computed:{},
			watch:{
				filtro:function(){
					let j = {filtro:this.filtro}
					ajax.POST('todo.php/filtrar',j).then((data)=>{
						this.todos = data;
					})
				}
			},
			methods:{
				mostrareste(){
					console.log(arguments,this);
				}
			}
		})
	todo.estilos = `
		#app{width: 300px;float: right;border: 1px solid;list-style: none;padding-left: 10px;}
		#app .ico{width: 20px;height: 20px;cursor: pointer;}
		#app li{border-bottom: 1px solid;clear: both;}
		aside {width: 300px;float: right;border: 1px solid;}
		aside>span {background: red;}
		#app .cerrar{float: right;}
		.asidefecha {display: block;}
		.asidetitle {display: block;text-align: center;background: lightcoral;}
		.asideid {width: 20px;height: 20px;text-align: center;float: left;border-radius: 50%;}
		header li {display: inline;}
	`;
	function r(template){
  let box = document.createElement('box');
      box.innerHTML = template;
      if(box.children.length == 1)
      { return box.children[0];}
      if(box.children.length > 1){
        return box;
      }
      
}
	exports.todo = todo;
}(window));