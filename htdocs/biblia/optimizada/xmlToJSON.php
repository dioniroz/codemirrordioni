<?php 
$j=(array_key_exists('j', $_REQUEST)) ? json_decode($_REQUEST['j']) : json_decode(file_get_contents('lecturas.txt')) ;
if($j->libro){
    chdir('BOOKS/'.$j->libro);
}
    
     if(isset($j->capitulo)){
        //echo json_encode(simplexml_load_file($j->capitulo.'.xml'));
        echo file_get_contents($j->capitulo.'.json');
    }else{
        //echo json_encode(simplexml_load_file('index.xml'));
        echo file_get_contents('index.json');
    }


 ?>