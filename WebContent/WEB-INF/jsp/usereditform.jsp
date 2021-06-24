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

 .top1{
        margin-top: 5px;
        width: 90%;
        height: 10vh;
        background-color: chocolate;
        color: black;
        text-align: center;
        font-family: sans-serif;
        text-shadow:  5px 10px 30px rgba(0,0,0,0.7);
        padding-top: 1px;
        padding-bottom: 3px;
        margin-left: 5%;
    }
  
     .ohead
    {
        width: 50%;
        height: 146vh;
        border:none;
	   border-radius:5px;
	   box-shadow: 0 0px 10px 0 rgba(0,0,0,0.9);
        padding-left: 20px;
        padding-top: 20px;
        padding-bottom: 20px;
        margin-left: 25%;
         margin-top: 50px;
    }
    
    
     .title
{
    float: left;
	width:60%;
	height:auto;
	padding:10px;
	margin-left:15%;
	margin-top:4%;
	border:none;
	border-radius:5px;
	box-shadow: 0 0px 10px 0 rgba(0,0,0,0.2);
   

}
.smt
{
 	float: left;
	width:22%;
	height:5vh;
	background-color: green;
	padding:5px;
	margin-left:40%;
	margin-top:3%;
	border:none;
	border-radius:5px;
	box-shadow: 0 0px 10px 0 rgba(0,0,0,0.2);
   color:white;
}
</style>

    
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
<div class="top1"><h3><b>USER_EDIT_FORM</b></h3></div>
 
         <div class="ohead">
     
       <form:form method="POST" action="/SPRINGPROJECT/editsave">    
          
        <form:hidden  path="id" />
     
         <div class="title"><h3><b>FULLNAME</b></h3></div>   
          <form:input path="fullname" class="title" />  
         <div class="title"><h3><b>ADDRESS</b></h3></div>  
         <form:input path="address" class="title" />  
         <div class="title"><h3><b>PHONE_NUMBER</b></h3></div>    
          <form:input path="phone" class="title"/> 
         <div class="title"><h3><b>USERNAME</b></h3></div>    
          <form:input path="uname" class="title"/> 
            <div class="title"><h3><b>PASSWORD</b></h3></div>    
          <form:input  type="password" path="password" class="title"/> 
        <div class="container">
          <input type="submit" class="smt" value="Edit Save"  />  
          </div>
       </form:form>  
       </div>    
</body>
</html>  
            