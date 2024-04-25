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
<jsp:useBean id="f" class="com.mounish.bean.Faculty"></jsp:useBean>  
<jsp:setProperty property="*" name="f"/>   
  
<%  
int i=FacultyDeo.save(f);  
if(i>0){  
response.sendRedirect("addfaculty-succuss.jsp");  
}else{  
response.sendRedirect("addfaculty-error.jsp");  
}  
%>  

</body>
</html>