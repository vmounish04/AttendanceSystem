<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.manju.bean.UserDao,com.rekha.bean.Atten"%>  
  
<%  
String name =request.getParameter("name");  // this parameter name is in stulogin.jsp ,the name of User Name input 

Atten  a = UserDao.getRecordByStuAtt(name);  // This method created in UserDao class which is in com.manju.bean.UserDao package 

%>   
<h1>Student Attendance Details</h1>  

<button type="submit" class="back print"><a href="stulogin.jsp" class="logout" >logout</a></button>

<div class="float">
<button onclick="display()" class="print">print</button>
</div>

<form>
  

<table>  
<tr>
<td>Student Id</td>
<td><%=a.getStu_id() %>
</td>
</tr>
 
<tr>
<td>Student Name</td>
<td>  
<%=a.getStu_name() %>
</td>
</tr>  
<tr>
<tr>
<td>Branch</td>
<td>  
<%=a.getBranch() %>
</td>
</tr>  
<tr>
<td>OS</td>
<td><%=a.getSub1() %>
</td>
</tr>
<tr>
<td>CO</td>
<td><%=a.getSub2() %></td>
</tr>  
<tr>
<tr>
<td>ADS</td>
<td><%=a.getSub3() %></td>
</tr>  
<tr>  

<tr>
<td>DBMS</td>
<td><%=a.getSub4() %></td>
</tr>  
<tr>
<tr>
<td>Percentage</td>
<td><%=a.getPer() %></td>
</tr>  
<tr>
	

	



  
</table>  

  <script>
  function display(){
	  window.print();
	  
  }
  
  </script>

<style>
body {
 background-image: url("att4.jpg");
 background-repeat: no-repeat;
 background-size: cover ;

 
}

td {
border:2px solid black;
background-color:yellow;
}
table {
margin-left:auto;
margin-right:auto;
width: 40%;
text-align: center;

}

h1 {
text-align:center;
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
 .logout{
 text-decoration:none;
 }
 


</style>

</form> 

</body>
</html>