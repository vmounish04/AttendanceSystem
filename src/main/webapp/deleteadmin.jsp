<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.sulthan.bean.UserDaoad"%>  
<jsp:useBean id="u" class="com.sulthan.bean.userad"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%
UserDaoad.delete(u);  
response.sendRedirect("viewadmins.jsp");  
%>   

</body>
</html>