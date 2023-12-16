<?php 
$abrir = $_GET['ruta'] ? $abrir=$_GET['ruta'] : $abrir = '%cd%';
exec('explorer '.$abrir);//si sistem is windows
exec('nautilus '.$abrir);//si sitem es es ubuntu linux
echo 'listo';
echo $abrir;
 ?>
