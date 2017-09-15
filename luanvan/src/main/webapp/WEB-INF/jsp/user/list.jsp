<%@page import="com.luanvan.model.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix ="spring" uri ="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<spring:url value="/user/add" var="addURL "/>
<a href="/luanvan/user/add"> Add user</a>
<%
	List<User> users = (List<User>)request.getAttribute("listUser");
	String sessionTest = (String)request.getAttribute("sessionTest");
%>
<h1> List User</h1>
<table border="1">
<thead>
	<tr>
		<th>Name <%= sessionTest %></th>
		<th>Lop</th>
		<th colspan="2">Action</th>
	</tr>
</thead>
	<tbody>
	<% for (User user : users) { %>
		<tr>
			<td> <%= user.getName() %> </td>
			<td> <%= user.getLop() %> </td>
			<td>
				<a href ="/luanvan/user/update/<%=user.getId()%>"> Update</a>
			</td>
			<td>
				<spring:url value="/user/delete/${user.id}" var="deleteURL"/>
				<a href ="${deleteURL }"> Delete</a>
		</tr>
	<% } %>
	</tbody>
</table>
</body>
</html>
