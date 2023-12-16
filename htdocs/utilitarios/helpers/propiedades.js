Object.prototype.propi = function() {
  var result = [];
  for (var property in this)
    if (this.hasOwnProperty(property))
        result.push(property);
  return result;
}

 var d = Object.prototype;

Object.defineProperty(d, "prop", {

get: function() {return this.propi() }

});