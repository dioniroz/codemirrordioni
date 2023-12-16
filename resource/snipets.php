<?php 
	
	function combertirarchivosarray($dir='./'){
		//chdir($dir);
		 $iterador = new DirectoryIterator($dir);
		 $arr = [];
		  foreach ($iterador as $fileinfo) {
		  	$ar =[];
			$c = $fileinfo->getfilename();
			if(validarArchivo($c)){
				$archivovalor= file_get_contents(__dir__.'\\plantillas\\'.$c);
				$nombre = retornarnombre($c);

				$arr[$nombre]=$archivovalor;
			}

		  }
		  $mostrar=json_encode($arr);
		  $arrjson = 'var script = '.$mostrar;
		  //chdir('..');
		  file_put_contents('script.js', $arrjson);
		  echo $mostrar;

	}
	 function validarArchivo($actual){
        
         $expresion='/.html$/';
         return preg_match($expresion, $actual);
     }
     

    function retornarnombre($actual){
    	return str_replace('.html', "", $actual);
    }

	if(array_key_exists('actualizar', $_REQUEST)){
		$actualizar = $_REQUEST['actualizar'];
		combertirarchivosarray('.\\plantillas');
	}else{
		combertirarchivosarray('.\\plantillas');
	}
 ?>