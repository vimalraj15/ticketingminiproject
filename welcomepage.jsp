
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
font-family: Arial, Helvetica, sans-serif;


	background:  url(vimal11.jpg);
	height: 100%;
   margin: 0;

  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
	

}



}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
  
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
button {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 50%;
}
.loginbtn {
  width: auto;
  text-align: center;
  padding: 10px 18px;
  background-color: #f44336;
}
input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  margin-left: +100px;
  margin-right: +100px;
  padding: 20px;
}
table,th,td{
  border : 1px solid black;
  border-collapse :collapse;
}
th,td
{
    padding :5px;
}
th
{ 
text-align: left;
}
.center {
  margin: auto;
  width: 60%;
  border: 1px;
  padding: 10px;
  color: black;
  text-align :center;
  font-size: 150%;
   
}
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 10%;
  text-align: center;
  border-radius: 20%;
}
.centerr {

  font-size: 150%;
  text-align :center;
}
.centerrr {
  font-size: 150%;
}
</style>
<script>
function validateForm() {
  
  var y=document.forms["myForm"]["mailid"].value;
  var mm=document.forms["myForm"]["phoneno"].value;
  
  var atposition=y.indexOf("@");  
  var dotposition=y.lastIndexOf(".");  
    
  if (atposition<1 || dotposition<atposition+3 || dotposition+3>=y.length)
  {  
    alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
    return false;  
  }
 
  if((mm.length >  10) || mm == "")
  {
  alert(" Your Mobile Number must be 1 to 10 Integers");
  
  return false;
  }
  
  
}
</script>
<title>register</title>
</head>
<body >

<div class="center">
  ${muralimano}
</div>
<h1>Hi!! Welcome</h1>



<div class="container">
  <form name="myForm" action="/save-user" onsubmit="return validateForm()">
    <div class="centerr">
       Creating New Account
       </div>
<div class="imgcontainer">
     <img src="login4.png" alt="Avatar" class="avatar">
     </div>
      
   <div class="centerrr">
       Register!!
     </div>
   <br>
   <label for="uname"><em>*Fill Mandatory Fields</em></label>
   <br>
   <br>
    <label for="fname">First Name*</label>
    <input type="text" id="firstname" name="firstname" placeholder="Your name.." required>

    <label for="lname">Last Name*</label>
    <input type="text" id="lastname" name="lastname" placeholder="Your last name.." required>
     <label for="mailid">Mailid*</label>
    <input type="text" id="mailid" name="mailid" value = "${murali}" readonly required>
     <label for="company">Company*</label>
    <input type="text" id="company" name="company" placeholder="company" required>
    
    <label for="phoneno">phoneno*</label>
    <input type="text" id="phoneno" name="phoneno" placeholder="Your phone no">
    
    <label for="verification code">Verfication Code*</label>
   
    <input type="text" id="code" name="code" placeholder="code" required>
    <em>Enter the code send in mail</em>
    <br>
    <em>${muralimano}</em>
    <br>
    <br>
    <br>
    <input type="submit" value="Create">
    
  </form>
</div>
</body>
</html>