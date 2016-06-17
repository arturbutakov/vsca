angular.module('controller',[])

.controller('newsCtrl',['$scope','$http', function($scope, $http) {
	$scope.showNews();
	$scope.count = 6;
	$scope.buttonValue = "Показать полностью...";
	$http.post('./application/controllers/controller.php',{'pageName':'news','functionName':'getNews'})
	.success(function(data) {
		$scope.news = data;
		for(var i in $scope.news) {
			$scope.news[i]['buttonValue'] = "Показать полностью...";
		}
	})
	$scope.loadNews = function() {
		$scope.count = $scope.count+6;
	}
	$scope.changeButton = function(id) {
		for(var i in $scope.news) {
			if ($scope.news[i]['id'] == id) {
				if ($scope.news[i]['buttonValue'] == "Показать полностью...") {
					$scope.news[i]['buttonValue'] = "Свернуть...";
				} else {
					$scope.news[i]['buttonValue'] = "Показать полностью...";
				}
			}
		}
	}
}])

.controller('programsCtrl',['$scope','$http', function($scope, $http) {
	$scope.showPrograms();
	$http.post('./application/controllers/controller.php',{'pageName':'programs','functionName':'getPrograms'})
	.success(function(data) {
		$scope.programs = data;
	})
}])

.controller('teachersCtrl',['$scope','$http', function($scope, $http) {
	$scope.showTeachers();
	$http.post('./application/controllers/controller.php',{'pageName':'teachers','functionName':'getTeachers'})
	.success(function(data) {
		$scope.teachers = data;
	});

	$scope.getPortfolio = function(teacherId) {
		$scope.teacherId = teacherId;
		$http.post('./application/controllers/controller.php',{'pageName':'teachers','functionName':'getImages','teacherId':teacherId})
		.success(function(data) {
			$scope.images = data;
		});
	}
}])

.controller('studentsCtrl',['$scope','$http', function($scope, $http) {
	$scope.showStudents();
	$http.post('./application/controllers/controller.php',{'pageName':'students','functionName':'getWaves'})
	.success(function(data) {
		$scope.waves = data;
	});
	$http.post('./application/controllers/controller.php',{'pageName':'students','functionName':'getPrograms'})
	.success(function(data) {
		$scope.programs = data;
	});
	$http.post('./application/controllers/controller.php',{'pageName':'students','functionName':'getStudents'})
	.success(function(data) {
		$scope.students = data;
		for(var i in $scope.students) {
			for(var j in $scope.programs) {
				if($scope.students[i]['programId'] == $scope.programs[j]['id']) {
					$scope.students[i]['programName'] = '(' + $scope.programs[j]['name'] + ')';
				}
			}
		}
	});
}])

.controller('projectsCtrl',['$scope','$http', function($scope, $http) {
	$scope.showProjects();
	$http.post('./application/controllers/controller.php',{'pageName':'projects','functionName':'getProjects'})
	.success(function(data) {
		$scope.projects = data;
	});
	$http.post('./application/controllers/controller.php',{'pageName':'projects','functionName':'getPartners'})
	.success(function(data) {
		$scope.partners = data;
	});
}])

.controller('authCtrl',['$scope','$http', function($scope, $http) {
	if($scope.getCookie('hash')) {
		document.location.href = '/admin';		
	}
	$scope.showNothing();
	$scope.signIn = function() {
		$http.post('./application/controllers/controller.php',{'pageName':'admin','functionName':'login','login':$scope.login,'password':$scope.password})
		.success(function(data) {
			if (data == 1) {
				$scope.text = '';
				document.location.href = '/admin';
			} else {
				$scope.text = 'text-error';
			}
		});
	}
}])

.controller('adminCtrl',['$scope','$http', function($scope, $http) {
	// ПРОВЕРКА ПРАВ
	if ($scope.getCookie('hash')) {
		$http.post('./application/controllers/controller.php',{'pageName':'admin','functionName':'checkAdmin'})
		.success(function(data) {
			if (data == 0) {
				document.location.href = '/auth';
				alert('Произошла ошибка. Пожалуйста, авторизируйтесь');
			}
		});
	} else {
		document.location.href = '/auth';
	}
	$scope.showNothing();
	$http.post('./application/controllers/controller.php',{'pageName':'news','functionName':'getNews'})
	.success(function(data) {
		$scope.news = data;
	});
	$http.post('./application/controllers/controller.php',{'pageName':'programs','functionName':'getPrograms'})
	.success(function(data) {
		$scope.programs = data;
	});
	$http.post('./application/controllers/controller.php',{'pageName':'teachers','functionName':'getTeachers'})
	.success(function(data) {
		$scope.teachers = data;
	});
	$http.post('./application/controllers/controller.php',{'pageName':'students','functionName':'getWaves'})
	.success(function(data) {
		$scope.waves = data;
	});
	$http.post('./application/controllers/controller.php',{'pageName':'students','functionName':'getStudents'})
	.success(function(data) {
		$scope.students = data;
	});
	$http.post('./application/controllers/controller.php',{'pageName':'projects','functionName':'getProjects'})
	.success(function(data) {
		$scope.projects = data;
	});
	$http.post('./application/controllers/controller.php',{'pageName':'projects','functionName':'getPartners'})
	.success(function(data) {
		$scope.partners = data;
	});
	$http.post('./application/controllers/controller.php',{'pageName':'index','functionName':'getLinks'})
	.success(function(data) {
	    $scope.links = data;
	});
	$scope.addNews = function() {
		$http.post('./application/controllers/controller.php',{'pageName':'admin','functionName':'addNews','title':$scope.title,'image':$scope.image,'info':$scope.info,'descriptionShort':$scope.descriptionShort,'descriptionLong':$scope.descriptionLong})
		.success(function(data) {
			alert('Новость добавлена');
		});
	}
	$scope.addPrograms = function() {
		$http.post('./application/controllers/controller.php',{'pageName':'admin','functionName':'addPrograms','name':$scope.name,'image':$scope.image,'info':$scope.info,'description':$scope.description})
		.success(function(data) {
			alert('Направление добавлено');
		});
	}
	$scope.addTeachers = function() {
		$http.post('./application/controllers/controller.php',{'pageName':'admin','functionName':'addTeachers','name':$scope.name,'image':$scope.image,'info':$scope.info,'portfolio':$scope.portfolio,'status':$scope.status})
		.success(function(data) {
			alert('Преподаватель добавлен');
		});
	}
	$scope.addStudents = function() {
		$http.post('./application/controllers/controller.php',{'pageName':'admin','functionName':'addStudents','name':$scope.name,'image':$scope.image,'info':$scope.info,'portfolio':$scope.portfolio,'programId':$scope.programId,'waveId':$scope.waveId})
		.success(function(data) {
			alert('Участник добавлен');
		});
	}
	$scope.addProjects = function() {
		$http.post('./application/controllers/controller.php',{'pageName':'admin','functionName':'addProjects','name':$scope.name,'image':$scope.image,'description':$scope.description,'link':$scope.link})
		.success(function(data) {
			alert('Проект добавлен');
		});
	}
	$scope.addPartners = function() {
		$http.post('./application/controllers/controller.php',{'pageName':'admin','functionName':'addPartners','name':$scope.name,'image':$scope.image,'description':$scope.description,'link':$scope.link})
		.success(function(data) {
			alert('Партнер добавлен');
		});
	}
	$scope.addWaves = function() {
		$http.post('./application/controllers/controller.php',{'pageName':'admin','functionName':'addWaves','name':$scope.name,'year':$scope.year})
		.success(function(data) {
			alert('Набор добавлен');
		});
	}
	$scope.addLinks = function() {
		$http.post('./application/controllers/controller.php',{'pageName':'admin','functionName':'addLinks','name':$scope.name,'link':$scope.link})
		.success(function(data) {
			alert('Ссылка добавлена');
		});
	}
	$scope.bind = function(tableName, id) {
		$scope.tableName = tableName;
		$scope.id = id;
	}
	$scope.delete = function() {
		$http.post('./application/controllers/controller.php',{'pageName':'admin','functionName':'delete','tableName':$scope.tableName,'id':$scope.id})
		.success(function(data) {
			alert('Запись удалена');
			location.reload();
		});
	}
	$scope.logout = function() {
		$scope.deleteCookie('hash');
		document.location.href = '/';
	}
}])