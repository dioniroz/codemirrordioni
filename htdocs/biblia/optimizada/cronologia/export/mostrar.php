<?php 

$mysql=new mysqli('localhost','root','','biblia');
								
$fechas=file('fecha1.txt');
$acontecimiento=file('acontecimiento1.txt');
$ubicacion=file('ubicacion1.txt');

/*
foreach ($fechas as $key => $value) {
	$mysql->query("
		INSERT INTO timelinent (`fecha`,`acontecimiento`,`libro`) VALUES ('$value','$acontecimiento[$key]','$ubicacion[$key]');
	");
}
*/
//echo 'las consultas estan comentadas para que no se repitan';

$mysql->close();
 ?>