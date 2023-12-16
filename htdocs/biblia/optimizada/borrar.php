<?php 
		$libro=file_get_contents('lecturas.txt');
  		$j= json_decode($libro);
	  $libros  = json_encode(simplexml_load_file('BOOKS/'.$j->libro.'/'.'index.xml'));
	  var_dump($libros);
 ?>