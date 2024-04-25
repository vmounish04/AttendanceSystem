<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attendance List</title>
<style>
body {
 background-image: url("att2.jpg");
 
 background-repeat: no-repeat;
 background-size: cover ;
 
}
tr {
align:center;
}
th {
align:center;
}
</style>
</head>
<body>

<%@page import="com.rekha.bean.AttenDeo,com.rekha.bean.Atten,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>Attendance List</h1>  
<%  
List<Atten> list=AttenDeo.getAllRecords();  
request.setAttribute("list",list);  
%>  


<form action="searchatten.jsp" method="post" align="center">
<h1>Search here</h1>
<input type="text" name="stu_name" placeholder="Search Name">
<input type="submit" name="search" value="search">
<br><br>

</form>

<div class="float">
<button onclick="display()" class="print">print</button>
</div>


<a href="facultylogin.jsp"><input type="button" value="logout" class="logout"></a> 

<table border="1" width="100%" >   
<tr><th>Student Id</th>
<th>Student Name</th>
<th>Branch</th>
<th>OS</th>
<th>OS_tot</th>
<th>CO</th>
<th>CO_tot</th>
<th>ADS</th>
<th>ADS_tot</th>
<th>DBMS</th>
<th>DBMS_tot</th>
<th>Percentage</th>
<th>Post</th>



 </tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getStu_id()}</td>
<td>${u.getStu_name()}</td>
<td>${u.getBranch()}</td>
<td>${u.getSub1() }</td>
<td>${u.getSub1_tot()}</td>
<td>${u.getSub2()}</td>
<td>${u.getSub2_tot()}</td>
<td>${u.getSub3()}</td>
<td>${u.getSub3_tot()}</td>
<td>${u.getSub4()}</td>
<td>${u.getSub4_tot()}</td>
<td>${u.getPer()}</td>
<td><a href="postattenform.jsp?id=${u.getStu_id()}">Post</a></td>  
 

</tr>  
</c:forEach>  
</table>  
<br>
<a href="indexmain.html"><input type="button" value="back" class="back"></a>

<br/><a href="addstuatten.html" class="add">Add Student</a> 
<br>
<br>

  
<br><br>


  <script>
  function display(){
	  window.print();
	  
  }
  
  
  </script>
  
  <style>
  table {
  background-color:pink;
  }
  
  h1 {
  text-align:center;
  }
  .float {
  float:right;
  margin-bottom:20px;
 
  }
  .logout {
   margin-right:20px;
  width:5rem;
  height:2.5rem;
  
  }
    .print {
   margin-right:20px;
  width:5rem;
  height:2.5rem;
  
  }
 .back {
margin-left:20px;
  width:5rem;
  height:2.5rem;
   margin-bottom:20px;
  
}

.add 
{
text-decoration:none;
}

  </style>
  
</body>
</html>