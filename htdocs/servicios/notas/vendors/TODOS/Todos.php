<?php 
namespace vendors\TODOS;

class Todos extends DBAbstractModel {
	##############propiedades##################
	public $resultado;
	public $id;

	public function get(){
		$this->query = "
				select * from notas
				";
				$this->get_results_from_query();
				$this->resultado = $this->rows;
	}
	#Crear un nuevo usuario
	public function set() {
		$this->query = "
					
 					";
					$this->execute_single_query();
	}
	#modificar usuario
	public function edit() {
			$this->query= "
			
				";
			$this->id=$id;
			$this->execute_single_query();

	}
	#Eliminar un usuario
	Public function delete($clave = "") {
		$this->query= "
			DELETE FROM notas WHERE id = '$clave'
				";
			$this->execute_single_query();
	}
	Public function filtrar($filtro){
		if($filtro=='todos'){
			$this->query = "
			SELECT id,title,nota,top,'left',fecha from notas;
			";
		}else{
		$this->query = "
			SELECT id,title,nota,top,'left',fecha FROM notas WHERE etiqueta LIKE '%$filtro%'
		";
		}
		$this->get_results_from_query();
		$this->resultado = $this->rows;
	}

	public function etiqueta($etiqueta,$comentarios='sin comentario'){
		$this->query = "
					INSERT INTO `etiquetas` ( `etiqueta`, `comentarios`) VALUES ('$etiqueta','$comentarios')
 					";
					$this->execute_single_query();
	}
}
 ?>