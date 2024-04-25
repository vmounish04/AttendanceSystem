<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Records</title>
</head>
<body>
	<%@page
		import="com.manju.bean.UserDao,com.manju.bean.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<form action="searchus.jsp" align="center" >
<tr>
<td>

<h1>Search Here</h1></td>

<input type="text" name="sfname" placeholder="Search Here....." class="search">
<button type="submit" name="search" class="go">Go</button>

</tr>
</form>
	<h1>Students List</h1>

	<% 
	List<User> list = UserDao.getAllRecords();
	request.setAttribute("list", list);
	%>
	<div class="float">
	<button onclick="display()" class="back">print</button>
	</div>
	<a href="indexadmin.jsp"><input type="button" value="back" class="back"></a><br>





<table border="1" width="90%" bgcolor="cyan">  
<tr><th>Student Id</th><th>Student FName</th><th>Student LName</th>
<th>Password</th><th>Gender</th>
<th>Email</th><th>Contact</th>
<th>Date Of Birth</th><th>Address</th>
<th>Branch</th>
<th>Edit</th><th>Delete</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getid()}</td><td>${u.getsfname()}</td><td>${u.getslname()}</td> 
<td>${u.getpwd()}</td><td>${u.getgender()}</td>   
<td>${u.getemail()}</td><td>${u.getph()}</td>   
<td>${u.getdob()}</td><td>${u.getaddress()}</td>  
<td>${u.getbranch()}</td>
<td><a href="editusform.jsp?id=${u.getid()}">Edit</a></td>  
<td><a href="deleteuser.jsp?id=${u.getid()}">Delete</a></td>
</tr>  
</c:forEach>  
</table>
<br/>


  <script>
  function display(){
	  window.print();
	  
  }
  
  
  </script>

</body>  
<style>
body {
    background-image: url("att5.jpg");
    background-repeat: no-repeat;
    background-size: cover;
    font-size: 23px;
   
}
h1{
text-align:center;
}
table {
margin-left: auto;
margin-right: auto;
width: 100%
}
 .float {
  float:right;
  margin-bottom:20px;
 
  }
  .back {
   margin-right:20px;
  width:5rem;
  height:2.5rem;
   margin-bottom:20px;
  
  }
  .search {
height: 35px;
 width: 250px;
 font-size: 20px;
  }
 .go {
    
 width: 50px;
  height: 40px;
   margin-top:20px;
  }
</style>
</html>