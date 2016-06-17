<?php
	class DB extends Model {
	  public function __construct() {
	     $this->db_connect();
	  }
		public function getNews() {
			$query = $this->DBH->prepare("SELECT * FROM news");
			$query->execute();
			$data = $query->fetchAll(PDO::FETCH_ASSOC);
			return $data;
		}
	}
?>