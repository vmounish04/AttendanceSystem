<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Form</title>
</head>
<body>
<a href="viewusers.jsp">View All Students</a><br/>  
  
<h1>Add New Student</h1>  
<form action="adduser.jsp" method="post">  
<table border="1" bgcolor="plum" >  
<tr><td>Student Id:</td><td><input type="text" name="id"/></td></tr>
<tr><td>Student Fname:</td><td><input type="text" name="sfname"/></td></tr> 
<tr><td>Student Lname:</td><td><input type="text" name="slname"/></td></tr>
<tr><td>Password:</td><td><input type="password" name="pwd"/></td></tr>
<tr>
	<td>Gender:</td>
<td><input type="radio" value="Male" name="gender">Male
<input type="radio" value="Female" name="gender">Female
</td>
</tr>
<tr><td>Email:</td><td><input type="email" name="email"/></td></tr>
<tr><td>Contact:</td><td><input type="text" name="ph"/></td></tr>
<tr><td>Date Of Birth:</td><td><input type="date" name="dob"/></td></tr>
<tr><td>Address:</td><td><textarea name="address"></textarea>
</td></tr>
<tr><td><label>Branch:</label></td>
	<td><select name="branch">
	<option>CSE</option>
	<option>ECE</option>
	<option>EEE</option>
	<option>AI&DS</option>
	<option>AI&ML</option>
	<option>CIVIL</option>
	<option>MECH</option></select></td>
	</tr>
	<tr><td colspan="2"><input type="submit" value="Add Student"/></td></tr>  
</tr>  
</table>  
<br>
<a href="indexadmin.jsp"><input type="button" value="back"></a>
</form>  
</body>
</html>