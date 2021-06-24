<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Edit Form</title>  
</head>
<style>
    
    .top{
        
        width: 90%;
        height: 15vh;
        background-color: chocolate;
        color: black;
        text-align: center;
        font-family: sans-serif;
        text-shadow:  5px 10px 30px rgba(0,0,0,0.7);
        padding-top: 3px;
        padding-bottom: 5px;
        margin-left: 5%;
    }

  
     .ohead
    {
        width: 80%;
        height: 70vh;
        border:none;
	    border-radius:5px;
	    box-shadow: 0 0px 10px 0 rgba(0,0,0,0.9);
        padding-left: 10px;
        padding-top: 20px;
        padding-bottom: 20px;
        margin-left: 10%;
        margin-top: 50px;
    }
    .add
    {
    float:left;
    width:40%;
    height:20vh;
    border-radius:5px;
	box-shadow: 0 0px 10px 0 rgba(0,0,0,0.9);
    margin-top: 50px;
    margin-left: 25%;
    background-color: chocolate;
   
    }
.txt
{
 	color: black;
    text-align: center;
    font-family: sans-serif;
    text-shadow:  5px 10px 30px rgba(0,0,0,0.7);
    padding-top:20px;
    padding-left:20px;
}
</style>
 

<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.jsp">Home</a></li>
         <li class="active"><a href="viewuser">View User</a></li>
        
         <li class="active"><a href="userform">Signup</a></li>
        
      
    </ul>
  </div>
</nav>
<div class="top"><h1><b>CAKEHOUSE</b></h1></div>  

<div class="ohead">

<a href="userform">
<div class="add">
<div class="txt">
<h1><b>Add User</b></h1>
</div>
</div>
</a>  
<a href="viewuser">
<div class="add">
<div class="txt">
<h1><b>View User</b></h1>
</div>
</div>
</a>  



</div>
</body>
</html>