<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Form</title>
</head>
<body>
<%@page import="com.manju.bean.UserDao,com.manju.bean.User"%>  
  
<%   
String id=request.getParameter("id");  
User u=UserDao.getRecordById(Integer.parseInt(id));  
%>  

<h1>Edit Form</h1>  
<a href="viewusers.jsp"><input type="button" value="back" class="back" ></a>
<form action="edituser.jsp" method="post"  >  
<input type="hidden" name="id" value="<%=u.getid() %>"/>  
<table >  
<tr><td>Student Fname:</td><td>  
<input type="text" name="sfname" value="<%= u.getsfname()%>"/></td></tr> 
<tr><td>Student Lname:</td><td>  
<input type="text" name="slname" value="<%= u.getslname()%>"/></td></tr>
<tr><td>Password:</td><td>  
<input type="text" name="pwd" value="<%= u.getpwd()%>"/></td></tr> 
<tr><td>Gender:</td>
<td><input type="radio" value="Male" name="gender" value="<%= u.getgender()%>"/>Male
<input type="radio" value="Female" name="gender" value="<%= u.getgender()%>"/>Female
</td>  
</tr>
<tr><td>Email:</td><td>  
<input type="text" name="email" value="<%= u.getemail()%>"/></td></tr> 
<tr><td>Contact:</td><td>  
<input type="text" name="ph" value="<%= u.getph()%>"/></td></tr> 
<tr><td>Date Of Birth:</td><td>  
<input type="date" name="dob" value="<%= u.getdob()%>"/></td></tr>
<tr><td>Address:</td><td>  
<textarea rows="5" cols="30"  name="address" value="<%= u.getaddress()%>"></textarea>		
</td></tr>  
<tr><td><label>Branch:</label></td>
	<td><select name="branch" value="<%= u.getbranch()%>" >
	<option>CSE</option>
	<option>ECE</option>
	<option>EEE</option>
	<option>AI&DS</option>
	<option>AI&ML</option>
	<option>CIVIL</option>
	<option>MECH</option></select></td>
	</tr>

<tr><td colspan="2"><input type="submit" value="Edit"  class="edit"></td></tr>  
</table> 
 
</form>  
<br>

</body>
<style>
td {
border:2px solid black;
background-color:bisque;
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

.back {
margin-left:20px;
  width:5rem;
  height:2.5rem;
   margin-bottom:20px;
  
}
.edit {
width:100%;
}

body 
{
background-color:lightblue;
}

</style>
</html>