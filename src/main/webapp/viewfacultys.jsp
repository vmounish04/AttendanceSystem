<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Faculty</title>
</head>
<body>
<%@page import="com.mounish.bean.FacultyDeo,com.mounish.bean.Faculty,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>Faculty List</h1>  
<%  
List<Faculty> list=FacultyDeo.getAllRecords();  
request.setAttribute("list",list);  
%>  
<form action="searchfac.jsp" align="center" >
<h1>Search here</h1>
<input type="text" name="fac_name" placeholder="Search Name">
<input type="submit" name="search">
</form> 
<br><br>
<div class="float">
<button onclick="display()" class="print">print</button>
</div>

<a href="indexadmin.jsp"><input type="button" value="back" class="print"></a> 

  
<table border="1" width="90%">  
<tr><th>Id</th>
<th>Name</th>
<th>Password</th>
<th>Gender</th>
<th>DOB</th>
<th>Department</th>
<th>Contact</th>
<th>Gmail</th>
<th>Edit</th>
<th>Delete</th>
 </tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getId()}</td>
<td>${u.getName()}</td>
<td>${u.getPassword() }</td>
<td>${u.getGender()}</td>
<td>${u.getDob()}</td>
<td>${u.getDepart()}</td>
<td>${u.getContact()}</td>
<td>${u.getGmail()}</td>
<td><a href="editfacform.jsp?id=${u.getId()}">Edit</a></td>  
<td><a href="deletefaculty.jsp?id=${u.getId()}">Delete</a></td>
</tr>  
</c:forEach>  
</table>  
<br>
 
 
 

  <script>
  function display(){
	  window.print();
	  
  }
  
  </script>
  
  <br>
  

</body>
<style>
body {
    background-size: cover;
    background-image: url("att2.jpg");
    background-repeat: no-repeat;
    
}
td {
border:2px solid black;
background-color:yellow;
}
h1{
text-align:center;
}
table {
margin-left:auto;
margin-right:auto;
}
 .float {
  float:right;
  margin-bottom:20px;
 
  }
  .print {
   margin-right:20px;
  width:5rem;
  height:2.5rem;
   margin-bottom:20px;
  
  }
</style>
</html>