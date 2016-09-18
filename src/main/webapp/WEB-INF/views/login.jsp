<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:import url="head-meta.jsp" />
<title>login</title>
</head>
<body>

<c:import url="/head" />

<br>

<form action="login" method="post">
	<c:if test="${param.error != null}">
				<div class="alert alert-danger">
					<p>Invalid username and password.</p>
				</div>
			</c:if>
			<c:if test="${param.logout != null}">
				<div class="alert alert-success">
					<p>You have been logged out successfully.</p>
				</div>
			</c:if>
			
<div class="container">
			
		 <div class="row">
        <div class="col-md-6 col-md-offset-3">
            
           			 <legend><b>LOGIN</b></legend>
                    
                    <div class="row">
                        <div class="col-xs-6 col-md-6">
                            <input type="text" name="username" class="form-control" placeholder="User Name"/>
                        </div>
                        <div class="col-xs-6 col-md-6">
                            <input type="password" name="password" class="form-control" placeholder="Password"/>
                        </div>        
                    </div>
                    			  <br>
                    			  
                    			  <input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
          
                    <button class="btn btn-lg btn-success btn-block signup-btn" type="submit">LOGIN</button>
                    
                    <br>
                                           
          </div>
		</div>            
</div>
</form>

</body>
</html>