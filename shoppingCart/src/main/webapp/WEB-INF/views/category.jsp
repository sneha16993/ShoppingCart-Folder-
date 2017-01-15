<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
      <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
			<script>
						var f = ${categories};
						angular.module('repeatSample', []).controller('repeatController',
						function($scope) {
							$scope.categories = f;
							$scope.sort = function(keyname) {
							$scope.sortKey = keyname; 
							$scope.reverse = !$scope.reverse; 
							}
						});
					</script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category</title>
<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<style>
body{ 
background-image: url(resources/images/bgk13.jpg); 
background-size:     cover;                      
    background-repeat:   no-repeat;
 } 
 th{
    color:white;
    background-color:#F0F8FF;
    align:center;
}

table, th, td {
    border: 2.5px solid black;
    align:center;
   
    
}
/* .btn {
    background-color:#cc0052 ;
    } */
h2{
color:#F5F5DC;
font-family: "Times New Roman", Times, serif;
}

h3{
color:#F5F5DC;
font-family: "Times New Roman", Times, serif;
}


</style>
</head>
<body>

<div class="container-fluid" style="align:center; margin: 0px 0px 0px 0px">
<div class="col-md-4">
  <div class="row-fluid">
   <div class="span12">
   
<c:url var="addAction"  value="/category/add"></c:url>

<form:form action="${addAction}" commandName="category">
<%-- <form:form method="POST" commandName="category" action="category/add"> --%>
<table class="table table-condensed">
	<tr bgcolor=#F0F8FF>
		<td><form:label style="color:#000000" path="cid"><spring:message text="ID"/></form:label></td>
		
		<c:choose>
			<c:when test="${!empty category.cid}">
				<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" path="cid" disabled="true" readonly="true"/></td>
			</c:when>
			<c:otherwise>
				<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" path="cid"  pattern=".{4,7}" required="true" title="id should be between 4 to 7 characters"/></td>
				</c:otherwise>
				</c:choose>
				</tr>
				
				<tr bgcolor="#F0F8FF"> 
				<form:input path="cid" hidden="true"/>
				
				<td><form:label style="color:#000000" path="cname"> <spring:message text="NAME"/></form:label></td>
        		<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" path="cname" required="true" /></td> 
				</tr>
				
				<tr bgcolor="#F0F8FF">
				<td><form:label style="color:#000000" path="cdesc" ><spring:message text="DESCRIPTION"/></form:label></td>
				<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" path="cdesc" required="true"/></td>
				</tr>
				
				<tr bgcolor="#F0F8FF">
				<td align="right" colspan="2"><c:if test="${!empty category.cname}">
									<input style= "align:middle" class="btn btn-primary btn-md" type="submit" value="<spring:message text="Edit Category"/>"/>
								</c:if>
								<c:if test="${empty category.cname}">
									<input style= "align:middle"  class="btn btn-primary btn-md" type="submit" value="<spring:message text="Add Category"/>"/>
								</c:if>
				</td>
				</tr>
</table>
</form:form>
</div>
	</div>
	</div>
	</div>
<br>

<h1>${message}</h1> 

<div class="container">

<%-- <h3><center>CATEGORY LIST</center></h3> --%>
<!-- <br> -->
<%-- <c:if test="${!empty categoryList}"> --%>
<!-- 	<table  class="table" align="center" bordercolor="#800080" BORDER=10> -->
<!-- 			<tr bgcolor="#F0F8FF"> -->
<!-- 				<th style="color:black" width="125" bgcolor="#F0F8FF" align="center">CATEGORY ID</th> -->
<!-- 				<th style="color:black" width="125" align="center">CATEGORY NAME</th> -->
<!-- 				<th style="color:black" width="190" align="center">CATEGORY DESCRIPTION</th> -->
<!-- 				<th style="color:black" width="100" align="center">EDIT</th> -->
<!-- 				<th style="color:black" width="100" align="center">DELETE</th> -->
<!-- 			</tr> -->
<%-- 					<c:forEach items="${categoryList}" var="category"> --%>
<!-- 				<tr bgcolor="#FFFFFF"> -->
<%-- 					<td  style="color:#000000;font-size:120%" align="center">${category.cid}</td> --%>
<%-- 					<td  style="color:#000000;font-size:120%" align="center">${category.cname}</td> --%>
<%-- 					<td style="color:#000000;font-size:120%" align="center">${category.cdesc}</td> --%>
<%-- 					<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='category/edit/${category.cid}' />"><button type="button" class="btn btn-warning">Edit</button></a></td> --%>
<%-- 					<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='category/remove/${category.cid}' />"><button type="button" class="btn btn-danger">Delete</button></a></td> --%>
<!-- 				</tr> -->
<%-- 			</c:forEach> --%>
<!-- 		</table> -->
<%-- 	</c:if> --%>
<!-- 	</div> -->

<!-- /*angular js*/ -->
 <!-- Listing Categories -->
  		
       	<div  ng-app="repeatSample" class="section">
       		<div class="container">
				<!-- Angular script -->
			
		

					<div class="bs-component" ng-controller="repeatController">
					<form class="form-inline">
						<div class="form-group">
							<label>Search Category</label> 
							<div class="input-group">
								<input type="text" ng-model="search" class="form-control" placeholder="Search">
								<span class="input-group-btn">
        							<button class="btn btn-secondary" type="button">Go!</button>
      							</span>
      						</div>
						</div>
					</form>
			
					<br>
			
					<hr>
			
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th ng-click="sort('cid')">CATEGORY ID
									<span class="glyphicon sort-icon" ng-show="sortKey=='cid'"
									ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
								</th>						
								<th ng-click="sort('cname')">CATEGORY NAME 
									<span class="glyphicon sort-icon" ng-show="sortKey=='cname'"
									ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
								</th>
						
								<th ng-click="sort('cdesc')">CATEGORY DESCRIPTION
									<span class="glyphicon sort-icon" ng-show="sortKey=='cdesc'"
									ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
								</th>
						
								
 								<th>EDIT 
 									<span class="glyphicon sort-icon"></span> 
								</th> 
						
								<th>DELETE 
									<span class="glyphicon sort-icon"></span>
								</th>
							</tr>
						</thead>
						<tbody>
						
							<tr ng-repeat="category in categories|orderBy:sortKey:reverse|filter:search">
								<td>{{category.cid}}</td>
								<td>{{category.cname}}</td>
								<td>{{category.cdesc}}</td>
								
 								<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='category/edit/{{category.cid}}' />"><button type="button" class="btn btn-warning">Edit</button></a></td> 
								<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='category/remove/{{category.cid}}' />"><button type="button" class="btn btn-danger">Delete</button></a></td>
							</tr>
						</tbody>
					</table>

					</div>
				</div>
			</div>  

</body>
</html>

<%@ include file="footer.jsp" %>