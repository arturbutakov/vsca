var main = angular.module("mainApp", ["ngRoute", "controller"]);

main.run(function($rootScope, $location, $route) {
    var original = $location.hash;
    $location.hash = function(hash, reload) {
        if(reload === false) {
            var lastRoute = $route.current;
            var un = $rootScope.$on('locationChangeSuccess', function() {
                $route.current = lastRoute;
                un();
            });
            return original.apply($location, [hash]);
        }
    }
});

main.config(function($routeProvider, $locationProvider){
    $locationProvider.html5Mode({
        enabled: true,
        requireBase: false
    });
    $locationProvider.hashPrefix('!');

    $routeProvider.when('/', {
        templateUrl: '/application/views/news.html',
        controller: 'newsCtrl'
    });
    $routeProvider.when('/news', {
        redirectTo: '/'
    });
    $routeProvider.when('/programs', {
        templateUrl: '/application/views/programs.html',
        controller: 'programsCtrl'
    });
    $routeProvider.when('/teachers', {
        templateUrl: '/application/views/teachers.html',
        controller: 'teachersCtrl'
    });
    $routeProvider.when('/students', {
        templateUrl: '/application/views/students.html',
        controller: 'studentsCtrl'
    });
    $routeProvider.when('/projects', {
        templateUrl: '/application/views/projects.html',
        controller: 'projectsCtrl'
    });
    $routeProvider.when('/auth', {
        templateUrl: '/application/views/auth.html',
        controller: 'authCtrl'
    });
    $routeProvider.when('/admin', {
        templateUrl: '/application/views/admin.html',
        controller: 'adminCtrl'
    });
    $routeProvider.otherwise({
        templateUrl: '/application/views/404.html'
    });
});

main.controller("mainAppCtrl",['$scope','$http','$location', function($scope, $http, $location) {

    $scope.menu = [{ name: "news", value: "active" },
    { name: "programs", value: "" },
    { name: "teachers", value: "" },
    { name: "students", value: "" },
    { name: "projects", value: "" }];

    $scope.showNews = function () {
        $scope.menu[0].value = "active";
        $scope.menu[1].value = "";
        $scope.menu[2].value = "";
        $scope.menu[3].value = "";
        $scope.menu[4].value = "";
    }
    $scope.showPrograms = function () {
        $scope.menu[0].value = "";
        $scope.menu[1].value = "active";
        $scope.menu[2].value = "";
        $scope.menu[3].value = "";
        $scope.menu[4].value = "";
    }
    $scope.showTeachers = function () {
        $scope.menu[0].value = "";
        $scope.menu[1].value = "";
        $scope.menu[2].value = "active";
        $scope.menu[3].value = "";
        $scope.menu[4].value = "";
    }
    $scope.showStudents = function () {
        $scope.menu[0].value = "";
        $scope.menu[1].value = "";
        $scope.menu[2].value = "";
        $scope.menu[3].value = "active";
        $scope.menu[4].value = "";
    }
    $scope.showProjects = function () {
        $scope.menu[0].value = "";
        $scope.menu[1].value = "";
        $scope.menu[2].value = "";
        $scope.menu[3].value = "";
        $scope.menu[4].value = "active";
    }
    $scope.showNothing = function () {
        $scope.menu[0].value = "";
        $scope.menu[1].value = "";
        $scope.menu[2].value = "";
        $scope.menu[3].value = "";
        $scope.menu[4].value = "";
    }

    $http.post('./application/controllers/controller.php',{'pageName':'index','functionName':'getLinks'})
    .success(function(data) {
        $scope.links = data;
    });

    $scope.scrollTo = function(id) {
        $location.hash(id, false);
    };

    // РАБОТА С COOKIE
    $scope.getCookie = function(name) {
      var matches = document.cookie.match(new RegExp(
        "(?:^|; )" + name.replace(/([\.$?*|{}\(\)\[\]\\\/\+^])/g, '\\$1') + "=([^;]*)"
        ));
      return matches ? decodeURIComponent(matches[1]) : undefined;
    }
  function setCookie(name, value, options) {
      options = options || {};
      var expires = options.expires;
      if (typeof expires == "number" && expires) {
        var d = new Date();
        d.setTime(d.getTime() + expires * 1000);
        expires = options.expires = d;
    }
    if (expires && expires.toUTCString) {
        options.expires = expires.toUTCString();
    }
    value = encodeURIComponent(value);
    var updatedCookie = name + "=" + value;
    for (var propName in options) {
        updatedCookie += "; " + propName;
        var propValue = options[propName];
        if (propValue !== true) {
          updatedCookie += "=" + propValue;
      }
  }
  document.cookie = updatedCookie;
}
$scope.deleteCookie = function(name) {
  setCookie(name, "", {
    expires: -1
})
}
}])