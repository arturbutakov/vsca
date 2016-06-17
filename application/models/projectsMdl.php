<?php
	class DB extends Model {
	  public function __construct() {
	     $this->db_connect();
	  }
		public function getProjects() {
			$query = $this->DBH->prepare("SELECT * FROM projects");
			$query->execute();
			$data = $query->fetchAll(PDO::FETCH_ASSOC);
			return $data;
		}
		public function getPartners() {
			$query = $this->DBH->prepare("SELECT * FROM partners");
			$query->execute();
			$data = $query->fetchAll(PDO::FETCH_ASSOC);
			return $data;
		}
	}
?>