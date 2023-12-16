<?php
	header("Access-Control-Allow-Origin: *");
 	header('Content-Type: text/html; charset=utf-8');
?>
			<!DOCTYPE html>
	<html lang="es">
	<head>
			<meta charset="utf-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">	
			<title>explorador</title>
			<link rel="stylesheet" href="http://localhost:8000/utilitarios/glyicons/glyicons.css">
			<script src="http://localhost:8000/utilitarios/contextmenu/contextmenu.js"></script>
			<script src="http://localhost:8000/utilitarios/helpers/helpers.js"></script>
	</head>
	<body>
		<div id="explorador">
			<?php include('explorador.php'); ?>
		</div>
		<script src="js/explorador.js"></script>
	</body>
</html>
