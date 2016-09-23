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
{ border-style: solid;
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
<a href="addtocart"><button type="button" class="btn btn-primary btn-lg" 
 	style="position: absolute;right: 80px;">Add to Cart</button></a>
</div>

<br>
<br>
<br>

	<form:form method="POST" action="${pageContext.request.contextPath}/UpdateProductToDB" modelAttribute="Product">

	<div class="container view-container" style="background-color: rgba(255,255,255,0.8);">
		<div class="row row-bottom">
		
			<div class="col-lg-6">
				<form:label path="productName" class="corbert-class">Product Name:</form:label>
			</div>
			
			<div class="col-lg-6">
				<label class="corbert-class"> ${Product.productName}</label>
			</div>
		</div>
		<div class="row row-bottom">
			
			<div class="col-lg-6">
				<form:label path="productCategory" class="corbert-class">Product Category:</form:label>
			</div>
			
			<div class="col-lg-6">
				<label class="corbert-class"> ${Product.productCategory}</label>
			</div>
		</div>
		
		<div class="row row-bottom">
			
			<div class="col-lg-6">
				<form:label path="productDescription" class="corbert-class">Product Description:</form:label>
			</div>
			
			<div class="col-lg-6">
				<label class="corbert-class">${Product.productDescription}</label>
			</div>
		</div>
		
		
		<div class="row row-bottom">
			
			<div class="col-lg-6">
				<form:label path="productPrice" class="corbert-class">Product Price:</form:label>
			</div>
			
			<div class="col-lg-6">
				<label class="corbert-class">${Product.productPrice}</label>
			</div>
		</div>
		
		<div class="row row-bottom">
			
			<div class="col-lg-6">
				<form:label path="productImage" class="corbert-class">Product Image:</form:label>
			</div>
			
			<div class="col-lg-6">
				<label><img src="${pageContext.request.contextPath}/${Product.productImage}" class="img img-thumbnail"></label>
			</div>
		</div>		   
		
		<form:input path="id" type="hidden"/>
            
		
		
	</div>

	</form:form>

<br>
    <br>
    <br>
<br>
 </body> 

</html>

