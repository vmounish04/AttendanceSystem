<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADMIN PAGE</title>
</head>
<body>
<%@page import="com.sulthan.bean.UserDaoad"%>  
<jsp:useBean id="obj" class="com.sulthan.bean.LoginBean"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%   
boolean status = UserDaoad.validate(obj);  
if(status) 
{  
  
session.setAttribute("session","TRUE");  

%>
<script>
function Success()
{
	alert("Successfully Logined");
	}
Success();

</script>
<jsp:include page="indexadmin.jsp"></jsp:include>

<%
}  
else  
{  

%>  
<script>
function Fail()
{
	alert("Sorry, Invalid email (or) password !!!");
	}
Fail();
 
</script>
<jsp:include page="adminlogin.jsp"></jsp:include>  
<%  
}  
%>  

</body>
</html>