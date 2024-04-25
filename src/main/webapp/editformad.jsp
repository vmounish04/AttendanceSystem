<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.sulthan.bean.UserDaoad,com.sulthan.bean.userad"%>  
  
<%  
String id=request.getParameter("id");  
userad u=UserDaoad.getRecordById(Integer.parseInt(id));  
%>  
<h1>Edit Form</h1>  
<a href="viewadmins.jsp"><input type="button" value="back" class="back"></a> 

<form action="edituserad.jsp" method="post"  >  
<input type="hidden" name="id" value="<%=u.getId() %>"/>  
<table bgcolor="hotpink">  
<tr><td>Admin Name:</td><td>  
<input type="text" name="name" value="<%= u.getname()%>"/></td></tr> 
<tr><td>Password:</td><td>  
<input type="password" name="password" value="<%= u.getpassword()%>"/></td></tr>
 
<tr><td colspan="2"><input type="submit" value="Edit" class="edit"></td></tr> 

  
<style>
td {
border:2px solid black;
background-color:lightgreen;
}
table {
margin-left:auto;
margin-right:auto;

}

h1 {
text-align:center;
}
input {
width:6rem;
}
.edit {
width:100%;
}

.back {
margin-left:20px;
  width:5rem;
  height:2.5rem;
   margin-bottom:20px;
  
}
.print {
float:right;
 margin-right:20px;
  width:5rem;
  height:2.5rem;
   margin-bottom:20px;
  
}

</style>
</body>
</html> 