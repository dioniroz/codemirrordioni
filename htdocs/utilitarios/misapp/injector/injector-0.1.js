jquery = [
"http://127.0.0.1/utilitarios/jquery/jquery-1.10.2.js",
"http://127.0.0.1/utilitarios/jquery/jquery-1.10.2.min.js",
"http://127.0.0.1/utilitarios/jquery/jquery-1.7.1.js",
"http://127.0.0.1/utilitarios/jquery/jquery-1.9.0.min.js",
"http://127.0.0.1/utilitarios/jquery/jquery-2.0.3.js",
"http://127.0.0.1/utilitarios/jquery/jquery-ui.min.js",
"http://127.0.0.1/utilitarios/jquery/jquery.min.js"
];

var script = document.createElement('script');
    select = document.createElement('select');
    select.setAttribute('name','jquery');
    select.setAttribute('id','select');

function evento(){
    select.addEventListener('change',function(){
        alert(select.value);
    })
}

  var select = document.getElementById('select') || select;
    evento(select);
for(i=0;i<jquery.length;i++){
    var constante = "http://127.0.0.1/utilitarios/jquery/";
  var option = document.createElement('option');
    option.setAttribute('value',jquery[i]);
    valor = jquery[i].slice(constante.length,jquery[i].length-3);
        option.textContent = valor;
    select.appendChild(option);
    console.log(select);
}

document.body.appendChild(select);