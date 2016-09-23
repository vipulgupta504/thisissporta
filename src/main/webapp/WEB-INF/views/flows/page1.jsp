<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url="/head-meta"/>
<title>This is sporta</title>
</head>
<body>

<c:import url="head.jsp"/>

<a href="${pageContext.request.contextPath}/products" class="btn btn-primary btn-lg btn pull-left"><span class="glyphicon glyphicon-chevron-left"></span>Back to products</a>
  <br>
  <br>
  <br>
<a href="${flowExecutionUrl}&_eventId=goToCheckout" class="btn btn-primary btn-lg btn pull-right">Current cart<span class="glyphicon glyphicon-chevron-right"></span></a>



</body>
</html>