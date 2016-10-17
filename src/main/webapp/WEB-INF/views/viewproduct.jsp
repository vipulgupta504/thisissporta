<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<c:import url="head-meta.jsp"/>

</head>

<style>
.view-container
{   border-style: solid;
    border-color: lightblue;
}
  body
{
   background-image: url("${pageContext.request.contextPath}/resources/images/texture9.jpg");
}

@font-face {
    font-family: MyCorbert;
    src: url("${pageContext.request.contextPath}/resources/references/fonts/Corbert-Regular-webfont.woff2");
}

.corbert-class
{
	font-family: MyCorbert;
	color:red;
}

.row-bottom
{
	border-bottom: 1px solid #AAAAAA;
}

</style>
<body>

<c:import url="head.jsp"/>
<br>

<div align="right">


<form action="${pageContext.request.contextPath}/addtocart" method="post">
<input type="hidden" value="${Product.id}" name="pid" />
<%
 if (!request.isUserInRole("ADMIN"))
 {
 	%>

<label>Enter quantity:</label>&nbsp;<input type="number" value="1 " min="1" max="10" name="pqty" class="form form-input" />
<input type="submit" value="Add To Cart" class="btn btn lg btn-primary" />
<%
 }
 	%>
</form>

</div>

<br>
<br>
<br>

	<div class="container view-container" style="background-color: rgba(255,255,255,0.8);">
		<div class="row row-bottom">
		
			<div class="col-lg-6">
				<label path="productName" class="corbert-class" >Product Name:</label>
			</div>
			
			<div class="col-lg-6">
				<label class="corbert-class"> ${Product.productName}</label>
			</div>
		</div>
		<div class="row row-bottom">
			
			<div class="col-lg-6">
				<label path="productCategory" class="corbert-class">Product Category:</label>
			</div>
			
			<div class="col-lg-6">
				<label class="corbert-class"> ${Product.productCategory}</label>
			</div>
		</div>
		
		<div class="row row-bottom">
			
			<div class="col-lg-6">
				<label path="productDescription" class="corbert-class">Product Description:</label>
			</div>
			
			<div class="col-lg-6">
				<label class="corbert-class">${Product.productDescription}</label>
			</div>
		</div>
		
		
		<div class="row row-bottom">
			
			<div class="col-lg-6">
				<label path="productPrice" class="corbert-class">Product Price:</label>
			</div>
			
			<div class="col-lg-6">
				<label class="corbert-class">${Product.productPrice}</label>
			</div>
		</div>
		
		<div class="row row-bottom">
			
			<div class="col-lg-6">
				<label path="productImage" class="corbert-class">Product Image:</label>
			</div>
			
			<div class="col-lg-6">
				<label><img src="${pageContext.request.contextPath}/${Product.productImage}" class="img img-thumbnail"></label>
			</div>
		</div>		   
		
		<input path="id" type="hidden"/>
		
	</div>

<br>
<br>
<br>
<br>

<%-- <%@include file="footer.jsp"%> --%>

</body> 
</html>

