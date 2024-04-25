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
String name =request.getParameter("fac_name");  
Faculty  f =FacultyDeo.getRecordByName(name);  
%>  
<h1>Faculty Details</h1>

<a href="viewfacultys.jsp"><input type="button" value="back" class="back"></a>

<button onclick="display()" class="print" >print</button>
 
<from> 
<table>
<tr>
<th>Id</th>
<td><%=f.getId()%></td>
</tr>
<tr>
 <th>Name</th>
<td>  
<%=f.getName()%>
</td>
</tr>  
<tr>
<th>Password</th>
<td>  
<%=f.getPassword()%>
</td>
</tr> 
<tr>
	<th>Gender </th>
	<td ><%=f.getGender() %>
	</td>
	
	</tr>
	<tr>
		<th>Date Of Birth</th>
		<td><%=f.getDob() %></td>
	</tr>
	<tr>
		<th><label>Department</label></th>
		<td><%=f.getDepart() %></td>
		
	</tr>
	
	<tr>
		<th>Mobile Number</th>
		<td><%=f.getContact()%></td> 
	</tr>
	
	<tr>
		<th>Email</th>
		<td><%=f.getGmail()%></td>
	</tr>
 
<tr>
</table>
</from>
<script>
function display()
{
	window.print();
	}

</script>
<style>

td,th{
border: 2px solid black;
padding:0.6rem;
background-color:pink;
}

h1 {
text-align:center;
color:orange;
}

table {
margin-left:auto;
margin-right:auto;
}
th {
color:blue;
}
body {
background-color:black;
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