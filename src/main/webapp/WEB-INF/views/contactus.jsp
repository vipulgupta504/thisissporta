<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
textarea {
    width: 100%;
    height: 60px;
    padding: 12px 20px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    background-color: #f8f8f8;
    font-size: 16px;
    resize: none;
    }
body
{
   background:url('resources/images/texture5.jpg');
}
.button 
{
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: grey;
  border: none;
  border-radius: 15px;
}

.button:hover {background-color:RED}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
input[type=text] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 3px solid #ccc;
    -webkit-transition: 0.5s;
    transition: 0.5s;
    outline: none;
}

input[type=text]:focus {
    border: 3px solid blue;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="resources/references/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>this is sporta</title>
</head>
<body>

<c:import url="/head" />
  
  <br>

<div class="container">
  <form>
              <div class="form-group">
              <label for="usr"><h3 style="color:white;">First Name:</h3></label>
              <input type="text" class="form-control" id="usr" placeholder="Enter firstname" required="required" />
            </div>
    
  <br>
    
               <div class="form-group">
              <label for="usr"><h3 style="color:white;">Last Name:</h3></label>
              <input type="text" class="form-control" id="usr" placeholder="Enter lastname" required="required" />
            </div>
    
  <br>
  
               <div class="form-group">
              <label for="usr"><h3 style="color:white;">Email Id:</h3></label>
              
              <input type="text" class="form-control" id="usr" placeholder="Enter email id" required="required" />
              
            </div>
    
  <br>
                 <div class="form-group">
								<label for="subject"><h3 style="color:white;">Subject:</h3></label> <select id="subject"
									name="subject" class="form-control" required="required">
									<option value="service">General Customer Service</option>
									<option value="product">Product Support</option>
								</select>
							</div>
							
  <br>
  				 <p><h3 style="color:white;">Comments:</h3></p>
    <form>
  <textarea></textarea>
</form>	

<br>
		
                 <div class="checkbox">
                <label><input type="checkbox">Remember Me</label>
                  </div>

  <br>

    <p align="center"><button class="button">Submit</button></p>
    
  </form>
</div>




</body>
</html>