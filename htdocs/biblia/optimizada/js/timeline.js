     		let	timeline	=	document.querySelector('.timeline');

timeline.addEventListener('click',function(){
     			ajax.POST('timelineat.php').then(function(data){
     			let div = r(`<div style="" class="helpercuadro">
    <li class="h" style="">
    <span style="" class="ico cerrar hcerrar"></span>
    </li>
    <h4 class="hh4 titulo" style="">TimeLine</h4>
    <h5 class="hh5"></h5>
    <div class="contenido cronologia">
		
	</div>
  </div>`);
     			let limove = div.querySelector('li');
     			let btncerrar = div.querySelector('.cerrar');
     			let divcontenedor = div.querySelector('.contenido')
				
				data.forEach(function(a){
					let li=r(`
						<li>
						<span class="fecha">${a.fecha}</span>
						<span class="acontecimiento">${a.acontecimiento}</span>
						<span class="libro">${a.libro}</span>
						</li>
							`);
					divcontenedor.append(li);
				})

				limove.addEventListener('mousedown',function(){  draganddrop(this.parentNode);});
    			btncerrar.addEventListener('click',function(){this.parentNode.parentNode.remove();});
    
				
				document.body.append(div)
     			})
     		})
document.head.append(r(`<style>
		  .cronologia{height: 400px;overflow: auto;}
          .helpercuadro{width:600px;background:#ab9393;position:absolute;top:0;left:0;z-index:5;resize: both;overflow: auto;}
          .h{width: 100%;height: 10%;display: inline-block;cursor: move;}
          .hcerrar{float:right;cursor:pointer;}
          .hguardar{float:right;cursor:pointer;}
          .hid{float: left;display: inline-block;background: green;border: 1px solid;border-radius: 50%;width: 40px;height: 40px;font-size: 1.5em;color: yellow;}
          .hentrada{width:18px;background:none;border:0;display: block;margin:auto;text-align: center;}
          .hentrada:focus{border-color: white;}
          .hh4{margin: 0;padding: 0;background: #bfbfad;text-align: center;height:20px;line-height:19.8px;}
          .appnotatextarea{width: 300px;height: 148px;background: white;}
          .helpercuadro .fecha{width: 120px;display:inline-block;}
		  .helpercuadro .acontecimiento{width: 250px;display:inline-block;}
		  .helpercuadro .libro{width: 100px;display:inline-block;}
        </style>`))