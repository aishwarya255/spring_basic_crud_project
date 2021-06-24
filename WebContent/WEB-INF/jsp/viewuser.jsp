<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>View Users</title>  
</head>  
<style>
    .sign
    {
        width: 80%;
        height: 10vh;
        background-color: chocolate;
        color: black;
        font-family: sans-serif;
        text-shadow:  5px 10px 30px rgba(0,0,0,0.7);
        text-align: center;
        padding-top: 5px;
        margin-left: 120px;
        
        
    }
   #customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    
   margin-left: 30px;
   margin-right: 30px;
   margin-top: 1vh;
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: chocolate;
  color: white;
} 
      a {
  text-decoration: none;
  display: inline-block;
  padding: 8px 16px;
}

a:hover {
  background-color: #ddd;
  color: black;
}

.previous {
  background-color: #f1f1f1;
  color: black;
}
   
    
    </style>
<body>
  <%@page import="pkg.cakedbc,pkg.user,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.jsp">Home</a></li>
         <li class="active"><a href="viewuser">View User</a></li>
         <li class="active"><a href="userform">Signup</a></li>
        
      
    </ul>
  </div>
</nav> 
 
<div class="sign"><h2><b>CUSTOMER_LIST</b></h2></div>
  
 <table id="customers">  

<tr><th>Id</th><th>Fullname</th><th>Address</th><th>Phone-no</th><th>Username</th><th>Password</th><th>Edit</th><th>Delete</th></tr>  
   <c:forEach var="user" items="${list}">   
   <tr>  
   <td>${user.id}</td>  
   <td>${user.fullname}</td>  
   <td>${user.address}</td> 
   <td>${user.phone}</td> 
   <td>${user.uname}</td>    
   <td>${user.password}</td>  
   <td><a href="edituser/${user.id}">Edit</a></td>  
   <td><a href="deleteuser/${user.id}">Delete</a></td>  
   </tr>  
   </c:forEach>  
   </table>  
   <br/>

<p><a href="index.jsp" class="w3-button w3-red">Add_coustomer</a></p>
    
</body>
</html>