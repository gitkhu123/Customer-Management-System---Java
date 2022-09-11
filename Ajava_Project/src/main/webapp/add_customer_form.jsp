<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
<style type="text/css">
	.container{
		display: flex;
		justify-content: center;
		border: 2px solid black;
		width:25%;

	}
</style>
</head>
<body>

<div>
<h1 style="text-align: center;">Fill the Customer Detail</h1>
<br><br>
<div class="container">
<form action="handle-customer">
<div>
<label style="padding-top: 10px;">Customer Name:</label><input type="text" id="name" name="name">
</div>
<br>
<div>
<label>Customer Email:</label><input type="text" id="email" name="email">
</div>
<br>
<div>
<label>Customer Address:</label><input type="text" id="address" name="address">
</div>
<br>
<div>
<a href="${pageContext.request.contextPath}" class="btn" style="margin-left: 100px;">Back</a>
<button type="submit">Add</button>
</div>

</form>
<div>

</div>
</div>
</div>

</body>
</html>