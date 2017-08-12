<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="${pageContext.request.contextPath}/static/css/main.css"
	rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Search</title>
</head>
<body>
	<form method="get"
		action="${pageContext.request.contextPath}/dosearchbyid">

		<table class="formtable">
			<tr>
				<td class="label">by ID:</td>
				<td><input class="control" name="id" type="text" /><br />
			</tr>
			<tr>
				<td class="label"></td>
				<td><input class="control1" value="Search" type="submit"></td>
			</tr>
		</table>

	</form>
	<form method="get" action="${pageContext.request.contextPath}/dosearch">

		<table class="formtable">
			<tr>
				<td class="label">by Name:</td>
				<td><input class="control" name="name" type="text" /><br />
			</tr>
			<tr>
				<td class="label">by Email:</td>
				<td><input class="control" name="email" type="text" /><br />
			</tr>
			<tr>
				<td class="label">by City:</td>
				<td><input class="control" name="city" type="text" /><br />
			</tr>
			<tr>
				<td class="label">by Salary:</td>
				<td><input class="control2" name="salarymin" type="text" /> ~<input
					class="control2" name="salarymax" type="text" /></td>
			</tr>
			<tr>
				<td class="label"></td>
				<td><input class="control1" value="Search" type="submit"></td>
			</tr>
		</table>

	</form>
</body>
</html>