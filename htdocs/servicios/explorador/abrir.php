<?php 
$abrir = $_GET['ruta'] ? $abrir=$_GET['ruta'] : $abrir = '%cd%';
exec('explorer '.$abrir);
echo 'listo';
echo $abrir;
 ?>