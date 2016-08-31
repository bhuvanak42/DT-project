<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
</head>
<body>

	<%@include file="/WEB-INF/views/Header.jsp"%>

	<div class="span9 margin-top">
		<div class="span9 center margin-bottom">
			<h3>Enter Your Login Credentials Here</h3>
		</div>

		<form name="loginForm" action="<c:url value='/j_spring_security_check' />" method="post">
			<c:if test="${not empty error}">
				<div class="error" style="color: #ff0000;">${error}</div>
			</c:if>
			<div class="span9 center">
				<c:if test="${not empty msg}">
					<div class="msg">${msg}
						<br>
						<br>
					</div>
				</c:if>
				<div class="control-group">
					<label class="control-label">User ID</label>
					<div class="controls docs-input-sizes">
						<input type="text" id="username" name="username"
							class="form-control" placeholder="Enter Your User ID" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">Password</label>
					<div class="controls docs-input-sizes">
						<input type="password" id="password" name="password"
							class="form-control" placeholder="Enter Your Password" />
					</div>
				</div>
				<div class="span8 center">
					<input type="submit" value="Submit" class="btn btn-primary">

					<a href="<spring:url value="/" />"
						class="btn btn-danger margin-left25">Cancel</a>
				</div>
			</div>
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
	</div>
	<%@include file="/WEB-INF/views/Footer.jsp"%>
</body>
</html>