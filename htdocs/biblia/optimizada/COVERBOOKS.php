<?php 
$j=(array_key_exists('j', $_REQUEST)) ? json_decode($_REQUEST['j']) : json_decode(file_get_contents('lecturas.txt')) ;
if($j->libro){
    chdir('COVERBOOKS');
}
    
     if(isset($j->libro)){
        echo json_encode(simplexml_load_file($j->libro.'.xml'));
    }else{
        echo 'no se pudo cargar el libro';
    }


 ?>