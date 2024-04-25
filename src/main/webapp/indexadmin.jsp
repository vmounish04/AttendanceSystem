<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <!-- Bootstrap Icons CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.19.0/font/bootstrap-icons.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
<h1>ADMIN</h1>  


<a href="indexmain.html"><input type="button" value="back" class="back"></a>

<div class="container">
 <div class="contain_front">
  <div class="contain_back">
    <h5 class="card-title">ADD ADMIN</h5>
    <p class="card-text">Add admin.</p>
    <a href="addadminform.jsp" class="btn btn-primary" style="background-color:blue;">ADD</a>
  </div>
 </div>

      <div class="contain_front">
        <div class="contain_back" >
          <h5 class="card-title">VIEW ADMIN</h5>
          <p class="card-text">View admins records.</p>
          <a href="viewadmins.jsp" class="btn btn-success" style="background-color:blue;">VIEW</a>
        </div>
      </div>
          <div class="contain_front">
            <div class="contain_back">
              <h5 class="card-title">STUDENT INFO</h5>
          <p class="card-text">View student info.</p>
          <a href="viewusers.jsp" class="btn btn-info" style="background-color:blue;">GET INFO</a>
            </div>
          </div>
          
           <div class="contain_front">
        <div class="contain_back" >
          <h5 class="card-title">FACULTY INFO</h5>
          <p class="card-text">View faculty info.</p>
          <a href="viewfacultys.jsp" class="btn btn-success" style="background-color:blue;">GET INFO</a>
        </div>
      </div>
          <div class="contain_front">
            <div class="contain_back">
              <h5 class="card-title">ATTENDANCE RECORDS</h5>
          <p class="card-text">View student attendance records.</p>
          <a href="viewatten.jsp" class="btn btn-info" style="background-color:blue;">GET RECORDS</a>
            </div>
          </div>
          
          </div>


<br>

</body>
<style>
*{
   color: rgb(98, 138, 220);
    padding: 0;
    margin: 0;
  }
  body {
    background-size: cover;
    background-position: center;
    height: 100vh;
    box-sizing: border-box;
    font-family: cooper ;
   /*  color: orange; */
    background-color: #f8f9fa;
    background-image: url("att4.jpg");
    background-repeat: no-repeat;
    background-size: cover;
  }


/* login dropdown  */
  .container {
    margin-top: 20px;
    margin-bottom:100px;
    
    margin-left:200px;
    display: grid;
    grid-template-columns: 1FR 1FR 1FR;
  }
  .contain_back{
    background-color:white ;
    filter:opacity(0.9);
    padding: 20px 10px;
  }
  .contain_front{
    padding: 20px 10px;
    
  }
  h1 {
  text-align:center;
  color:violet;
  font-size:4.5rem;
  }
  h5 {
  color:gold;
  }
    .back {
   margin-right:20px;
  width:5rem;
  height:2.5rem;
   margin-left:20px;
  
  }

  
  

  
</style>
</html>