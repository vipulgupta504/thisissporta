<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>this is sporta</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="resources/references/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

 <script type="text/javascript" src="${pageContext.request.contextPath}/resources/references/js/angular.min.js"></script>

<style>
  body
{
   background:url('resources/images/texture9.jpg');
}
.box{
	width: 100%;
	height: 100%;
    position: relative;
    text-align: center;
}
.box .title{
    width: 100%;
    padding: 12px 10px;
    margin: 0;
    position: absolute;
    top: 35%;
    left: 0;
    font-size: 24px;
    color: #fff;
    background-color: rgba(0, 0, 0, 0.7);
    z-index: 5;
    transition: all 0.5s ease 0s;
}
 .box .box-content{
    width: 100%;
    padding: 100px 10px;
    margin: 0;
    position: absolute;
    top: 65%;
    left: 0;
    font-size: 20px;
    color: #fff;
    background-color: lightblue;
    z-index: 1;
    transition: all 0.5s ease 0s;
}

</style>
</head>

<!--  -->

<script type="text/javascript">

	var myApp = angular.module("myApp",[]);
	
	myApp.controller("myCtrl",function($scope)
			{
				$scope.data =  ${Categories};
		});

</script>

<!--  -->

<body ng-app="myApp" ng-controller="myCtrl" >

<c:import url="head.jsp"/>
<br>

<div class="container">
    <div class="box">
        <div class="col-md-12 col-sm-6">
            <div class="axe">
                
                <h2 class="title"><b>Categories</b></h2>
                <div class="box-content">
                    <p class="description">
                    <a href="addcategory" class="btn btn-success">Add Category</a>
                    
                    <br>
                    
                    <!--  -->
                    
                    <div ng-repeat="x in data">
                    
                    	<div>
                    		<label>Category Name: &nbsp;&nbsp; {{x.CategoryName}} </label>
                    		
                    		<a href="updatecategory/{{x.CategoryId}}" class="btn btn-danger">Update</a>
                    		
                    		<a href="DeleteCategoryFromDB/{{x.CategoryId}}" class="btn btn-info">Delete</a>
                    	</div>
                    
                    </div>
                    
                    <!--  -->
                    
                    <br>
                    
                    
                    </p>  
                </div>
            </div>
        </div>
        
    </div>  
</div>
 </body> 

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

</html>

<%@include file="footer.jsp" %>