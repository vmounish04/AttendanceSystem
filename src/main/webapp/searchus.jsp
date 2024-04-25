<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.manju.bean.UserDao,com.manju.bean.User"%>  
  
<%  
String sfname=request.getParameter("sfname");  
User u=UserDao.getRecordByName(sfname);   
%>  
<h1>Search Form</h1>   
<form>
<table align="center" > 
<tr><td>Student Id:</td><td><%=u.getid()%></td></tr> 
<tr><td>Student Fname:</td><td><%= u.getsfname()%></td></tr> 
<tr><td>Student Lname:</td><td><%= u.getslname()%></td></tr>
<tr><td>Password:</td><td><%= u.getpwd()%></td></tr> 
<tr><td>Gender:</td><td><%= u.getgender()%></td>  
</tr>
<tr><td>Email:</td><td><%= u.getemail()%></td></tr> 
<tr><td>Date Of Birth:</td><td><%= u.getdob()%></td></tr>
<tr><td>Address:</td><td><%= u.getaddress()%>	
</td></tr>  
<tr><td><label>Branch:</label></td>
	<td>&nbsp;<%= u.getbranch()%></td>
	</tr>  
</table>  
</form> 
<br>
<a href="viewusers.jsp"><input type="button" value="back"></a>

<br><br>

<button onclick="display()">print</button>

  <script>
  function display(){
	  window.print();
	  
  }
  
  
  </script>
</body>
<style>
h1 {
text-align:center;
}
td {
background-color:yellow;
}
</style>
</html>