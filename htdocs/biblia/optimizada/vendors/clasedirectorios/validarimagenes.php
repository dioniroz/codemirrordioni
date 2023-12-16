<?php 
namespace vendors\clasedirectorios;

class validarimagenes{
	public function validarimagenfile($actual,$expresion){
		$expresion = <<<eot
        /{$expresion}$/
eot;
    return preg_match($expresion, $actual);
	}
	public function audiovideo($actual,$expresion){
		$expresion = <<<eot
        /{$expresion}$/
eot;
    return preg_match($expresion, $actual);
	}
}

 ?>