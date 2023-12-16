<?php
//var_dump($_REQUEST);
if(array_key_exists('j', $_REQUEST)){
	$j= $_REQUEST['j'];
}
	function validarArchivo($actual){
        $expresion='/.html$/';
    return preg_match($expresion, $actual);
    }

	
	$j = json_decode($j);
	if(validarArchivo($j->name)){
		chdir('plantillas');
	file_put_contents($j->name, $j->valoreditor);
	echo 'se guardo';
	}

		
	

 ?>