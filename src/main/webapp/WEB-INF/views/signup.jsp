<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:import url="/head-meta" />
<title>signup</title>
</head>
<style>
form label {
    font-size: 20px;
}

input[type=email]:focus {
    border: 3px solid #555;
} 
input[type=text]:focus {
    border: 3px solid #555;
} 
input[type=password]:focus {
    border: 3px solid #555;
} 
input[type=number]:focus {
    border: 3px solid #555;
} 
</style>
<body>

<c:import url="/head" />

<div class="container">
  <h1>Sign Up</h1>
  
  <!--  -->
  	<c:if test="${not empty success }">
  	<div class="form-group">
    	<label class="alert alert-success" >${success}</label>
    </div>
	</c:if>
  <!--  -->
  
  <!--  -->
  	<c:if test="${not empty error }">
  	<div class="form-group">
    	<label class="alert alert-danger" >${error}</label>
    </div>
	</c:if>
  <!--  -->
  
  <form:form class="form-horizontal" modelAttribute="User" action="AddUserToDB" method="post">
  
   <div class="form-group">
      <label class="control-label col-sm-2" for="username">User Name:</label>
      <div class="col-sm-10">
         <form:input path="username" type="text" name="username" class="form-control" placeholder="Enter username" />
        <form:errors path="username" class="text text-danger" />
      </div>
    </div>
    
    <br>
    
    <div class="form-group">
      <label class="control-label col-sm-2">Password:</label>
      <div class="col-sm-10">
        <form:input path="password" type="password" class="form-control" placeholder="Enter password" />
        <form:errors path="password" class="text text-danger" />
      </div>
    </div>
    
    <br>
    
    <div class="form-group">
      <label class="control-label col-sm-2">Confirm Password:</label>
      <div class="col-sm-10">
        <form:input path="cPassword" type="password" class="form-control" placeholder="Confirm password" />
        <form:errors path="cPassword" class="text text-danger" />
      </div>
    </div>
    
    <br>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">
        <form:input path="email" type="text" name="email" value="" class="form-control" placeholder="Enter email" />
        <form:errors path="email" class="text text-danger" />
      </div>
    </div>
     
     <br>
     
     <div class="form-group">
      <label class="control-label col-sm-2" for="phone">Phone:</label>
      <div class="col-sm-10">
        <form:input path="phone" type="text" name="phone" value="" class="form-control" placeholder="Enter Phonenumber" />
        <form:errors path="phone" class="text text-danger" />
      </div>
    </div>
    
    <br>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="location">Location:</label>
      <div class="col-sm-10">
        <form:input path="location" type="text" name="location" value="" class="form-control" placeholder="Enter location" />
        <form:errors path="location" class="text text-danger" />
      </div>
    </div>
    
    <br>
    
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <div class="checkbox">
          <label><input type="checkbox">Remember me</label>
        </div>
      </div>
    </div>
    
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-info">Submit</button>
      </div>
    </div>
    
    
  </form:form>
</div>

<%@include file="footer.jsp" %>

</body>
</html>