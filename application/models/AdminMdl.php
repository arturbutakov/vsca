<?php
class DB extends Model {
	public function __construct() {
		$this->db_connect();
	}

	public function generateCode($length = 6) {
		$chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIFJKLMNOPRQSTUVWXYZ0123456789";
		$code  = "";
		$clen  = strlen($chars) - 1;
		while (strlen($code) < $length) {
			$code .= $chars[mt_rand(0, $clen)];
		}
		return $code;
	}

	public function login($login, $password) {
		$query = $this->DBH->prepare("SELECT * FROM admin WHERE login=:login LIMIT 1");
		$query->bindParam(':login', $login);
		$query->execute();
		$data = $query->fetch(PDO::FETCH_ASSOC);

		if ($data['password'] === md5($password)) {
				    # Генерируем случайное число и шифруем его
			$hash = md5($this->generateCode(10));
				    # Записываем в БД новый хеш авторизации 
			$query = $this->DBH->prepare("UPDATE admin SET hash=:hash WHERE login=:login");
			$query->bindParam(':hash', $hash);
			$query->bindParam(':login', $login);
			$query->execute();
				    # Ставим куки
			setcookie("hash", $hash, time() + 60 * 60 * 24 * 30, "/");
			$data = 1;
		} else {
			$data = 0;
		}
		return $data;
	}

	public function checkAdmin() {
		$query = $this->DBH->prepare("SELECT * FROM admin LIMIT 1");
		$query->execute();
		$data = $query->fetch(PDO::FETCH_ASSOC);

		if ($data['hash'] == $_COOKIE['hash']) {
			$data = 1;
		} else {
			setcookie("hash", "", time() - 3600*24*30*12, "/");
			$data = 0;
		}
		return $data;
	}

	public function addNews($title, $image, $info, $descriptionShort, $descriptionLong) {
		
		$query = $this->DBH->prepare("INSERT INTO news SET title=:title, image=:image, info=:info, descriptionShort=:descriptionShort, descriptionLong=:descriptionLong");
		$query->bindParam(':title', $title);
		$query->bindParam(':image', $image);
		$query->bindParam(':info', $info);
		$query->bindParam(':descriptionShort', $descriptionShort);
		$query->bindParam(':descriptionLong', $descriptionLong);
		$query->execute();
	}

	public function addPrograms($name, $image, $info, $description) {
		$query = $this->DBH->prepare("INSERT INTO programs SET name=:name, image=:image, info=:info, description=:description");
		$query->bindParam(':name', $name);
		$query->bindParam(':image', $image);
		$query->bindParam(':info', $info);
		$query->bindParam(':description', $description);
		$query->execute();
	}

	public function addTeachers($name, $image, $info, $portfolio, $status) {
		$query = $this->DBH->prepare("INSERT INTO teachers SET name=:name, image=:image, info=:info, portfolio=:portfolio, status=:status");
		$query->bindParam(':name', $name);
		$query->bindParam(':image', $image);
		$query->bindParam(':info', $info);
		$query->bindParam(':portfolio', $portfolio);
		$query->bindParam(':status', $status);
		$query->execute();
	}

	public function addStudents($name, $image, $info, $portfolio, $programId, $waveId) {
		$query = $this->DBH->prepare("INSERT INTO students SET name=:name, image=:image, info=:info, portfolio=:portfolio, programId=:programId, waveId=:waveId");
		$query->bindParam(':name', $name);
		$query->bindParam(':image', $image);
		$query->bindParam(':info', $info);
		$query->bindParam(':portfolio', $portfolio);
		$query->bindParam(':programId', $programId);
		$query->bindParam(':waveId', $waveId);
		$query->execute();
	}

	public function addProjects($name, $image, $description, $link) {
		$query = $this->DBH->prepare("INSERT INTO projects SET name=:name, image=:image, description=:description, link=:link");
		$query->bindParam(':name', $name);
		$query->bindParam(':image', $image);
		$query->bindParam(':description', $description);
		$query->bindParam(':link', $link);
		$query->execute();
	}

	public function addPartners($name, $image, $description, $link) {
		$query = $this->DBH->prepare("INSERT INTO partners SET name=:name, image=:image, description=:description, link=:link");
		$query->bindParam(':name', $name);
		$query->bindParam(':image', $image);
		$query->bindParam(':description', $description);
		$query->bindParam(':link', $link);
		$query->execute();
	}

	public function addWaves($name, $year) {
		$query = $this->DBH->prepare("INSERT INTO waves SET name=:name, year=:year");
		$query->bindParam(':name', $name);
		$query->bindParam(':year', $year);
		$query->execute();
	}

	public function addLinks($name, $link) {
		$query = $this->DBH->prepare("INSERT INTO links SET name=:name, link=:link");
		$query->bindParam(':name', $name);
		$query->bindParam(':link', $link);
		$query->execute();
	}

	public function delete($tableName, $id) {
		$query = $this->DBH->prepare("DELETE FROM $tableName WHERE id=:id");
		$query->bindParam(':id', $id);
		$query->execute();
	}
}
?>