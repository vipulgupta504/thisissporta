<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <script type="text/javascript" src="${pageContext.request.contextPath}/resources/references/js/angular.min.js"></script>

<c:import url="head-meta.jsp"></c:import>


<title>this is sporta</title>
<style>
p{font-size:35px;
}
 body
{
   background:url('resources/images/texture5.jpg');
   background-attachment: fixed;
}
input[type=text] {
    width: 185px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('resources/images/search.png');
    background-position: 10px 10px;
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}
input[type=text]:focus {
 width: 60%;
}
</style>
</head>
<script type="text/javascript">
{
	
	var app = angular.module('myApp',[]);
	
	app.controller("myCtrl",function($scope)
	{
		$scope.data =  [{"ProductID":"1","ProductName":"Kookaburra Bat","ProductPrice":"1500","ProductImage":"resources/images/download5.jpg"},
		{"ProductID":"2","ProductName":"Adidas Football","ProductPrice":"600","ProductImage":"resources/images/download4.jpg"},
		{"ProductID":"3","ProductName":"Grays Stick","ProductPrice":"500","ProductImage":"resources/images/download13.jpg"},
		{"ProductID":"4","ProductName":"Yonex Racquet","ProductPrice":"400","ProductImage":"resources/images/download6.jpg"}, 
		{"ProductID":"5","ProductName":"SS Bat","ProductPrice":"1200","ProductImage":"resources/images/download14.jpg"},
	    {"ProductID":"6","ProductName":"Nike Football","ProductPrice":"1000","ProductImage":"resources/images/download15.jpg"}]
});
}
	
</script>

<c:import url="head.jsp"/>

<br>

<form>
  <p align="center"><input type="text" name="search" placeholder="Search Products"ng-model="search"/></p>
</form>

<br><br><br><br>
<body ng-App="myApp" ng-controller="myCtrl">
<div align="center">
			<div class="row" ng-repeat="x in data|filter:search">
			
    				<!-- <div class="col-sm-3" >
					<p><b>{{x.ProductID}}</b></p>
					 </div>
					 -->
 
 					<div class="col-sm-3" >
 					<p><b>{{x.ProductName}}</b></p>
 					</div>
 			
					<div class="col-sm-3" >
				    <p><b>{{x.ProductPrice}}</b></p>
					</div>

					<div class="col-sm-3" >
					<p><img alt="" src="{{x.ProductImage}}" height="80px" width="90px"></p>
					</div>
 			</div>
		
		</div>	
<!-- <br>
<br>
 -->
</body>
</html>