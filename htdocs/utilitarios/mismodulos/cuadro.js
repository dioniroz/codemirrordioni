(function (){
var cuadro,p;
p = document.createElement('p');
cuadro = document.createElement('div');
cuadro.setAttribute('id','cuadro');
document.body.appendChild(cuadro);
cuadro.appendChild(p);
cuadro.style.width = '200px';
cuadro.style.height = '50px';
cuadro.style.border = '2px solid blue';
cuadro.style.position = 'fixed';
cuadro.style.top = '0px';
cuadro.style.right = '0px';
cuadro.style.zIndex = 11;
setInterval(function(){cuadro.firstChild.textContent = JSClock()},1000)
})();

function JSClock() {
  var time = new Date();
  var hour = time.getHours();
  var minute = time.getMinutes();
  var second = time.getSeconds();
  var temp = "" + ((hour > 12) ? hour - 12 : hour);
  if (hour == 0)
    temp = "12";
  temp += ((minute < 10) ? ":0" : ":") + minute;
  temp += ((second < 10) ? ":0" : ":") + second;
  temp += (hour >= 12) ? " P.M." : " A.M.";
  return temp;
}
