<?php
//dioni rozo libre licencia
//archivo de busqueda para renderizar los resultados
if($busqueda=$_GET['busqueda']);buscarCadena("./libros/",$busqueda);

function buscarCadena($path,$busqueda=null){
    $dir = opendir($path);
    while ($current = readdir($dir)){
        if( $current != "." && $current != "..") {
            if(is_dir($path.$current)) {
            	//echo $path.$current."<hr>";
                buscarCadena($path.$current.'/',$busqueda);
            }
            else {
            	if(is_file($path.$current)&&validarArchivo($path.$current)&&$current!='index.xml')
                    if($macht=BuscarEnArchivo($path.$current,$busqueda))
                    echo "<li onclick=\"cargarVersiculo(this)\" url=\"$macht\">$macht</li>";
            }
        }
    }
   closedir($dir);
    }
function BuscarEnArchivo($current,$busqueda){
	$archivo = file_get_contents($current);
 return (strpos($archivo,$busqueda)) ? $current : false;

}

function validarArchivo($current){
	$expresion='/.xml$/';
	return preg_match($expresion, $current);
}
 ?>
