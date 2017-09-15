<%@page import="com.luanvan.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix ="spring" uri ="http://www.springframework.org/tags"%>
<%@ taglib prefix ="form" uri ="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User</title>
</head>
<body>
<%
	User user = (User)request.getAttribute("user");
%>
<form:form action = "/luanvan/user/save" modelAttribute="user" method="POST">
	<form:input type="hidden" name="id" path="id"/>
	<label> Name</label>
	<form:input type="text" name="name" SIZE=20 path="name" /><br/>
	<label>Lop</label>
	<form:input type="text" name="lop" SIZE=20 path="lop" /><br/>
	<button type="submit" > Save</button>
</form:form>
</body>
</html>