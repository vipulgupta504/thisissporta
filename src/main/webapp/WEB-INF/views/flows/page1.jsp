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
   background: url(resources/images/texture11.jpg); 
}  */
</style>

<script type="text/javascript">
	'use strict';
	var myApp = angular.module('myApp', []);
	myApp
			.factory(
					'UserService',
					[
							'$http',
							'$q',
							function($http, $q) {
								return {
									deleteFromCart : function(item) {
										return $http
												.post(
														'http://localhost:8080/ThisIsSporta/flows/deleteFromCart/',
														item)
												.then(
														function(response) {
															return response.data;
														},
														function(errResponse) {
															console.error('Error while sending data');
															return $q.reject(errResponse);
														});
									},
									fetchAllItems : function(item) {
										return $http
												.post(
														'http://localhost:8080/ThisIsSporta/flows/fetchAllItems/')
												.then(
														function(response) {
															return response.data;
														},
														function(errResponse) {
															console.error('Error while sending data');
															return $q.reject(errResponse);
														});
									}
								};
							} ]);
	//////////////////////////////////////////////////////////////////////////////////////////
	myApp.controller("abc", [
			'$scope',
			'UserService',
			function($scope, $UserService) {
				$scope.deleteFromCart = function(cartId) {
					$UserService.deleteFromCart(cartId).then(
							function(response) {
								try {
									$scope.data = response;
								} catch (e) {
									$scope.data = [];
								}
								console.log($scope.data);
							},
							function(errResponse) {
								console.error('Error while sending data.');
							});
				}
				$UserService.fetchAllItems().then(function(response) {
					try {
						$scope.data = response;
					} catch (e) {
						$scope.data = [];
					}
					console.log($scope.data);
				},
				function(errResponse) {
					console.error('Error while sending data.');
				});
			} ]);
</script>

<body ng-app="myApp" ng-controller="abc">

<c:import url="/head"/>
 
<a href="${pageContext.request.contextPath}/products" class="btn btn-primary btn-lg btn pull-left"><span class="glyphicon glyphicon-chevron-left"></span>Return to products</a> 
<a href="${flowExecutionUrl}&_eventId=goToCheckout" class="btn btn-primary btn-lg btn pull-right">Current cart<span class="glyphicon glyphicon-chevron-right"></span></a>

<br>
<br>
<br>
<br>
<div class="container">
			<div ng-repeat="x in data"
		style="background-color: rgba(255, 255, 255, 0.9);">

		<table class="table" align="center">

			<tr>
				<td colspan="2">
					<div style="margin: auto; width: 45%;">
						<img src="${pageContext.request.contextPath}/{{x.ProductImage}}"
							width="80%" class="img img-responsive img-thumbnail"></img>
					</div>
				</td>
			</tr>

			<tr>
				<td>Product Name</td>
				<td>{{x.ProductName}}</td>
			</tr>

			<input type="hidden" value="${ProductId}" name="pid" />

			<tr>
				<td>Qty</td>
				<td>{{x.ProductQty}}</td>
			</tr>

			<tr>
				<td>Price</td>
				<td>{{x.ProductPrice}}</td>
			</tr>

			<tr>
				<td></td>
				<td><input type="button" value="Delete from Cart" class="btn btn-danger" ng-click="deleteFromCart(x.CartId)" /></td>
			</tr>

		</table>
	</div>
</div>
<br>
<br>
<br>
<br>

</body>
</html>