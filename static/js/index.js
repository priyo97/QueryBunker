function delete_table(){

	localStorage.removeItem("questions");
}

let index_module = angular.module("index-module",[]);

index_module.controller("questions-section-controller",function($scope){

	let json_data = JSON.parse(localStorage.getItem("questions"));

	$scope.questions = json_data;

	delete_table();

});


