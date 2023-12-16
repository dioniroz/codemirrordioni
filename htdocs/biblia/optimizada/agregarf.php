<?php 
include './vendors/autoload.php';
use vendors\consultadb\Biblia;
if(array_key_exists('j', $_REQUEST)){
		$j = json_decode($_REQUEST['j']);
	}

$favoritos = new Biblia();
$favoritos->set($j->id,json_encode($j),$j->libro,$j->capitulo);
$favoritos->get();
$resultado = [];
  foreach ($re = $favoritos->resultado as $key => $value) {
      $resultado[] = $re[$key]['favoritos'];
  }
echo json_encode($resultado);
 ?>