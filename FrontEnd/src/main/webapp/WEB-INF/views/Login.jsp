<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
.jumbotron {
	background-color: #E7A1B0; /* Pink */
	color: #ffffff;
}
</style>
</head>

<body>
	<h3 align=center>This is login page</h3>
	<div class="jumbotron text-center">
		<form>
			<table>
				<tr>
					<td><b>Enter user name:</b></td>
					<td><input type=text name="userName"></td>
				</tr>

				<tr>
					<td><b>Enter password:</b></td>
					<td><input type=password name="password"></td>
				</tr>
			</table>
			<button type=button name="login">Login</button>
		</form>
	</div>
</body>
</html>