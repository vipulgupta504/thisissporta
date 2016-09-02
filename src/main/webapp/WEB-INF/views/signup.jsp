<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:import url="head-meta.jsp" />
<title>signup</title>
</head>
<style>
body
{
   background:url('resources/images/texture5.jpg');
    background-attachment: fixed;
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
input[type=text], select {
    width: 80%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid grey ;
    border-radius: 4px;
    box-sizing: border-box;
}
input[type=number], select {
    width: 80%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid grey ;
    border-radius: 4px;
    box-sizing: border-box;
}
input[type=password], select {
    width: 80%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid grey;
    border-radius: 4px;
    box-sizing: border-box;
}
input[type=submit] {
    width: 80%;
    background-color: #4CAF50; 
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}
</style>
<body>
<c:import url="/head" />

<br>

<div class="container">
   <form>
              <div class="form-group">
              <label for="usr"><h3 style="color:red;">User Name:</h3></label>
              <input type="text" class="form-control" id="usr" placeholder="Enter username" required="required" />
              </div>
              
              <div class="form-group">
              <label for="pwd"><h3 style="color:red;">Password:</h3></label>
              <input type="password" class="form-control" id="pwd" placeholder="Enter password" required="required" />
              </div>
              
               <div class="form-group">
              <label for="pwd"><h3 style="color:red;">Password:</h3></label>  
              <input type="password" class="form-control" id="pwd" placeholder="Confirm password" required="required" />
              </div>


               <div class="form-group">
              <label for="usr"><h3 style="color:red;">Email Id:</h3></label>
              
              <input type="text" class="form-control" id="usr" placeholder="Enter email id" required="required" />
               </div>
               
               <div class="form-group">
              <label for="usr"><h3 style="color:red;">Number:</h3></label>
              <input type="number" class="form-control" id="usr" placeholder="Enter number" required="required" />
              </div>
              
              <div class="form-group">
              <label for="usr"><h3 style="color:red;">Address:</h3></label>
              <input type="text" class="form-control" id="usr" placeholder="Enter address" required="required" />
              </div>
              
              <div class="form-group">
              <label for="city"><h3 style="color:red;">City:</h3></label>
   			 <select id="city" name="City">
      			<option value="delhi">Delhi</option>
      			<option value="mumbai">Mumbai</option>
      			<option value="chennai">Chennai</option>
     			 <option value="kolkata">Kolkata</option>
      			<option value="hyderabad">Hyderabad</option>
      			<option value="chandigarh">Chandigarh</option>
      			<option value="patna">Patna</option>
     			 <option value="tripura">Tripura</option>
     			 <option value="itanagar">Itanagar</option>
   			 </select>
   			 
   			 <br><br>
   			 
   			 <div class="form-group">
              <label for="state"><h3 style="color:red;">State:</h3></label>
   			 <select id="state" name="state">
      			<option value="delhi">Delhi</option>
      			<option value="maharashtra">Maharashtra</option>
      			<option value="tamil nadu">Tamil Nadu</option>
     			 <option value="west bengal">West Bengal</option>
      			<option value="andhra pradesh">Andhra pradesh</option>
      			<option value="chandigarh">Chandigarh</option>
      			<option value="bihar">Bihar</option>
     			 <option value="tripura">Tripura</option>
     			 <option value="arunachal pradesh">Arunachal Pradesh</option>
   			 </select>
   			 
   			 <br><br>
   			 
   			 <div class="form-group">
              <label for="usr"><h3 style="color:red;">PIN Code:</h3></label>
              <input type="number" class="form-control" id="usr" placeholder="Enter PIN" required="required" />
              </div>
    <br>
     
     <br>
     
    <p align="center"><button class="button">Create Account</button></p>
    
     </div>          


</body>
</html>