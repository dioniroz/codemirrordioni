var script = document.createElement('script'),css = document.createElement('link');
    script.setAttribute('src','injector-0.1.js');
    script.setAttribute('id','injector');
    css.setAttribute('rel','stylesheet');
    css.setAttribute('href','css/injector.css');
    var divbody = document.createElement('div');
        divbody.setAttribute('id','el');

    var plantilla = "\<div id\=\"elementos\"\>\<div\>otro\<\/div\>\<\/div\>";
   document.head.appendChild(css);
   document.head.appendChild(script);
   document.body.appendChild(divbody);
   var divBody = document.getElementById('el');

   divBody.innerHTML = plantilla;

