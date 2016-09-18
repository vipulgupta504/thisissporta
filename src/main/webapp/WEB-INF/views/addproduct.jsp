<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url="head-meta.jsp"/>
<title>this is sporta</title>
</head>
<style>
 body
{
   background-image: url("resources/images/texture7.jpg");   
} 
</style>
<body>
<c:import url="head.jsp"/>


	<div class="container">
    <div class="box">
        <div class="col-md-12 col-sm-6">
            <div class="axe">
                
                <h2 class="title"><b>Add Product</b></h2>
                <div class="box-content">
                    <p class="description">
                    
                    <form:form method="POST" action="AddProductToDB" modelAttribute="Product" enctype="multipart/form-data">
                    
                    	<form:label path="productName">Enter Product Name:</form:label>
                    	<form:input type="text" path="productName" class="form-control"/>
                    
                    	<br>
                    	
                    	<%-- <form:label path="productCategory">Enter Product Category:</form:label>
                    	<form:input type="text" path="productCategory" class="form-control"/> --%>
                    	
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
											;
										}
									</script>
                    	
                    	
                    	<input type="submit" class="btn btn-success" value="Add Product"/>
                    
                    </form:form>
                    
                    </p>  
                </div>
            </div>
        </div>
        
    </div>  
</div>

</body>
</html>