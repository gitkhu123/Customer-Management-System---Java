<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
</head>
<body>

	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/customermanagement" user="root"
		password="root" />
	
	<sql:query dataSource="${db}" var="rs">  
     SELECT * from customer;  
     </sql:query>

	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome to Customer Management System</h1>
			</div>
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th scope="col">Customer Id</th>
						<th scope="col">Customer Name</th>
						<th scope="col">Customer Email</th>
						<th scope="col">Customer Address</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="table" items="${rs.rows}">
						<tr>
							<td><c:out value="${table.id}" /></td>
							<td><c:out value="${table.name}" /></td>
							<td><c:out value="${table.email}" /></td>
							<td><c:out value="${table.address}" /></td>

							<td><a
								href="CustomerUpdate.jsp?id=<c:out value='${table.id}' />"
								style="background-color: green; width: 67px;"
								class="btn btn-primary">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete-customer?id=<c:out value='${table.id}' />"
								style="background-color: red;" class="btn btn-primary">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<div class="container text-center">
				<a href="add-customer" class="btn btn-outline-success">Add
					Customer</a>
			</div>

		</div>

	</div>
</body>
</html>