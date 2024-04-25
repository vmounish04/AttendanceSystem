<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.manju.bean.UserDao"%>  
<jsp:useBean id="obj1" class="com.manju.bean.LoginBean"/>  
  
<jsp:setProperty property="*" name="obj1"/>  
  
<%  
boolean status = UserDao.validatestu(obj1);  
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
<jsp:include page="stuattenform.jsp"></jsp:include>

<% 
}  

else  
{  
 
%>
<script>
function Fail()
{
	alert("Sorry, email or password invalid");
	}
Fail();

</script>
<jsp:include page="stulogin.jsp"></jsp:include> 
<%  
}  
%>  

</body>
</html>