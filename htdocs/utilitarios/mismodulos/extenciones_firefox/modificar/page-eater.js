var script=document.createElement('script'),
	link= document.createElement('link'),
	script2=document.createElement('script'),
	modulodom = document.createElement('script');
    script.setAttribute('src','http://127.0.0.1/utilitarios/requirejs/require.js');
  	script2.setAttribute('src','http://127.0.0.1/utilitarios/mismodulos/mi_menu_universal_1/mi_menu_universal_1.js');
  	modulodom.setAttribute('src','http://127.0.0.1/utilitarios/mismodulos/crearnodo.js');
    link.setAttribute('rel','stylesheet')
    link.setAttribute('href','http://127.0.0.1/utilitarios/mismodulos/mi_menu_universal_1/estilos.css');
    

      document.head.appendChild(link);
      document.head.appendChild(script);
      document.head.appendChild(script2);
      document.head.appendChild(modulodom);
      