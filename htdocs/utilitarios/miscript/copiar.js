function copiar(este){
  // Crea un campo de texto "oculto"
  var aux= document.createElement("input");
  // asigna el contenido del elemento especificado al valor del campo
  aux.setAttribute("value", este.getAttribute('ruta'));
  
  document.body.appendChild(aux);
  // Selecciona el contenido del campo 
  aux.select();
  
  //Copia el texto seleccionado 
  document.execCommand("copy");
  
  //Elimina el campo de la pagina
  
  document.body.removeChild(aux);
}