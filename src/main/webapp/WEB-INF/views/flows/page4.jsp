<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url="/head-meta"/>
</head>

<script type="text/javascript">
'use strict';
		var myApp = angular.module('myApp',[]);
	
		myApp.factory('UserService', ['$http', '$q', function($http, $q)
		{
	 
    	return {
         
    		deleteAllFromCart: function(item){
                    return $http.post('http://localhost:8080/ThisIsSporta/flows/deleteAllFromCart/', item)
                            .then(
                                    function(response){
                                        return response.data;
                                    }, 
                                    function(errResponse){
                                        console.error('Error while sending data');
                                        return $q.reject(errResponse);
                                    }
                            );
            }
    };
 
}]);
	
	///////////////
	
	
	myApp.controller("abc",['$scope', 'UserService' ,function($scope , $UserService)
	{
		$UserService.deleteAllFromCart();
	}]); 
	
</script>


<body ng-app="myApp" ng-controller="abc">

<c:import url="/head"/>

<a href="${pageContext.request.contextPath}/index" class="btn btn-success btn-lg btn pull-left">Home</a>
<a href="${pageContext.request.contextPath}/contactus" class="btn btn-danger btn-lg btn pull-right">Contact Us</a>



<div class="container" align="center">

<br>
<br>

<h1 style="color:blue;">THANK YOU FOR SHOPPING WITH US!! YOUR ORDER HAS BEEN CONFIRMED. WE HOPE TO SEE YOU AGAIN</h1>

</div>

<br>
<br>
<br>
<br>




</body>
</html>