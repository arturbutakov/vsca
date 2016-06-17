<?php
	class DB extends Model {
	  public function __construct() {
	     $this->db_connect();
	  }
		public function getPrograms() {
			$query = $this->DBH->prepare("SELECT * FROM programs");
			$query->execute();
			$data = $query->fetchAll(PDO::FETCH_ASSOC);
			return $data;
		}
	}
?>