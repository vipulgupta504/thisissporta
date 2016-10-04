<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>this is sporta</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="resources/references/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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

<c:import url="head.jsp"/>
<br>

<div class="container">
    <div class="box">
        <div class="col-md-12 col-sm-6">
            
                
                <h2 class="title"><b>ABOUT US</b></h2>
                <div class="box-content">
                    <p class="description">
                    Imagine your favourite sports items all under one place! ThisIsSporta is a web portal designed exclusively for all sports items-be it football,cricket or sports shoes,this site will help in serving all your desires. This is first-of-its-kind sports web portal which has been launched in India. We at THISISSPORTA offer latest products at reasonable prices. We deal in various sporting brand majors such as adidas,nike and many others. Also you can be assured of safe payment gateway and free home delivery of your desired products within the stipulated time.So dont wait and switch to the products tab and start shopping!!
                    
                      </p>  
                
            </div>
        </div>
        
    </div>  
</div>
 </body> 

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

</html>

<%@include file="footer.jsp" %>