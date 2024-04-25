<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Validate</title>
</head>
<body>
<%@page import="com.mounish.bean.FacultyDeo"%>  
<jsp:useBean id="obj" class="com.mounish.bean.LoginBean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
boolean status = FacultyDeo.validate(obj);  
if(status)
{  
  
session.setAttribute("session","TRUE"); 
%>

<script>
function Success()
{
	alert("You are successfully logged in");
	}
	
Success();


</script>

<jsp:include page="viewatten.jsp"></jsp:include>
<%
}  
else  
{ 
%>
<script>
function Invalid()
{
	alert("Sorry, Invalid email (or) password !!!");
	}
	
Invalid();

</script>
 

<jsp:include page="facultylogin.jsp"></jsp:include> 

<% 

}  
%>  
</body>
</html>