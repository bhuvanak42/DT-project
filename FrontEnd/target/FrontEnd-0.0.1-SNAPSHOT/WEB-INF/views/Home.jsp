<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- %@taglib uri="" %> -->    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping cart</title>
</head>
<body>
<h2 align="center">Shopping here</h2>

${message}
<br><br>
<a href="registerPage">New User?</a>&nbps;<tab>
<a href="loginPage">Already User?</a>
<a href="cartPage">My cart</a>

<hr color="blue">

<!-- we are adding 2 web pages into single page called single page application -->

<jsp:include page="Login.jsp"> </jsp:include>

<jsp:include page="Register.jsp"></jsp:include>

</body>
</html>