<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up for New User</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <h2>Sign Up Form</h2>
  <form:form method="POST" commandName="user" action="register/add">
  
   <div class="form-group">
    <label for=" name"> Name:</label>
    <form:input type=" text" class="form-control" id=" name" placeholder="Enter name" path="name"/>
       </div>
    <div class="form-group">
     <label for="password">Password:</label>
     <form:input type="password" class="form-control" id="pwd" placeholder="Enter password" path="pwd"/>
    </div>   
    <div class="form-group">
      <label for="address">Address:</label>
      <form:input type="text" class="form-control" id="address" placeholder="Enter address" path="addr"/>
    </div>
    <div class="form-group">
      <label for="email">Email:</label>
      <form:input type="text" class="form-control" id="email" placeholder="Enter email" path="email"/>
    </div>
    
    <div class="form-group">
      <label for="phone">Phone:</label>
      <form:input type="text" class="form-control" id="phone" placeholder="Enter phone" path="phno"/>
    </div>
    
   
    <button type="register" class="btn btn-default">Register</button>
  </form:form>
</div>

</body>
</html>