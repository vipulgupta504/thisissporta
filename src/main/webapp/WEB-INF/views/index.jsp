<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<c:import url="/head-meta"/>

<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      height: 500px; 
      width: 100%;
      margin: auto; 
       }       
 body
{
   background-image: url("resources/images/texture7.jpg");
    
} 

</style>
</head>
<body>

<c:import url="/head" />
    
    
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
        <img src="resources/images/dunlop.jpg" alt="racquet" width="100" height="60"> 
        
      </div> 

      <div class="item">
        <img src="resources/images/download23.jpg" alt="football" width="100" height="60">
        
      </div>
    
      <div class="item">
        <img src="resources/images/download21.jpg" alt="cricket bat" width="100" height="60">
        
      </div>

      <div class="item">
        <img src="resources/images/image.jpg" alt="hockey stick" width="100" height="60">
        
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

<br>

<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">KOOKABURRA BATS</div>
        <div class="panel-body"><img src="resources/images/download16.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">The iconic Kahuna has been the spearhead of the Kookaburra range for the last 12 years. Its powerful profile, big edges and renowned graphics make it ideal for the stroke maker who likes to take control and lead by example.</div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">ADIDAS FOOTBALL</div>
        <div class="panel-body"><img src="resources/images/download4.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">This new product by nike wont make you leave the field and remains durable for a long time. So play on!</div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">YONEX RACQUET</div>
        <div class="panel-body"><img src="resources/images/download20.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">All badminton players have a reason to rejoice now with this new racquet from Yonex. Designed with the latest technology and equipments, this wont be damaged easily.</div>
      </div>
    </div>
  </div>
</div>

<br>

<%@include file="footer.jsp" %>

</body>

</html>