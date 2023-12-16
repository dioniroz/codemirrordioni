function forEachIn(object, action) {
  for (var property in object) {
    if (Object.prototype.hasOwnProperty.call(object, property))
      action(property, object[property]);
  }
}

var test = {name: "Mordecai", hasOwnProperty: "Uh-oh"};
forEachIn(test, function(name, value) {
  console.log("Property ", name, " = ", value);
});

function Dictionary(startValues) {
  this.values = startValues || {};
}
Dictionary.prototype.store = function(name, value) {
  this.values[name] = value;
};
Dictionary.prototype.lookup = function(name) {
  return this.values[name];
};
Dictionary.prototype.contains = function(name) {
  return Object.prototype.hasOwnProperty.call(this.values, name) &&
    Object.prototype.propertyIsEnumerable.call(this.values, name);
};
Dictionary.prototype.each = function(action) {
  forEachIn(this.values, action);
};
//Dictionary.prototype.mostrar = function()

var colours = new Dictionary({Grover:"blue",Elmo:"orange",Bert:"yellow"});
colours.contains("Grover");
colours.contains("constructor");
colours.each(function(name, colour) {
  console.log(name, " is ", colour);
});

function mostrar(){
  let ul=document.createElement('ul');
  colours.each(function(name,colour){
    let li=document.createElement('li');
    li.textContent =`${name} : ${colour}`
    ul.appendChild(li);
  })
  document.body.appendChild(ul);
}
function agregarpalabra(){
  alert('palabra')
}


