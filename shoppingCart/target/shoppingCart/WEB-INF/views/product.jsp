<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
  <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Products</title>
</head>
<body>
<div class="container">
  <h2><center>ADD PRODUCTS</center></h2>
<c:url var="addAction"  value="/product/add"></c:url>

<form:form action="${addAction}" commandName="product" enctype="multipart/form-data">
<table class="table table-condensed">
	<tr bgcolor=#F0F8FF>
		<td><form:label style="color:#000000" path="pid"><spring:message text="ID"/></form:label></td>
		
		
		<c:choose>
			<c:when test="${!empty product.pid }">
				<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" path="pid" disabled="true" readonly="true"/></td>
			</c:when>
			<c:otherwise>
				<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" path="pid"  pattern=".{4,7}" required="true" title="id should be between 4 to 7 characters"/></td>
				</c:otherwise>
				</c:choose>
				</tr>
				
				<tr bgcolor="#F0F8FF"> 
				<form:input path="pid" hidden="true"/>
				
				<td><form:label style="color:#000000" path="pname"> <spring:message text="NAME"/></form:label></td>
        		<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" path="pname" required="true" /></td> 
				</tr>
				
				<tr bgcolor="#F0F8FF">
				<td><form:label style="color:#000000" path="pdesc" ><spring:message text="DESCRIPTION"/></form:label></td>
				<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" path="pdesc" required="true"/></td>
				</tr>
				
				<tr bgcolor="#F0F8FF">
				<td><form:label style="color:#000000" path="pprice" ><spring:message text="PRICE"/></form:label></td>
				<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" path="pprice" required="true"/></td>
				</tr>
				<tr bgcolor=#F0F8FF>
				<td><form:label style="color:#000000" path="supplier" ><spring:message text="SUPPLIER"/></form:label></td>
				<td><form:select style="background-color:#F5F5DC" path="supplier.sname" items="${supplierList}" itemValue="sname" itemLabel="sname"/></td>
				</tr>
				<tr bgcolor=#F0F8FF>
				<td><form:label style="color:#000000" path="category" ><spring:message text="CATEGORY"/></form:label></td>
				<td><form:select style="background-color:#F5F5DC" path="category.cname" items="${categoryList}" itemValue="cname" itemLabel="cname"/></td>
				</tr>
				
			  	<tr bgcolor=#F0F8FF>
				<td><form:label style="color:#000000"  path="image" ><spring:message text="image"/></form:label></td>
				<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" type="file" path="image" /></td>
				</tr>
				
				
				<tr bgcolor="#F0F8FF">
				<td align="right" colspan="2"><c:if test="${!empty product.pname }">
									<input style= "align:middle" class="btn btn-primary btn-md" type="submit" value="<spring:message text="Edit product"/>"/>
								</c:if>
								<c:if test="${empty product.pname}">
									<input style= "align:middle"  class="btn btn-primary btn-md" type="submit" value="<spring:message text="Add product"/>"/>
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
<div class="container">

<h3><center>product LIST</center></h3>
<br>
<c:if test="${!empty productList}">
	<table  class="table" align="center" bordercolor="#800080" BORDER=10>
			<tr bgcolor="#F0F8FF">
				<th style="color:black" width="125" bgcolor="#F0F8FF" align="center">PRODUCTS ID</th>
				<th style="color:black" width="125" align="center">PRODUCTS NAME</th>
				<th style="color:black" width="190" align="center">PRODUCTS DESCRIPTION</th>
				<th style="color:black" width="190" align="center">PRODUCTS PRICE</th>
				<th style="color:black" width="190" align="center">IMAGE</th>
				<th style="color:black" width="100" align="center">EDIT</th>
				<th style="color:black" width="100" align="center">DELETE</th>
			</tr>
					<c:forEach items="${productList}" var="products">
				<tr bgcolor="#FFFFFF">
					<td  style="color:#000000;font-size:120%" align="center">${product.pid}</td>
					<td  style="color:#000000;font-size:120%" align="center">${product.pname}</td>
					<td style="color:#000000;font-size:120%" align="center">${product.pdescription}</td>
					<td style="color:#000000;font-size:120%" align="center">${product.pprice}</td>
				<td style="color:#000000;font-size:120%" align="center"><img src="<c:url value="/resources/images/${product.pid}.jpg"/>" width="240" height="240"/></td>
					
					<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='product/edit/${product.pid}' />"><button type="button" class="btn btn-warning">Edit</button></a></td>
					<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='product/remove/${product.pid}' />"><button type="button" class="btn btn-danger">Delete</button></a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	</div>
</div>
</body>
</html>