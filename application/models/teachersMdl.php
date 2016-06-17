<?php
	class DB extends Model {
	  public function __construct() {
	     $this->db_connect();
	  }

		public function getTeachers() {
			$query = $this->DBH->prepare("SELECT * FROM teachers");
			$query->execute();
			$data = $query->fetchAll(PDO::FETCH_ASSOC);
			return $data;
		}
		
		public function getImages($teacherId) {
		$this->data = glob("../../img/portfolio/".$teacherId."/*.jpg");
		return $this->data;
		}
	}
?>