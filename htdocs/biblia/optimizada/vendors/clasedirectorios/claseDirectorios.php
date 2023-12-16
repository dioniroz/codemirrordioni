<?php 
namespace vendors\clasedirectorios;
use DirectoryIterator;

class claseDirectorios extends validarimagenes
{
	public $path;

	public $iterador;

	public $carpetas = [];

	public $archivos = [];

	public $imagenes = [];

	public $audio = [];

	function __construct($path = '.\\') {
        $this->path = $path;
		$this->iterador = new DirectoryIterator($path);
		$iterador = $this->iterador;
		foreach ($iterador as $fileinfo) {
			$c = $fileinfo->getPathname();
   if(is_dir($c)){
   			$carpeta = [];
   			array_push($carpeta, $c);
   			array_push($carpeta, $fileinfo->getfilename());
			array_push($this->carpetas, $carpeta);

	   }elseif ($this->validarimagenfile($c,'.jpg|.png')) {
	   $imagenes =[];
	   		array_push($imagenes, $c);
	   		array_push($imagenes, $fileinfo->getfilename());
	   		array_push($this->imagenes, $imagenes);
	   }
	   elseif ($this->audiovideo($c,'.mp3')) {
	   $audio =[];
	   		array_push($audio, $c);
	   		array_push($audio, $fileinfo->getfilename());
	   		array_push($this->audio, $audio);
	   }else{
	   		$file = [];
	   		array_push($file, $c);
	   		array_push($file, $fileinfo->getfilename());
	   		array_push($this->archivos, $file);
	   }

	}

	}

	public function showFiles(){
	foreach ($this->carpetas as $value) {
		$template = <<<eot
            <li 
            class="carpeta" 
            onclick="recargardirectorio(getAttribute('path'))" 
            path="{$value[0]}">{$value[1]}
            <span class="iconocarpeta ico carver"
            </li>\n 
eot;
echo $template;
	}
	foreach ($this->archivos as $value) {
		$template = <<<eot
            <li 
            path="{$value[0]}"
            class="lista"
            style="color:black;"
            onclick="cargarencodemirror(this)" 
            >{$value[1]}
            </li>\n 	
eot;
echo $template;
	}
	foreach ($this->imagenes as $value) {
		$template = <<<eot
            <li 
            path="{$value[0]}"
            class="lista"
            style="color:black;"
            onclick="cargarimagen(this)" 
            >{$value[1]}
            </li>\n 	
eot;
echo $template;
	}
	foreach ($this->audio as $value) {
		$template = <<<eot
            <li 
            path="{$value[0]}"
            class="lista"
            style="color:black;"
            onclick="cargaraudio(this)" 
            >{$value[1]}
            </li>\n 	
eot;
echo $template;
	}
   }

}

 ?>