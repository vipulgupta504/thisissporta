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
         
            updateAddresses: function(item){
                    return $http.post('http://localhost:8080/ThisIsSporta/flows/updateAddresses/', item)
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
		$scope.shippingAddress = '';
		$scope.billingAddress = '';
        	
        $scope.UpdateAddresses = function()
        {
        	$scope.data = { "shippingAddress" : $scope.shippingAddress , "billingAddress" : $scope.billingAddress };
        	
        	console.log( $scope.data );
        	
        	$UserService.updateAddresses( JSON.stringify( $scope.data ) )
        	.then
        	(
        			function(response)
        			{
        				console.log(response);
        				$scope.updated = response.status;
        			window.setTimeout(function()
        			{
        	$scope.$apply($scope.updated='');
        			},3000);
        			
        			}
        			
        			,
        			 
     	            function(errResponse)
     	            {
     	            	console.error('Error while Sending Data.');
     	            } 
        	);
        }
	}]); 
	
</script>


<body ng-app="myApp" ng-controller="abc">

<c:import url="/head"/>


<a href="${flowExecutionUrl}&_eventId=BackToCart" class="btn btn-primary btn-lg btn pull-left"><span class="glyphicon glyphicon-chevron-left"></span>Back to Cart</a> 
<a href="${flowExecutionUrl}&_eventId=ViewCompleteOrder" class="btn btn-primary btn-lg btn pull-right">Confirm Details<span class="glyphicon glyphicon-chevron-right"></span></a>

<br>
<br>
<div class="container">		
<div class="pge2" align="center">
	
	<div>
	<label>SHIPPING ADDRESS</label><br><br>
	<textarea rows="4" placeholder="Shipping address" class="form-control" style="resize: none;" ng-model="shippingAddress"></textarea>
	</div>
	
	<br>
	<br>
	
	<div>
	<label>BILLING ADDRESS</label><br><br>
	<textarea rows="4" placeholder="Billing address" class="form-control" style="resize: none;" ng-model="billingAddress"></textarea>
	</div>
	<br><br>
	<div><input type="button" value="Update" class="btn btn-success" ng-click="UpdateAddresses()" ng-disabled="shippingAddress=='' || billingAddress==''"></div>
	<br><br>

	<div ng-show="updated == 'updated'"><label class="alert alert-success">Updated Successfully</label></div>
	<br><br>
	
	
	
	
</div>
</div>

</body>
</html>