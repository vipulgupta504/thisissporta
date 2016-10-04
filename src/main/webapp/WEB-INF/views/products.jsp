<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>
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
p{font-size:20px;
}
 body
{
   background:url('resources/images/bk5.jpg');
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
table, th , td  {
  border: 1px solid grey;
  border-collapse: collapse;
  padding: 5px;
}
table tr:nth-child(odd) {
  background-color: #f1f1f1;
}
table tr:nth-child(even) {
  background-color: #ffffff;
}
</style>

<script type="text/javascript">
{
	
	var app = angular.module('myApp',[]);
	
	app.controller("myCtrl",function($scope)
	{
		/* 
		$scope.data =  [{"ProductID":"1","ProductName":"Kookaburra Bat","ProductPrice":"1500","ProductImage":"resources/images/download5.jpg"},
		{"ProductID":"2","ProductName":"Adidas Football","ProductPrice":"600","ProductImage":"resources/images/download4.jpg"},
		{"ProductID":"3","ProductName":"Grays Stick","ProductPrice":"500","ProductImage":"resources/images/download13.jpg"},
		{"ProductID":"4","ProductName":"Yonex Racquet","ProductPrice":"400","ProductImage":"resources/images/download6.jpg"}, 
		{"ProductID":"5","ProductName":"SS Bat","ProductPrice":"1200","ProductImage":"resources/images/download14.jpg"},
	    {"ProductID":"6","ProductName":"Nike Football","ProductPrice":"1000","ProductImage":"resources/images/download15.jpg"}] */
	    
	    $scope.data = ${Products}; 
	    
	    $scope.search = '${param.item}';
});
}
	
</script>
<body ng-App="myApp" ng-controller="myCtrl">
<c:import url="head.jsp"/>

<br>
<div align="right">
							<%
						if (request.isUserInRole("ADMIN"))
						{
							%>

<a href="addproduct"><button type="button" class="btn btn-success" 
 	style="position: absolute;right: 80px;">Add Product</button></a>
 						<%							
						}
						%>
 	
</div>

<form>
  <p align="center"><input type="text" name="search" placeholder ="Search Products" ng-model="search"/></p>
</form>

<br><br><br><br>
 
 
 
<div align="center">

			<div class="row" ng-repeat="x in data|filter:search">
			<br>
			<br>
    			     
 					<div class="col-sm-2" >
 					<p style="color:black;"><b>{{x.ProductName}}</b></p>
 					</div>
 			
					<div class="col-sm-2" >
				    <p style="color:black;"><b>{{x.ProductPrice}}</b></p>
					</div>
					
					<div class="col-sm-2" >
				    <p style="color:black;"><b>{{x.ProductCategory}}</b></p>
					</div>

					<div class="col-sm-2" >
					<p style="color:black;"><img alt="" src="{{x.ProductImage}}" height="80px" width="90px"></p>
					</div>
					
					<div class="col-sm-2" >
						<a href="${pageContext.request.contextPath}/viewproduct/{{x.ProductId}}" class="btn btn-info">View Product</a>
					</div>
					<%
						if (request.isUserInRole("ADMIN"))
						{
							%>
					
					
					<div class="col-sm-2" >
						<a href="${pageContext.request.contextPath}/updateproduct/{{x.ProductId}}" class="btn btn-warning">Update Product</a>
					</div>
					
					<div class="col-sm-2" >
						<a href="${pageContext.request.contextPath}/DeleteProductFromDB/{{x.ProductId}}" class="btn btn-danger">Delete Product</a>
					</div>
					<%							
						}
						%>


 			</div>
</div>		

 			
 		</td>
 	</tr>
 </table>
  </div>

</body>
</html>
	
<br>
 
<%@include file="footer.jsp" %>
</body>
</html>