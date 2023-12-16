<?php 
namespace vendors\consultadb;

class Biblia extends DBAbstractModel {
	##############propiedades##################
	public $nombre;
	public $resultado;
	public $apellido;
	public $email;
	private $clave;
	protected $id;
	
	public function get(){
		$this->query = "SELECT  favoritos FROM 	biblia ";
				
				$this->get_results_from_query();
				$this->resultado = $this->rows;
	}
	#Crear un nuevo usuario
	public function set($idfavorito = "",$json='{}',$libro="",$capitulo="") {
		$this->query= "
					INSERT INTO biblia
					(favoritos,json,libro,capitulo)
					VALUES
					('$idfavorito','$json','$libro','$capitulo')
					";
					$this->execute_single_query();
	}
	#modificar usuario
	public function edit() {

	}
	#Eliminar un usuario
	Public function delete() {
		
	}
	public function json(){
		$this->query = "
				SELECT favoritos,libro,capitulo FROM biblia ORDER BY favoritos
				";
				$this->get_results_from_query();
				$this->resultado = $this->rows;
	}
	public function cargarfavoritos(){
		$this->query = "
				SELECT fecha,acontecimiento,libro FROM timelineat
				";
		$this->get_results_from_query();
		$this->resultado = $this->rows;
	}
}
 ?>