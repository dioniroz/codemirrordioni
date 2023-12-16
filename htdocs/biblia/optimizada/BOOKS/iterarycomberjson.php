<!DOCTYPE html>
    <html lang="es">
    <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"> 
            <title></title>
            <style type="text/css">
                img{
  width: 100px;
}   
            </style>
    </head>
    <body>

<?php

function showFiles($path,$buscar=null){
    $dir = opendir($path);
    $files = array();
    echo "<div class=\"carpeta\">";
    while ($current = readdir($dir)){
        if( $current != "." && $current != "..") {

            if(is_dir($path.$current)) {

                echo '<h1>'.$path.$current."</h1>";
                showFiles($path.$current.'/',$buscar);
            }
            else {
                if(is_file($path.$current)&&validarArchivo($path.$current)){
                    $json=json_encode(simplexml_load_file($path.$current));
                    file_put_contents($path.separarnombredelxml($current).'.json', $json);
                    //echo '<li>'.$path.$current.'</li>';
                    //echo '<li>'.separarnombredelxml($current).'</li>';
                }
            }
           
        }
    }
    echo "</div>";
    }
    
    function validarArchivo($actual){
        $expresion='/.xml$/';
    return preg_match($expresion, $actual);
    }
    function separarnombredelxml($nombre){
        $nom=explode('.',$nombre);
        return $nom[0];
    }

 showFiles('./');
 ?>


    </body>
</html>