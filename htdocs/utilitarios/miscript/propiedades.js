//acontinuacion voy a utilizar el patron monkey pachin para mostrar las propiedades de un objeto
//uno que muestre nombre las propiedades
//uno-uno que muestre el valor de las propiedades
//dos que muestre el nombre de los metodos
//dos-uno que muestre el nombre de los metodos
//tres que muestre 

Object.prototype.properties = function() {
  var result = [];
  for (var property in this)
    if (this.hasOwnProperty(property))
        result.push(property);
  return result;
}

 var d = Object.prototype;

Object.defineProperty(d, "propiedades", {

get: function() {return this.properties() }

});