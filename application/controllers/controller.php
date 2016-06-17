<?php
$data = json_decode(file_get_contents("php://input"));
include('../models/model.php');

switch ($data->pageName) {

	case 'index':
	include('../models/indexMdl.php');
	$db = new DB();
	switch ($data->functionName) {

		case 'getLinks':
		$data = $db->getLinks();
		break;
	}
	break;


	case 'news':
	include('../models/newsMdl.php');	
	$db = new DB();
	switch ($data->functionName) {

		case 'getNews':
		$data = $db->getNews();
		break;
	}
	break;


	case 'programs':
	include('../models/programsMdl.php');
	$db = new DB();
	switch ($data->functionName) {

		case 'getPrograms':
		$data = $db->getPrograms();
		break;
	}
	break;


	case 'teachers':
	include('../models/teachersMdl.php');
	$db = new DB();
	switch ($data->functionName) {

		case 'getTeachers':
		$data = $db->getTeachers();
		break;

		case 'getImages':
		$data = $db->getImages($data->teacherId);
		break;
	}
	break;


	case 'students':
	include('../models/studentsMdl.php');
	$db = new DB();
	switch ($data->functionName) {

		case 'getWaves':
		$data = $db->getWaves();
		break;

		case 'getStudents':
		$data = $db->getStudents();
		break;

		case 'getPrograms':
		$data = $db->getPrograms();
		break;
	}
	break;


	case 'projects':
	include('../models/projectsMdl.php');
	$db = new DB();
	switch ($data->functionName) {

		case 'getProjects':
		$data = $db->getProjects();
		break;

		case 'getPartners':
		$data = $db->getPartners();
		break;
	}
	break;


	case 'admin':
	include('../models/adminMdl.php');
	$db = new DB();
	switch ($data->functionName) {

		case 'login':
		$data = $db->login($data->login, $data->password);
		break;

		case 'checkAdmin':
		$data = $db->checkAdmin();
		break;

		case 'addNews':
		$data = $db->addNews($data->title, $data->image, $data->info, $data->descriptionShort, $data->descriptionLong);
		break;

		case 'addPrograms':
		$data = $db->addPrograms($data->name, $data->image, $data->info, $data->description);
		break;

		case 'addTeachers':
		$data = $db->addTeachers($data->name, $data->image, $data->info, $data->portfolio, $data->status);
		break;

		case 'addStudents':
		$data = $db->addStudents($data->name, $data->image, $data->info, $data->portfolio, $data->programId, $data->waveId);
		break;

		case 'addProjects':
		$data = $db->addProjects($data->name, $data->image, $data->description, $data->link);
		break;

		case 'addPartners':
		$data = $db->addPartners($data->name, $data->image, $data->description, $data->link);
		break;

		case 'addWaves':
		$data = $db->addPartners($data->name, $data->year);
		break;

		case 'addLinks':
		$data = $db->addLinks($data->name, $data->link);
		break;

		case 'delete':
		$data = $db->delete($data->tableName, $data->id);
		break;
	}
	break;
}
echo json_encode($data);