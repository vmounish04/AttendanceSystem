<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editadmin</title>
</head>
<body>
<%@page import="com.sulthan.bean.UserDaoad"%>  
<jsp:useBean id="u" class="com.sulthan.bean.userad"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=UserDaoad.update(u);  
response.sendRedirect("viewadmins.jsp");  
%> 
</body>
</html> 