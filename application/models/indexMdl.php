<?php
	class DB extends Model {
	  public function __construct() {
	     $this->db_connect();
	  }
		public function getLinks() {
			$query = $this->DBH->prepare("SELECT * FROM links");
			$query->execute();
			$data = $query->fetchAll(PDO::FETCH_ASSOC);
			return $data;
		}
	}
?>