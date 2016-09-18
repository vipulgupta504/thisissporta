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
</style>
</head>
<body>

<c:import url="/head"/>
<br>

<div class="container">
    <div class="box">
        <div class="col-md-12 col-sm-6">
            <div class="axe">
                
                <h2 class="title"><b>Update Product</b></h2>
                <div class="box-content">
                    <p class="description">
                    
                    <form:form method="POST" action="${pageContext.request.contextPath}/UpdateProductToDB" modelAttribute="Product">
                    
                    	<form:label path="productName">Enter Product Name:</form:label>
                    	<form:input type="text" path="productName" class="form-control"/>
                    	
                    	<br>
                    	
                    	<form:label path="productCategory">Enter Product Category:</form:label>
                    	<form:select path="productCategory" class="form-control">
                    		
                    		<c:if test="${not empty AllCategories}">
                    		<c:forEach var="item" items="${AllCategories}">
                    			<form:option value="${item.categoryName}" />
                    		</c:forEach>
                    		</c:if>
                    		
                    		<c:if test="${empty AllCategories}">
                    		<form:option value="None" />
                    		</c:if>
                    		
                    	</form:select>
                    
                    	<br>
                    	
                    	<form:label path="productDescription">Enter Product Description:</form:label>
                    	<form:input type="text" path="productDescription" class="form-control"/>
                    	
                    	<br>
                    	
                    	<form:label path="productPrice">Enter Product Price:</form:label>
                    	<form:input type="number" path="productPrice" class="form-control"/>
                    	
                    	<br>
                    	
                    	<form:label path="productImage">Enter Product Image:</form:label> 
                    	<label class="form-control"><span
							id="file_display1">Choose Image</span><span
							style="position: relative;"><form:input path="productFile"
									onchange="changeFileDisplay1();" type="file" 
									class="form-control" id="imageFile1" /></span></label> <script
							type="text/javascript">
										function changeFileDisplay1() {
											document
													.getElementById("file_display1").innerHTML = $(
													'#imageFile1').val();
											
										}
                    
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



</html>

