<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>
				<form action="${pageContext.request.contextPath}/">
					<input class="control" value="Home" type="submit">
				</form>
			</td>
			<td>
				<form method="get"
					action="${pageContext.request.contextPath}/allpeople">
					<input class="control" value="show all data" type="submit">
				</form>
			</td>
		</tr>
	</table>
	<p>person updated!
</body>
</html>
