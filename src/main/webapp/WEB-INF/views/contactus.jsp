<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <style>
body
{
   background:url('resources/images/texture10.jpg');
}
input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
input[type=submit] {
    width: 100%;
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

/* .row {
    border-radius: 5px;
    background-color: lightgrey;
    padding: 10px 20px 10px 20px;
} */
#wrap{
background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, lightblue), color-stop(1, lightblue));
/* Webkit (Chrome 11+) */ 
background-image: linear-gradient(to bottom, lightblue 0%, 	lightblue 100%);

}  

</style> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="resources/references/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>this is sporta</title>
<c:import url="/head" />
</head>
<body>


  
  <br>

 <div class="container" id="wrap">
  <div class="row">
        <div class="col-md-6 col-md-offset-3">
  			<form>
    			<label for="fname">First Name</label>
    				<input type="text" id="fname" name="firstname">

					 <label for="lname">Last Name</label>
    				 <input type="text" id="lname" name="lastname">

    				 <label for="country">State</label>
    				 <select id="country" name="country">
      					<option value="australia">Australia</option>
      					<option value="canada">Canada</option>
      					<option value="usa">USA</option>
    				</select>
  
    <input type="submit" value="Submit">
  </form>

</div>
</div>
</div>
 

<br>

<%@include file="footer.jsp" %>
</body>
</html>