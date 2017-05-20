<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="MyPackage.MyClass"%>






<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>SYNAPSE</title>
</head>
<body>
  <h3> Meine WebApp-Startseite </h3>
  <p> <a href="/MyFirstProject/HelloServlet">/MeineWebAppRoot/HalloServlet</a> </p>
  <p> <a href="/MyFirstProject/HalloJSP.jsp">/MeineWebAppRoot/HalloJSP.jsp</a> </p>
  <p> <a href="/MyFirstProject/HalloJSPmitJavaBean.jsp">/MeineWebAppRoot/HalloJSPmitJavaBean.jsp</a> </p>

<%
out.println("hallo welt");
%>

<%
out.println(MyClass.myfirsttext());
%>



</body>
</html>
