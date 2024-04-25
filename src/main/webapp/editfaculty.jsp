<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.mounish.bean.FacultyDeo"%>  
<jsp:useBean id="u" class="com.mounish.bean.Faculty"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=FacultyDeo.update(u);  
response.sendRedirect("viewfacultys.jsp");  
%>  
</body> 
</html>