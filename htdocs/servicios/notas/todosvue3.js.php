		<?php 
		header("Access-Control-Allow-Origin: *");
 		header('Content-Type: text/html; charset=utf-8');
		include 'vendors/autoload.php';
use vendors\TODOS\Todos;
use vendors\NOTAS\Notas;
$N = new Notas();
$N->etiquetas();
$N=$N->resultado;
$N=json_encode($N);
$n = new Todos();
$n->get();
$n = $n->resultado;
$n = json_encode($n);
 ?>
		
		var notas = <?=$n;?>;
		var etiquetas = <?=$N;?>;

		