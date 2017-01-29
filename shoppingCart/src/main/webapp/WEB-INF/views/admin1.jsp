<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.button {
    background-color: white; /* Green */
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

.button1 {
    background-color: white; 
    color: black; 
    border: 2px solid #008CBA;
}

.button1:hover {
    background-color: #87CEFA;
    color: white;
}

.button2 {
    background-color: white; 
    color: black; 
    border: 2px solid #008CBA;
}

.button2:hover {
    background-color: 	#87CEFA;
    color: white;
}
.button3 {
    background-color: white; 
    color: black; 
    border: 2px solid #008CBA;
}

.button3:hover {
    background-color: #87CEFA;
    color: white;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrator</title>
</head>
<body>
<div class="container">
<button class="button button1"><a href="category">Categories</a><br></button>
<button class="button button2"><a href="product">Products</a><br></button>
<button class="button button3"><a href="supplier">Supplier</a><br></button>

</div>	
</body>
</html>
 <%@ include file="footer.jsp" %>
