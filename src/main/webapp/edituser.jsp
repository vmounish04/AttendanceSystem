<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editstu</title>
</head>
<body>

<%@page import="com.manju.bean.UserDao"%>  
<jsp:useBean id="u" class="com.manju.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=UserDao.update(u);
response.sendRedirect("viewusers.jsp");  
%>     
</body>
</html>