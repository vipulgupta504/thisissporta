<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>this is sporta</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="resources/references/css/bootstrap.min.css">
<script src="resources/references/js/jquery.min.js"></script>
<script src="resources/references/js/bootstrap.min.js"></script>
<style>
img {
    opacity: 0.8;
    filter: alpha(opacity=80); 
}
p{font-size: 30px;}
label{font-size: 25px;
}
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
  height: 400px;
      width: 60%;
       margin: auto; 
       }       
 body
{
   background:url('resources/images/texture5.jpg');
    background-attachment: fixed;
} 

 .jumbotron{
background-image:url("resources/images/player.jpg");
} 
  </style>
</head>
<body>

<c:import url="/head" />
    <br><br>
    
    <br><br>
    
    <div class="container">
  <div class="jumbotron">
  
    
  </div>
  </div>
        
    br><br>

<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/images/download17.jpg" alt="cricket bat" width="100" height="60"> 
      </div> 

      <div class="item">
        <img src="resources/images/download7.jpg" alt="football" width="100" height="60">
        
      </div>
    
      <div class="item">
        <img src="resources/images/download18.jpg" alt="racquet" width="100" height="60">
        
      </div>

      <div class="item">
        <img src="resources/images/download19.jpg" alt="hockey stick" width="100" height="60">
        
      </div>
    </div>

    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<br>

<div class="row">
		<div class="col-sm-7" >
   			<img  src="resources/images/download5.jpg" class="img-circle" alt="cricket bat" width="450" height="200"/>
		</div>
		<div class="col-sm-5" >
  			<label><i>"The iconic Kahuna has been the spearhead of the Kookaburra range for the last 12 years. Its powerful profile, big edges and renowned graphics make it ideal for the stroke maker who likes to take control and lead by example."</i></label>
		</div>
	</div>
	
	<br>

	<div class="container">
  		<div id="myCarousel" class="carousel slide" data-ride="carousel">
    		<ol class="carousel-indicators">
      			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      			<li data-target="#myCarousel" data-slide-to="1"></li>
      			<li data-target="#myCarousel" data-slide-to="2"></li>
      			<li data-target="#myCarousel" data-slide-to="3"></li>
    		</ol>
    		<div class="carousel-inner" role="listbox">
      			<div class="item active">
        			<img src="resources/images/download9.jpg" alt="cricket bat" width="100" height="60">
      			</div>

	      		<div class="item">
        			<img src="resources/images/download.jpg" alt="football" width="100" height="60">
      			</div>
    
      			<div class="item">
        			<img src="resources/images/download4.jpg" alt="racquet" width="100" height="60">
      			</div>

      			<div class="item">
        			<img src="resources/images/download10.jpg" alt="hockey stick" width="100" height="60">
      			</div>
    		</div>

    		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
     			 <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
     			 <span class="sr-only">Previous</span>
    		</a>
    		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
     			 <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    			  <span class="sr-only">Next</span>
   			 </a>
  		</div>
	</div>

	<br>

	<div class="row">
		<div class="col-sm-7" >
   			<img src="resources/images/download1.jpg" class="img-circle" alt="football" width="400" height="250">
		</div>
		<br>
		<br>
		<div class="col-sm-5" >
  			<label><i>"This new product by nike wont make you leave the field and remains durable for a long time. So play on!"</i></label>
		</div>
	</div>

	<br>

	<div class="row">
		<div class="col-sm-7" >
  			<img src="resources/images/download18.jpg" class="img-circle" alt="badminton racquet" width="450" height="200">
		</div>
        <br>
        <br>
	<div class="col-sm-5" >
  		<label><i>"All badminton players have a reason to rejoice now with this new racquet from Yonex. Designed with the latest technology and equipments, this wont be damaged easily."</i></label>
	</div>
   </div>

<c:import url="/footer" />

</body>

</html>