<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.rekha.bean.AttenDeo"%>  
<jsp:useBean id="u" class="com.rekha.bean.Atten"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
AttenDeo.delete(u);  
response.sendRedirect("viewatten.jsp");  
%>  

</body>
</html>