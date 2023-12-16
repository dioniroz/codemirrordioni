

function mostrar(este){
 valorclass.value=este.className;
 c(este.className)
}
function abrir(){
  http = new XMLHttpRequest();
  http.open('get','abrir.php',false);
  http.send();
  console.log(http.response);
}