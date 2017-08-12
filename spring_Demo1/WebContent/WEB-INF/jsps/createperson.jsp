<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link href="${pageContext.request.contextPath}/static/css/main.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Create a person</title>
</head>
<body>

	<sf:form method="post"
		action="${pageContext.request.contextPath}/docreate" commandName="person">


		<table class="formtable">
			<tr>
				<td class="label">Name:</td>
				<td><sf:input class="control" path="name" name="name"
						type="text" /><br/><sf:errors path="name" cssClass="error"></sf:errors> <br /> 
			</tr>
			<tr>
				<td class="label">Email:</td>
				<td><sf:input class="control" path="email" name="email"
						type="text" /><br/><sf:errors path="email" cssClass="error"></sf:errors> <br /> 
			</tr>
			<tr>
				<td class="label">Salary:</td>
				<td><sf:input class="control" path="salary" name="salary"
						type="int" /><br/><sf:errors path="salary" cssClass="error"></sf:errors> <br /> 
			</tr>
			<tr>
				<td class="label">City:</td>
				<td><sf:input class="control" path="city" name="city"
						type="text" /><br/><sf:errors path="city" cssClass="error"></sf:errors> <br /> 
			</tr>
			<tr>
				<td class="label">Text:</td>
				<td><sf:textarea class="control" path="text" name="text"
						rows="10" cols="10"></sf:textarea><br/><sf:errors path="text" cssClass="error"></sf:errors> <br /> 
			</tr>
			<tr>
				<td class="label"></td>
				<td><input class="control" value="Create advert" type="submit"></td>
			</tr>
		</table>
		
	</sf:form>
</body>
</html>