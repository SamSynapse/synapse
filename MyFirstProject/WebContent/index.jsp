<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="MyPackage.MyClass"%>
<%@ page import="database.mysql"%>






<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>SYNAPSE</title>
</head>

<body>
	<h3>Meine WebApp-Startseite</h3>

	<% out.println("hallo welt !!!!°°°"); %>

	<% out.println(MyClass.myfirsttext()); %>
	<% out.println(mysql.main()); %>
	
</body>

</html>
