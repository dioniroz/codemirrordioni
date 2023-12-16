<?php 
include './vendors/autoload.php';
use vendors\consultadb\Biblia;
$favoritos = new Biblia();
$favoritos->cargarfavoritos();
  
echo json_encode($favoritos->resultado);

 ?>