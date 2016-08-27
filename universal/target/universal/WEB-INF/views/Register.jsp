<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register page</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body >
	<h3 align=center>This is register page</h3>
	
	<form>
	<table>
		<tr>
			<td><b>Enter user name:</b></td>
			<td><input type=text name="userName"></td>
		</tr>
		<tr>
			<td><b>Enter user phone:</b></td>
			<td><input type=text name="phone"></td>
		</tr>
		<tr>
			<td><b>Enter user address:</b></td>
			<td><textarea rows="3" cols="50" name="address"></textarea></td>
		</tr>
		<tr>
			<td><b>Enter user e-mail:</b></td>
			<td><input type=text name="email"></td>
		</tr>
		<tr>
			<td><b>Enter password:</b></td>
			<td><input type=password name="password"></td>
		</tr>

	</table>
	<br>
	<br>
	<button type=button name="register">Register</button>
	<button type=reset name="clear" >Clear</button>
	</form>
</body>
</html>