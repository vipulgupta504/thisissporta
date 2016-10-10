<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<style>

h1
{
font-family:"Comic Sans MS";
}
.navbar {
      margin-bottom: 50px;
      border-radius: 0;
        }
    
.jumbotron {
      margin-bottom: 0;
	  background-image:url("resources/images/athletic-backgrounds-14.png");
	  background-size: cover; 
    }
    
    .badge {
  padding-left: 9px;
  padding-right: 9px;
  -webkit-border-radius: 9px;
  -moz-border-radius: 9px;
  border-radius: 9px;
}

#lblCartCount {
    font-size: 12px;
    background: #ff0000;
    color: #fff;
    padding: 0 5px;
    vertical-align: top;
}

footer {
	position: fixed;
	
	bottom: 0%;
	width: 100%;
	
	z-index: 10;

      background-color: black;
      padding: 20px;
      
    }
    
</style>
 
<body>
    
<div class="jumbotron">
<div class="container text-center">
  
    <h1 style="color:orange;">THIS IS SPORTA</h1>
   
</div>  
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand">
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="${pageContext.request.contextPath}/index">Home</a></li>
        <li><a href="${pageContext.request.contextPath}/aboutus">About Us</a></li>
        <li><a href="${pageContext.request.contextPath}/products">Products</a></li>
        <li><a href="${pageContext.request.contextPath}/contactus">Contact Us</a></li>
        <%
						if (request.isUserInRole("ADMIN"))
						{
							%>
        <li><a href="${pageContext.request.contextPath}/categories">Categories</a></li>
        <%							
						}
						%>
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
               
               
               
               
				<c:choose>
					<c:when test="${not empty pageContext.request.userPrincipal}">
						<li><a href="${pageContext.request.contextPath}/index">${pageContext.request.userPrincipal.name}</a></li>
						<li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
						<%
						 if (!request.isUserInRole("ADMIN"))
 {
 	%>
						<li><a href="${pageContext.request.contextPath}/initiateflow"><span
								class="glyphicon glyphicon-shopping-cart" ><asp:Label ID="lblCartCount" runat="server" class="badge badge-warning"  ForeColor="White"/></span>Cart</a></li>
								<%
 }
 	%>
								

					</c:when>

					<c:otherwise>
						<li><a href="${pageContext.request.contextPath}/signup"><span
								class="glyphicon glyphicon-user"></span> Sign Up</a></li>
						<li><a href="${pageContext.request.contextPath}/loginpage"><span
								class="glyphicon glyphicon-log-in"></span> Login</a></li>
								
						
						<li><a href="${pageContext.request.contextPath}/initiateflow"><span
								class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
								
					</c:otherwise>
				</c:choose>


			</ul>
    </div>
  </div>
</nav>

	<footer class="container-fluid text-center">
  <marquee behavior="alternate"><b>ThisIsSporta.@2016  &copy;  All Rights Reserved</b></marquee>
 <!--  <form class="form-inline">Get deals:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger">Sign Up</button>
  </form>
< --></footer>  

</body>