<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post Attendance</title>
</head>
<body>

<%@page import="com.rekha.bean.AttenDeo,com.rekha.bean.Atten"%>  
  
<%  
String id=request.getParameter("id");  
Atten a=AttenDeo.getRecordById(Integer.parseInt(id));  
%>  
 
 

<h1>Post Attendance</h1> 

<a href="viewatten.jsp"><input type="button" value="back" class="back"></a>


<button onclick="display()" class="print">print</button>
<form action="editatten.jsp" method="post">
  
<input type="hidden" name="stu_id" value="<%=a.getStu_id() %>" >

<table>  
 
<tr>
<td>Student Name</td><td>  
<input type="text" name="stu_name" value="<%=a.getStu_name() %>" >
</td>
</tr>  

<tr>
<td>Branch</td><td>  
<select name="branch" value="<%=a.getBranch() %>" >
	<option>CSE</option>
	<option>ECE</option>
	<option>EEE</option>
	<option>AIDS</option>
	<option>CIVIL</ovaluption>
	<option>METCH</option>
</select>
</td>
</tr> 
<tr>
<tr>
<td>OS</td>
<td><input type="number" name="sub1" min="0" max="50" step="1" value="<%=a.getSub1() %>" ></td>
</tr>
<tr>
<td>CO</td>
<td><input type="number" name="sub2" min="0" max="50" step="1" value="<%=a.getSub2() %>"></td></tr>  
<tr>
<tr>
<td>ADS</td>
<td><input type="number" name="sub3" min="0" max="50" step="1" value="<%=a.getSub3() %>"></td></tr>  
<tr>  

<tr>
<td>DBMS</td>
<td><input type="number" name="sub4" min="0" max="50" step="1" value="<%=a.getSub4() %>"></td></tr>  
<tr>
	
<tr>
	<td colspan="2">
	<input type="submit" value="Post" class="post">
	</td>
</tr>
  
</table>  
</form> 

<br>




  <script>
  function display(){
	  window.print();
	  
  }
  
  
  </script>
  
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
.post {
width:12.6rem;
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
body 
{
background-color:pink;
}

</style>


</body>
</html>