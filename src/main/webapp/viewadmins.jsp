<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Admins</title>
</head>
<body>
<%@page import="com.sulthan.bean.UserDaoad" %>
<%@page import="com.sulthan.bean.userad,java.util.*" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>Admins List</h1>  
  
<%  
List<userad> list=UserDaoad.getAllRecords();  
request.setAttribute("list",list);  
%>   

<a href="indexadmin.jsp"><input type="button" value="back" class="back"></a> 
  
<table border="1" width="70%" align="center" bgcolor="hotpink" >  
<tr><th>AId</th>
<th>AName</th>
<th>APassword</th><th>Edit</th><th>Delete</th></tr> 
<tr>
<c:forEach items="${list}" var="u">  
<tr>
<td>${u.getId()}</td>
<td>${u.getname()}</td>
<td>${u.getpassword()}</td>
<td><a href="editformad.jsp?id=${u.getId()}">Edit</a></td>  
<td><a href="deleteadmin.jsp?id=${u.getId()}">Delete</a></td>
</tr>  
</c:forEach>  
</tr>
</table>  
  

 
</body>
<style>
body {
    background-image: url("att4.jpg");
    background-repeat: no-repeat;
    background-size: cover;
}
h1 {
text-align:center;
}

.back {
margin-left:20px;
  width:5rem;
  height:2.5rem;
   
  
}
</style>
</html>