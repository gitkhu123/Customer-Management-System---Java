<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UpdateCustomer</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<style>
	@import url(https://fonts.googleapis.com/css?family=Montserrat:400,700);
	
	body {
			font-family: 'Montserrat', Arial, Helvetica, sans-serif;
            background: rgb(30, 30, 40);
        }
    
    

</style>
</head>
<body>

	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/customermanagement" user="root"
		password="root" />

	<sql:query dataSource="${db}" var="rs">  
      SELECT * from customer WHERE ID="<%=Integer.parseInt(request.getParameter("id"))%>"; 
     </sql:query>

	<div class="container col-md-5" style="margin-top: 30px;">
		<div class="card">
			<div class="card-body">
			<h1 class="text-center">Update Details</h1>
				<c:forEach var="table" items="${rs.rows}">

					<form action="update-customer">
					<input type="hidden" value="<c:out value="${table.id}" />" name="id">
						<fieldset class="form-group">
							<label>Customer Name</label> <input type="text"
								value="<c:out value="${table.name}" />"
								class="form-control" name="name" >
						</fieldset>

						<fieldset class="form-group">
							<label>Customer Email</label> <input type="text"
								value="<c:out value="${table.email}" />"
								class="form-control" name="email" >
						</fieldset>
						<fieldset class="form-group">
							<label>Customer Address</label> <input type="text"
								value="<c:out value="${table.address}" />"
								class="form-control" name="address" >
						</fieldset>


						<button type="submit" class="btn btn-success">Save</button>
					</form>
				</c:forEach>
</body>
</html>