<?php
class Model {
	public function db_connect() {
		try {  
			$this->DBH = new PDO("mysql:host=localhost;dbname=vsca", 'root', '');  
			$this->DBH->exec('set names utf8');
			$this->DBH->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION ); 
		}  
		catch(PDOException $e) {  
			$err[] = $e->getMessage;
			file_put_contents('PDOErrors.txt', $e->getMessage(), FILE_APPEND);
		}
	}
}
?>