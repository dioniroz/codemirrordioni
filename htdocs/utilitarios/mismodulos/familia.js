//"use strict";
//constructor familia
function familia(hijos){
  this.array = [];
this.hijos = hijos;
}

familia.prototype.mostrarHijos = function(){
for(hijo in this.hijos){
console.log(hijo)
}
}

familia.prototype.mostrarNietos = function (){
for(hijo in this.hijos){
  for(var nieto=0;nieto<this.hijos[hijo].length;nieto++)
      console.log(this.hijos[hijo][nieto])
  }
}
familia.prototype.arrayNietos = function(){
  for(hijo in this.hijos){
  for(var nieto=0;nieto<this.hijos[hijo].length;nieto++)
      this.array.push(this.hijos[hijo][nieto])
  }
  return this.array
}

familia.prototype.mostrar = function(){
  return this.array;
}

//argumento para el constructor familia
var hijosdemariluz = {
             zulay:['marjorie','richard','alberth','mariana','jonier'],
             carolina:['jhonny','nidea','maria'],
             dioni:['diani'],
             kenisey:['hillay'],
             jonathan:[0]
            }
var hijosdeines = {
                   jesika:['jesika junior'],
                   juancarlos:['primer@','segund@'],
                   jurigle:['niguno'],
                   amingol:['ninguno']
                  }

var mariluz = new familia(hijosdemariluz);
var ines =    new familia(hijosdeines);