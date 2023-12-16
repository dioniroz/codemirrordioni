let http="",
    versiculos1;//versiculos cargados en formato json desde la funcion cargar json
    actual = "";//referente al menu versiculos 
    anterior = "";//referente al menu versiculos var global para las lecturas con la funcion ant
    siguiente = "";//referente al menu versiculos var global para las lecturas con la funcion sig
    contadorlec=0,
    datosbusqueda="";
    elemento = "";


function cargar(){
var lista = _dom('ul',{id:'lista'},'')

for(divicion in biblia){
  let _divi = biblia[divicion]
  let _divili=_dom('li',{
    class:'divi',
    onclick:"mostrar(this,event)"
  },divicion)

  for(separacion in _divi){
     let _sepa = _divi[separacion];
     let _sepali=_dom('li',{
      class:'separacion',
      style:'display:none;',
      onclick:"mostrar(this,event)"
      },separacion)
    for(libro in _sepa){

      _sepali.appendChild(_dom('li',{
        class:'libro',
        style:'display:none;',
        url: `libros/${divicion}/${separacion}/${_sepa[libro]}`,//paht de cada libro
        onclick:"cargarlibro(this)"
      },_sepa[libro]))
    } 

    _divili.appendChild(_sepali);
  } 

  lista.appendChild(_divili)
}
navegar.appendChild(lista)//navegar esta como un elento html no como selector documentqueryselector


}
function mostrar(este,event){ 
  event.stopPropagation();
  $(este).children().slideToggle();
}

function cargarlibro(est){
  let _url = est.getAttribute('url'),
      _libro = est.textContent
  obtenerXML( _url + "/index.xml" ).then((data) => {
    let _lecturas=document.querySelector('#capitulos'),
        xmldoc=data.getElementsByTagName('chapter'),
        titulocap = _dom('div',{class:"titulolibro"},_libro),
        menucapitulos = _dom('ul',{class:"menu"},""),
        contador =1;
        for(let i=0;i<xmldoc.length;i++){

        let _capitulo=_dom('li',{
            class:"capitulo",
            capitulo:contador,
            url: _url + "/" + contador + ".xml",
            onclick:"cargarVersiculo(this)"

          },xmldoc[i].attributes[2].value);


          menucapitulos.appendChild(_capitulo);
           contador++;
        }
        _lecturas.innerHTML = "";
        _lecturas.appendChild(titulocap);
        _lecturas.appendChild(menucapitulos);
  })
}

function cargarVersiculo(est){
        actual = est;
        anterior = est.previousElementSibling;
        siguiente = est.nextElementSibling;
  let _urlv = est.getAttribute('url'),
      tituloversiculo = est.textContent;
      console.log(tituloversiculo)
  obtenerJSON(_urlv).then((data) => {
    //console.log(data);
    versiculos1= JSON.parse(data)
    let _lectv = document.querySelector('#versiculos'),
        _tituloversiculo = _dom('div',{class:"tituloversiculo"},tituloversiculo),

        versiculos = _dom('ul',{class:"versiculos"},"")

        for(let i in versiculos1){
          let versiculo = _dom('li',{
            ig:versiculos1[i][0],//ig=identificador global
            class:"versiculo",
            //onclick:"opciones(this)",
            contextmenu:"mymenu",
            oncontextmenu:"crearfavoritos(this)"
          },
            versiculos1[i][1])
          versiculos.appendChild(versiculo)
        }

        _lectv.innerHTML = "";
        _lectv.appendChild(_tituloversiculo);
        _lectv.appendChild(versiculos);
  })
  contadorlec = parseInt(est.getAttribute('capitulo'));
}

//funcion para cargar los archivos xml via ajax con promesas
function obtenerXML(url){
  return new Promise(function(resolve,reject){
    
    http = new XMLHttpRequest()   
    
     http.open('GET',url);
     http.onload = function(){
      if(this.status==200){
        resolve(this.responseXML)
      }
     }
    http.send();
   
 })
}
function obtenerJSON(url){
 return new Promise(function(resolve,reject){
   
   http = new XMLHttpRequest()   
   
    http.open('GET','cargarversiculos.php?versiculo='+url+"&favoritos="+configuraciones.children[4].children[0].checked);
    http.onload = function(){
     if(this.status==200){
       resolve(this.response)
     }
    }
   http.send();
  
})
}

function ant(anterior){
  anterior.click();
}
function sig(siguiente){
  siguiente.click()
}
function buscar(este){
 let busqueda= este.previousElementSibling.value;
  renderizar(busqueda).then((data)=>{
    datosbusqueda = data;
    mostrarEnVentana(data);
  });
}

function renderizar(busqueda){
  return new Promise(function(resolve,reject){
    
    http = new XMLHttpRequest()   
    
     http.open('GET','buscar.php?busqueda='+busqueda);
     http.onload = function(){
      if(this.status==200){
        resolve(this.response)
      }
     }
    http.send();
   
 })
}

function mostrarEnVentana(data){
  let versiculos = document.querySelector('#versiculos');
      versiculos.innerHTML=data;
}
//function para agregar los versiculos a favoritos
function favoritos(este){
 let actual = "";
 let favoritos = [];
 return {
    getactual:function(){
      return actual;
    },
    get:function(){
      return favoritos;
    },
    set:function(este){
      actual = este;
    },
    agregarFavoritos:function(este){
      favoritos.push(este);
    }
    }
 }
//no he podido mantener el contexto ojoooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo
 function crearfavoritos(este){
  if(este){
    return this.objetofavoritos ? this.objetofavoritos.set(este) : this.objetofavoritos=favoritos(este);
  }else{
        this.objetofavoritos.agregarFavoritos(this.objetofavoritos.getactual());
    return this.objetofavoritos.getactual().style.color='red';
  }
 }
