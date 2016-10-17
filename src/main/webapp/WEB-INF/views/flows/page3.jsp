<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url="/head-meta"/>
</head>

<style>
/* body {
   background: url(resources/images/texture9.jpg); 
} */
</style>

<script type="text/javascript">
	'use strict';
	var myApp = angular.module('myApp', []);
	///////////////
	myApp
			.factory(
					'UserService',
					[
							'$http',
							'$q',
							function($http, $q) {
								return {
									fetchAllItems : function() {
										return $http
												.post(
														'http://localhost:8080/ThisIsSporta/flows/fetchAllItems/')
												.then(
														function(response) {
															return response.data;
														},
														function(errResponse) {
															console
																	.error('Error while sending data');
															return $q
																	.reject(errResponse);
														});
									}
								};
							} ]);
	///////////////
	myApp
			.controller(
					"abc",
					[
							'$scope',
							'UserService',
							function($scope, $UserService) {
								$scope.TotalPrice = 0;
								$scope.shippingAddress = '';
								$scope.billingAddress = '';
								$UserService
										.fetchAllItems()
										.then(
												function(response) {
													//console.log( response );
													try {
														$scope.data = response;
													} catch (e) {
														$scope.data = [];
													}
													console.log($scope.data);
													for (var i = 0; i < $scope.data.length; i++) {
														try {
															$scope.TotalPrice += parseInt($scope.data[i].ProductQty
																	* $scope.data[i].ProductPrice);
															$scope.shippingAddress = $scope.data[i].ShippingAddress;
															$scope.billingAddress = $scope.data[i].BillingAddress;
														} catch (e) {
															console.log(e);
														}
													}
												},
												function(errResponse) {
													console
															.error('Error while Sending Data.');
												});
							} ]);
</script>


<body ng-app="myApp" ng-controller="abc">

<c:import url="/head"/>

<a href="${flowExecutionUrl}&_eventId=BackToConfirmDetails" class="btn btn-primary btn-lg btn pull-left"><span class="glyphicon glyphicon-chevron-left"></span>Back to Confirm Details</a>
<a href="${flowExecutionUrl}&_eventId=confirmOrder" class="btn btn-primary btn-lg btn pull-right">Confirm Order<span class="glyphicon glyphicon-chevron-right"></span></a>
<br>
<br>
<br>
<br>
<div class="container">
	
		<div class="pge3" align="center">

			<div>
				<label>SHIPPING ADDRESS</label><br> 
				<textarea rows="4" placeholder="Shipping address" ng-disabled="true"
					class="form-control" style="resize: none;"
					ng-model="shippingAddress"></textarea>
			</div>

<br>
<br>

			<div>
				<label>BILLING ADDRESS</label><br> 
				<textarea rows="4" placeholder="Billing address" ng-disabled="true"
					class="form-control" style="resize: none;"
					ng-model="billingAddress"></textarea>
			</div>

<br>

	</div>
	</div>
	<br><br>

	<div ng-repeat="x in data" style="background-color: rgba(255, 255, 255, 0.9);">

		
		<div class="container">
		<div class="table">
		<div class="row">
		
			<div class="col-md-6">
					<div style="margin: auto; width: 45%;">
						<img src="${pageContext.request.contextPath}/{{x.ProductImage}}"
							width="100%" class="img img-responsive img-rounded"></img>
					</div>
			</div>
			
			<div class="col-md-6">
				
		<table class="table" align="center">
		<br>
		
				
				<tr>
				<td><b>Product Name</b></td>
				<td>{{x.ProductName}}</td>
				</tr>
				
				<tr>
				<td><b>Quantity</b></td>
				<td>{{x.ProductQty}}</td>
				</tr>

				<tr>
				<td><b>Price</b></td>
				<td>{{x.ProductPrice}}</td>
				</tr>
			
			
		</table>
		
		</div>
		</div>
		</div>
</div>
</div>
<br>
<br>
<label>GRAND TOTAL</label><br>
			<textarea rows="1" class="form-control"
				style="resize: none; font-family: verdana; font-size: 30px"
				ng-model="TotalPrice" ng-disabled="true"></textarea>
				
				
				<br>
				<br>
				<br>
				<br>
				<br>

</body>
</html>