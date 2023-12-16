		<?php 
 		header("Access-Control-Allow-Origin: *");
 		//header('Content-Type: application/json; charset=utf-8');
 		//header('Access-Control-Allow-Credentials: true');
 		//header('Access-Control-Allow-Methods: PUT, GET, POST, DELETE, OPTIONS');
 		//header("Access-Control-Allow-Headers: X-Requested-With");
 		header('Content-Type: text/html; charset=utf-8');
 		//header('P3P: CP="IDC DSP COR CURa ADMa OUR IND PHY ONL COM STA"');
		include 'vendors/autoload.php';
use vendors\TODOS\Todos;

if(array_key_exists('j',$_REQUEST)){
	$j= json_decode($_REQUEST['j']);
}
$n = new Todos();

$uri = $_SERVER['REQUEST_URI'];

$peticiones = array('/','create','get','set','edit','delete','filtrar','etiqueta');

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
		case '':
			$n->get(1);
			$j = $n->resultado;
			$j[0]['editar'] = 'true';
			echo json_encode($j[0]);
			
			break;
		case 'set':
			$n->set($j->title, $j->vnota, $j->top, $j->left,$j->fechad);
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
		case 'delete':
			$n->delete($j->clave);
			$n->filtrar($j->filtro);
			$j = $n->resultado;
			echo json_encode($j);
			break;
			case 'filtrar':
			$n->filtrar($j->filtro);
			$j = $n->resultado;
			echo json_encode($j);
			break;
			case 'obtener':
			$n->get();
			$j = $n->resultado;
			echo json_encode($j);
			break;
			case 'etiqueta'://valido para $j->etiqueta si la etiqueta se creo con promt javascript
			$n->etiqueta($j->etiqueta);
			echo $j->etiqueta;

			break;
		default:
			
	}
 ?>