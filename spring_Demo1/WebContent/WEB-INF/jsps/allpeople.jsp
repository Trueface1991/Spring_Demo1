<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="${pageContext.request.contextPath}/static/css/main.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>All people</title>
</head>
<body>
	
	<form method="get" action="${pageContext.request.contextPath}/">
		<input class="control" value="Home" type="submit">
		</form>
	<p>
	<table class="table">

		<tr>
			<td>Name</td>
			<td>Email</td>
			<td>Salary</td>
			<td>City</td>
			<td>Text</td>
		</tr>

		<c:forEach var="person" items="${people}">
			<tr>
				<td><c:out value="${person.name}"></c:out></td>
				<td><c:out value="${person.email}"></c:out></td>
				<td><c:out value="${person.salary}"></c:out></td>
				<td><c:out value="${person.city}"></c:out></td>
				<td><c:out value="${person.text}"></c:out></td>

			</tr>

		</c:forEach>


	</table>
</body>
</html>