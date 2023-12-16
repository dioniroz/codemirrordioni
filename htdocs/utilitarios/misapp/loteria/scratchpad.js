//construllendo mi app de loteria por dioni rozo
//version 1.0 05-04-2016 todos los derechos reservados
  var triples = 1000;
for(i=0;i<triples;i++){
  var listadenumeros = document.querySelector('#listadenumeros'),
      li=document.createElement('li'),
      numero = document.createTextNode(i);
      li.appendChild(numero);
      listadenumeros.appendChild(li)
}

var apartados = [];
var lista = document.getElementsByTagName('li');
for(i=0;i<lista.length;i++){
lista[i].addEventListener('click',function(){
apartados.push(this.textContent);
  apartados.length%10==0 ? alert(apartados) : console.log(this.textContent)
})
}

