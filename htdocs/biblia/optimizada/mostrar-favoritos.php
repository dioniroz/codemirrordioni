<?php 
	include './vendors/autoload.php';
use vendors\consultadb\Biblia;
$favoritos = new Biblia();
$favoritos->json();
  
echo json_encode($favoritos->resultado);
 ?>