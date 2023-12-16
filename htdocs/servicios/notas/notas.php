<?php 
 header("Access-Control-Allow-Origin: *");
 header('Content-Type: application/json; charset=utf-8');
 header('Access-Control-Allow-Credentials: true');
 header('Access-Control-Allow-Methods: PUT, GET, POST, DELETE, OPTIONS');
 header("Access-Control-Allow-Headers: X-Requested-With");
 header('Content-Type: text/html; charset=utf-8');
 header('P3P: CP="IDC DSP COR CURa ADMa OUR IND PHY ONL COM STA"');
include 'vendors/autoload.php';
use vendors\NOTAS\Notas;
//j is objet json as data vnota,top,left,fechad,etiqueta
if(array_key_exists('j',$_REQUEST)){
	$j= json_decode($_REQUEST['j']);
}
//file_put_contents('enviado', $j->fechad);
$n = new Notas();

$uri = $_SERVER['REQUEST_URI'];

$peticiones = array('create','get','set','edit','delete','etiquetas');

foreach ($peticiones as $peticion) {
		if( strpos($uri, $peticion) == true ) {
			$event = $peticion;
		}
	}
	switch($event) {
		case 'get':
			$n->get($j->id);
			$j = $n->resultado;
			$j[0]['editar'] = 'true';
			echo json_encode($j[0]);
			break;
		case 'set':
			$n->set($j->title, $j->vnota, $j->top, $j->left,$j->fechad,$j->etiqueta1);
			$n->get($n->id);
			$j = $n->resultado;
			$j[0]['editar'] = 'true';
			echo json_encode($j[0]);
			break;
		case 'edit':
			$n->edit($j->vid, $j->title, $j->vnota, $j->top, $j->left,$j->fechad);
			$n->get($j->vid);
			$j = $n->resultado;
			$j[0]['editar'] = 'true';
			$j[0]['idservidor'] = $n->id;
			echo json_encode($j[0]);
			break;
		case 'create':
			$n->create();
			echo 'tabla creada';
			break;
		case 'etiquetas':
			$n->etiquetas();
			$j = $n->resultado;
			echo json_encode($j);
			break;
		case 'delete':

			break;

		default:
			
	}
 ?>