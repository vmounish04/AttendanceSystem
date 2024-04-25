<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.mounish.bean.FacultyDeo,com.mounish.bean.Faculty"%>  
  
<%  
String id=request.getParameter("id");  
Faculty u=FacultyDeo.getRecordById(Integer.parseInt(id));  
%>  
 
<h1>Edit Form</h1>

<form action="editfaculty.jsp" method="post">  
<input type="hidden" name="id" value="<%=u.getId() %>"/>  
<table>  
<tr>
<td>Name:</td>
<td>  
<input type="text" name="name" value="<%=u.getName()%>"/>
</td>
</tr>  
<tr>
<td>Password:</td>
<td>  
<input type="password" name="password" value="<%=u.getPassword()%>"/>
</td>
</tr> 
<tr>
	<td>Gender </td>
	<td ><input type="radio" name="gender" value="Male"/>
	Male       &nbsp;
	
	<input type="radio" name="gender" value="Female"/>
	Female
	</td>
	
	</tr>
	<tr>
		<td>Date Of Birth</td>
		<td><input type="date" name="dob" value="<%=u.getDob()%>"></td>
	</tr>
	<tr>
		<td><label>Department</label></td>
		<td><select name="depart">
			<option>CSE</option>
			<option>AIDS</option>
			<option>ECE</option>
			<option>EEE</option>
			<option>CIVIL</option>
			<option>MECH</option>
			
		</select></td>
		
	</tr>
	
	<tr>
		<td>Mobile Number</td>
		<td><input type="text" name="contact" value="<%=u.getContact() %>"></td> 
	</tr>
	
	<tr>
		<td>Email</td>
		<td><input type="email" name="gmail" value="<%=u.getGmail()%>"></td>
	</tr>
 
<tr>
<tr><td colspan="2"><input type="submit" value="Edit"/></td></tr>  
</table>  
</form>
</body>
<style>
table {
background-color :skyblue;
margin-left:auto;
margin-right:auto;
padding:0.6rem;
}
td {
border : 2px solid black;
}
h1 {
text-align:center;
}
td {
padding:0.5rem;
}






</style>
</html>