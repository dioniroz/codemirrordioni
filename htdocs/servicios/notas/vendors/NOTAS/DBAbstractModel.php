<?php 
namespace vendors\NOTAS;
use mysqli;
abstract class DBAbstractModel {

	private static $db_host = "127.0.0.1";
	private static $db_user = "root";
	private static $db_pass = "admin";
	protected $db_name = 'notas';
	protected $query;
	protected $rows = array();
	private $conn;
	public $mensaje = "Hecho";
	public $id = 1;

	#metodos abstractos para ABM de clases que hereden
	abstract protected function get();
	abstract protected function set();
	abstract protected function delete();
	abstract protected function edit();

#los siguientes metodos pueden definirse con exactitud y 
#no son abstractos
#Conectar a la base de datos
	private function open_connection() {
		$this->conn = new mysqli(self::$db_host, self::$db_user,
								self::$db_pass, $this->db_name);
	}

	#Desconectar la base de datos
	private function close_connection(){
			$this->conn->close();
	}

	#Ejecutar un query simple del tipo INSERT, DELETE, UPDATE
	protected function execute_single_query() {
		
			$this->open_connection();
			$this->conn->query($this->query);
			$this->id = $this->conn->insert_id;
			$this->close_connection();
	}

	#Traer resultados de una consulta en un Array
	protected function get_results_from_query() {
		$this->open_connection();
		$result = $this->conn->query($this->query);
		$this->id = $this->conn->insert_id;
		
//		echo $result;

		while ($this->rows[] = $result->fetch_assoc());
		//while ($this->rows[] = $result->fetch_array());
		
		$result->close();
		$this->close_connection();
		array_pop($this->rows);
	}
}
 ?>

