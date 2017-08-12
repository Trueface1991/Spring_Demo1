<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="${pageContext.request.contextPath}/static/css/main.css"
	rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Demo1</title>
</head>
<body>
	<a>DEMO1</a>
	<p>
	<form method="get"
		action="${pageContext.request.contextPath}/allpeople">
		<input class="control1" value="show all data" type="submit">
	</form>
	<p>
	<form action="${pageContext.request.contextPath}/search">
		<input class="control1" value="search" type="submit">
	</form>
	<p>
	<form action="${pageContext.request.contextPath}/createperson">
		<input class="control1" value="add" type="submit">
	</form>
	<p>
	<form method="get"
		action="${pageContext.request.contextPath}/dosearchfordeletion">
		<input class="control1" value="delete" type="submit">
	</form>
	<p>
	<form method="get"
		action="${pageContext.request.contextPath}/updateperson">
		<input class="control1" value="update" type="submit">
	</form>


</body>
</html>