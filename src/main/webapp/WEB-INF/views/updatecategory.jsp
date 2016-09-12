<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<c:import url="/head-meta"/>

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
.box .box-content:hover{
    box-shadow: 0 0 20px #fff;
    background-color : rgba(132, 1, 1, 1);
}
</style>
</head>
<body>

<c:import url="/head"/>
<br>

<div class="container">
    <div class="box">
        <div class="col-md-12 col-sm-6">
            <div class="axe">
                
                <h2 class="title"><b>Update Category</b></h2>
                <div class="box-content">
                    <p class="description">
                    
                    <form:form method="POST" action="${pageContext.request.contextPath}/UpdateCategoryToDB" modelAttribute="Category">
                    
                    	<form:label path="categoryName">Enter Category Name:</form:label>
                    	<form:input type="text" path="categoryName" class="form-control"/>
                    
                    	<form:input path="id" type="hidden"/>
                    
                    	<br>
                    	<input type="submit" class="btn btn-success" value="Update"/>
                    
                    </form:form>
                    
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