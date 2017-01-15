<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Login</title>
<style>
.container {
padding:auto;
margin:auto;

}
.form-group {
padding:auto;
align:center;
}

</style>
</head>
<body>
<!-- <form>
  <div class="form-group">
    <label for="email">Email address:</label>
    <input type="email" class="form-control" id="email">
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" id="pwd">
  </div>
  <div class="checkbox">
    <label><input type="checkbox"> Remember me</label>
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form>
 -->
 <div class="container">
  <form  action="<c:url value='j_spring_security_check'/>"  method="POST" role="form">
       <c:if test="${not empty loginerror}">
       <p class="loginerror" >${loginerror}</p>
       </c:if>
       
       <c:if test="${not empty loginmsg}">
       <p class="loginmsg" >${loginmsg}</p>
       </c:if>
          <h2 style="color:#000000">Please Login</h2>
	     <hr class="colorgraph"> 
        <div class="row">
				<div class="col-sm-6 ">
					<div class="form-group">
					<label for=" name"> Name:</label>
						<input style="background-color:#FFFFE0" type="text"  name="username" id="name" class="form-control" placeholder="Name" tabindex="1" />
					</div>
				</div>
			
				
			</div>
			 <div class="row">
				<div class="col-xs-6">
					<div class="form-group">
					<label for="pwd">Password:</label>
						<input style="background-color:#FFFFE0" type="password"  name="password" id="pwd" class="form-control" placeholder="Password" tabindex="2" />
					</div>
				</div>
			
				
			</div>
			<hr class="colorgraph"> 
 			<div class="row">
				<div class="col-xs-12 col-md-6"><input type="submit" value="Submit" class="btn btn-primary btn-block btn-lg" tabindex="7"></div>
				
			</div>

<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

	</div>		
        </form>
    
</body>
<br>
<br>
<br>
<br>
<br>
</html>
<%@ include file="footer.jsp" %>