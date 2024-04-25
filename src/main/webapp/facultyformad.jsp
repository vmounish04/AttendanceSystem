<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="viewfacultys.jsp">View All Records</a><br/>  
  
<h1>Faculty Form</h1> 
<form action="addfaculty.jsp" method="post">  
	
<table border="1">  
<tr>
	<td>Id </td>
	<td><input type="text" name="id"/>
	</td>
	</tr>
	<tr>
	<td>Name </td>
	<td><input type="text" name="name"/>
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
		<td><input type="date" name="dob"></td>
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
		<td><input type="text" name="contact"></td> <!-- name is key  name should be same as in java variables -->
	</tr>
	
	<tr>
		<td>Email</td>
		<td><input type="email" name="gmail"></td>
	</tr>
	<tr>
		<td>Password </td>
		<td><input type="password" name="password"></td>
	</tr>
 
<tr>
	<td colspan="2"><input type="submit" value="Add Faculty" />
	</td>
	</tr>  
</table>  

</form>  
<br>

<a href="indexadmin.jsp"><input type="button" value="back"></a>


</body>

<style>
 table {
	 background-color: pink;
	 
 }
 
 td {
	 padding:1rem;
 }
</style>
</html>