<?php 
	if(array_key_exists('j', $_REQUEST)){
		$j = $_REQUEST['j'];
		file_put_contents('lecturas.txt', $j);
		echo $j;
	}else{
		echo file_get_contents('lecturas.txt');
	}
	

 ?>