<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Fruit Store</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" href="/css/index.css"/>
	</head>
	<body>
		<div class="container">
			<div class= "col-5">
				<h2>Fruit Store</h2>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Name</th>
							<th scope="col">Price</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="oneFruit" items="${fruitsFromMyController }">
					 	<tr>
					 		<td>
					 			<c:out value="${oneFruit.name}"></c:out>
					 		</td>
					 		<td>
					 			<c:out value="${oneFruit.price}"></c:out>
					 		</td>
					 	</tr>
					 	</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</body>
</html>