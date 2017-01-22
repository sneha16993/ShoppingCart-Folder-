<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
      <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>product</title>
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

           		
	 </ul>
     <ul class="nav navbar-nav navbar-right">       
      <li class="divider-vertical"></li>
		<c:if test="${pageContext.request.userPrincipal.name != null}"> 		
			  <li><h4 class="text-right" style="color:#F5F5DC;margin:20px 0px 0px 0px">HELLO, ${pageContext.request.userPrincipal.name}</h4></li>
			<li><a  style="color:#F5F5DC;margin:5px 0px 0px 0px" href="<c:url value="/j_spring_security_logout" />"> <span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
		</c:if>    
								
     </ul>     
  </div>
</nav>

<div class="container-fluid" style="align:center; margin: 40px 0px 0px 150px">
<div class="col-md-4">
  <div class="row-fluid">
   <div class="span12">
   

<h2><center>ADD PRODUCT</center></h2>


<%-- <form:form action="product_add" commandName="product" method="post" enctype="multipart/form-data"> --%>
<%-- <%-- <form:form method="POST" commandName="product" action="product/add"> --%> --%>
<!-- <table class="table table-condensed"> -->
<!-- 	<tr bgcolor=#F0F8FF> -->
<%-- 		<td><form:label style="color:#000000" path="pid"><spring:message text="ID"/></form:label></td> --%>
		
		
<%-- 		<c:choose> --%>
<%-- 			<c:when test="${!empty product.pid }"> --%>
<%-- 				<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" path="pid" disabled="true" readonly="true"/></td> --%>
<%-- 			</c:when> --%>
<%-- 			<c:otherwise> --%>
<%-- 				<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" path="pid"  pattern=".{4,7}" required="true" title="id should be between 4 to 7 characters"/></td> --%>
<%-- 				</c:otherwise> --%>
<%-- 				</c:choose> --%>
<!-- 				</tr> -->
				
<!-- 				<tr bgcolor="#F0F8FF">  -->
<%-- 				<form:input path="pid" hidden="true"/> --%>
				
<%-- 				<td><form:label style="color:#000000" path="pname"> <spring:message text="NAME"/></form:label></td> --%>
<%--         		<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" path="pname" required="true" /></td>  --%>
<!-- 				</tr> -->
				
<!-- 				<tr bgcolor="#F0F8FF"> -->
<%-- 				<td><form:label style="color:#000000" path="pdesc" ><spring:message text="DESCRIPTION"/></form:label></td> --%>
<%-- 				<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" path="pdesc" required="true"/></td> --%>
<!-- 				</tr> -->
				
<!-- 				<tr bgcolor="#F0F8FF"> -->
<%-- 				<td><form:label style="color:#000000" path="pprice" ><spring:message text="PRICE"/></form:label></td> --%>
<%-- 				<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" path="pprice" required="true"/></td> --%>
<!-- 				</tr> -->
				
<!-- 				<tr bgcolor="#F0F8FF"> -->
<%-- 				<td><form:label style="color:#000000" path="supplier" ><spring:message text="SUPPLIER"/></form:label></td> --%>
<%-- 				<td><form:select style="background-color:#F5F5DC;border:0.25px solid black" path="supplier.sname" items="${supplierList}" item_value="sname" itemLabel="sname" required="true" /></td> --%>
<!-- 				</tr> -->
				
<!-- 				<tr bgcolor="#F0F8FF"> -->
<%-- 				<td><form:label style="color:#000000" path="category" ><spring:message text="CATEGORY"/></form:label></td> --%>
<%-- 				<td><form:select style="background-color:#F5F5DC;border:0.25px solid black"  path="category.cname" items="${categoryList}" item_value="cname" itemLabel="cname" required="true" /></td> --%>
<!-- 				</tr> -->
				
<!-- 				<tr bgcolor="#F0F8FF"> -->
<%-- 				<td><form:label style="color:#000000" path="image" ><spring:message text="IMAGE"/></form:label></td> --%>
<%-- 				<td><form:input style="background-color:#F5F5DC;border:0.25px solid black" path="image" type="file"  required="true"/></td> --%>
<!-- 				</tr> -->
				
				
				
<!-- 				<tr bgcolor="#F0F8FF"> -->
<%-- 				<td align="right" colspan="2"><c:if test="${!empty product.pname}"> --%>
<%-- 									<input style= "align:middle" class="btn btn-primary btn-md" type="submit" value="<spring:message text="Edit product"/>"/> --%>
<%-- 								</c:if> --%>
<%-- 								<c:if test="${empty product.pname}"> --%>
<%-- 									<input style= "align:middle"  class="btn btn-primary btn-md" type="submit" value="<spring:message text="Add product"/>"/> --%>
<%-- 								</c:if> --%>
<!-- 				</td> -->
<!-- 				</tr> -->
<!-- </table> -->
<%-- </form:form> --%>
<!-- </div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- 	</div> -->
<!-- <br> -->
<!-- <div class="container"> -->

<%-- <h3><center>PRODUCT LIST</center></h3> --%>
<!-- <br> -->
<%-- <c:if test="${!empty productList}"> --%>
<!-- 	<table  class="table" align="center" bordercolor="#800080" BORDER=10> -->
<!-- 			<tr bgcolor="#F0F8FF"> -->
<!-- 				<th style="color:black" width="125" bgcolor="#F0F8FF" align="center">product ID</th> -->
<!-- 				<th style="color:black" width="125" align="center">product NAME</th> -->
<!-- 				<th style="color:black" width="190" align="center">product DESCRIPTION</th> -->
<!-- 				<th style="color:black" width="190" align="center">product PRICE</th> -->
<!-- 				<th style="color:black" width="100" align="center">EDIT</th> -->
<!-- 				<th style="color:black" width="100" align="center">DELETE</th> -->
<!-- 			</tr> -->
<%-- 					<c:forEach items="${productList}" var="product"> --%>
<!-- 				<tr bgcolor="#FFFFFF"> -->
<%-- 					<td  style="color:#000000;font-size:120%" align="center">${product.pid}</td> --%>
<%-- 					<td  style="color:#000000;font-size:120%" align="center">${product.pname}</td> --%>
<%-- 					<td style="color:#000000;font-size:120%" align="center">${product.pdesc}</td> --%>
<%-- 					<td style="color:#000000;font-size:120%" align="center">${product.pprice}</td> --%>
<%-- 					<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='product/edit/${product.pid}' />"><button type="button" class="btn btn-warning">Edit</button></a></td> --%>
<%-- 					<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='product/remove/${product.pid}' />"><button type="button" class="btn btn-danger">Delete</button></a></td> --%>
<!-- 				</tr> -->
<%-- 			</c:forEach> --%>
<!-- 		</table> -->
<%-- 	</c:if> --%>
<!-- 	</div> -->


 
 <form:form action="product_add" commandName="product" method="post" enctype="multipart/form-data">
	<table cellpadding="5px">
		<tr>
		<td>Product ID</td>
	<c:choose>
		<c:when test="${!empty product.pid}">
		<td><form:input type="text" path="pid" name="pid" disabled="true" readonly="true"/></td>
		</c:when>
		<c:otherwise>
		<td><form:input type="text" path="pid" name="pid" maxlength="20"/></td>
		</c:otherwise>
		</c:choose>
		</tr>

	<tr>
		<form:input path="pid" hidden="true"/>
		<td>Product Name</td>
		<td><form:input type="text" path="pname" name="pname" maxlength="50" /></td>
	</tr>		
		
	<tr>
		<td>Product Price</td>
		<td><form:input type="text" path="pprice" name="pprice" maxlength="5" /></td>
	</tr>
	
	<tr>
		<td>Product Description</td>
		<td><form:input type="text" path="pdesc" name="pdesc" maxlength="100" /></td>
	</tr>
	
	<tr>
		<td>Category List</td>
		<td><form:select path="category.cname" items="${categoryList}" itemValue="cname" itemLabel="cname"></form:select></td>
	</tr>

	<tr>
		<td>Supplier List</td>
		<td><form:select path="supplier.sname" items="${supplierList}" itemValue="sname" itemLabel="sname"></form:select></td>
	</tr>

	
	<tr>
		<td>Product Image</td>
		<td><form:input type="file" path="image" name="image"/></td>
	</tr>
	
	<tr>
		<td>
		<c:if test="${!empty product.pname}">
		<input type="submit" value="EDIT Product"/>
		</c:if>
		<c:if test="${empty product.pname}">
		<input type="submit" value="ADD Product"/>
		</c:if>
		</td>
	</tr>
		
		</table>
	</form:form>
	</div>
	</div>
	</div>
	</div>
	
<%-- 	<h3><center>PRODUCT LIST</center></h3> --%>
<!-- <br> -->
<%-- <c:if test="${!empty productList}"> --%>
<!-- 	<table  class="table" align="center" bordercolor="#800080" BORDER=10> -->
<!-- 			<tr bgcolor="#F0F8FF"> -->
<!-- 				<th style="color:black" width="125" bgcolor="#F0F8FF" align="center">product ID</th> -->
<!-- 				<th style="color:black" width="125" align="center">product NAME</th> -->
<!-- 				<th style="color:black" width="190" align="center">product DESCRIPTION</th> -->
<!-- 				<th style="color:black" width="190" align="center">product PRICE</th> -->
<!-- 				<th style="color:black" width="190" align="center">CATEGORY</th> -->
<!-- 				<th style="color:black" width="190" align="center">SUPPLIER</th> -->
<!-- 				<th style="color:black" width="190" align="center">IMAGE</th> -->
<!-- 				<th style="color:black" width="100" align="center">EDIT</th> -->
<!-- 				<th style="color:black" width="100" align="center">DELETE</th> -->
<!-- 			</tr> -->
<%-- 					<c:forEach items="${productList}" var="product"> --%>
<!-- 				<tr bgcolor="#FFFFFF"> -->
<%-- 					<td  style="color:#000000;font-size:120%" align="center">${product.pid}</td> --%>
<%-- 					<td  style="color:#000000;font-size:120%" align="center">${product.pname}</td> --%>
<%-- 					<td style="color:#000000;font-size:120%" align="center">${product.pdesc}</td> --%>
<%-- 					<td style="color:#000000;font-size:120%" align="center">${product.pprice}</td> --%>
<%-- 					<td style="color:#000000;font-size:120%" align="center">${product.category_id}</td> --%>
<%-- 					<td style="color:#000000;font-size:120%" align="center">${product.supplier_id}</td> --%>
<%-- 					<td style="color:#000000;font-size:120%" align="center"><img src="<c:url value="/resources/images/${product.pid}.jpg"/>" width="240" height="240"/></td> --%>
<%-- 					<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='product_edit-${product.pid}' />"><button type="button" class="btn btn-warning">Edit</button></a></td> --%>
<%-- 					<td style="color:#000000;font-size:120%" align="center"><a href="<c:url value='product_remove-${product.pid}' />"><button type="button" class="btn btn-danger">Delete</button></a></td> --%>
<!-- 				</tr> -->
<%-- 			</c:forEach> --%>
<!-- 		</table> -->
<%-- 	</c:if> --%>
	
	<h3><center>PRODUCT LIST</center></h3>
		<c:if test="${!empty productList}">
		<table width=100% cellpadding="5px">
			<tr>
				<th width="80">Product ID</th>
				<th width="120">Product Name</th>
				<th width="120">Product Price</th>
				<th width="120">Description</th>
				<th width="120">Category ID</th>
				<th width="120">Supplier  ID</th>
			
				<th>Image</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
				
			</tr>
			<c:forEach items="${productList}" var="product">
				<tr>
					<td align="left">${product.pid}</td>
					<td align="left">${product.pname}</td>
					<td align="left">${product.pprice}</td>
					<td align="left">${product.pdesc}</td>
					<td align="left">${product.category_id}</td>
					<td align="left">${product.supplier_id}</td>
					
					<td align="center"><img src="<c:url value="/resources/images/${product.pid}.jpg"/>" width="240" height="240"/></td>
					<td align="center"><a href="<c:url value='product_edit-${product.pid}'/>">EDIT</a></td>
					<td align="center"><a href="<c:url value='product_delete-${product.pid}'/>">DELETE</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
 

</body>
</html>