<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 30%;
  padding: 12px 20px;
  margin: 8px 0;
  border-radius: 4px;
  box-sizing: border-box;
  display: inline-block;
  border: 1px solid #ccc;
  
  box-sizing: border-box;
   resize: vertical;
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

button:hover {
text-align: center;
  opacity: 0.8;
}
.loginbtn {
  width: auto;
  text-align: center;
  padding: 10px 18px;
  background-color: #C34A2C;
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

.container {
text-align: center;
  padding: 16px;
}
.center {
  margin: auto;
  width: 60%;
  border: 1px;
  padding: 10px;
  color: blue;
  font-size: 150%;
  text-align :center;
}

.centerr {

  font-size: 150%;
  text-align :center;
}
/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 00px) {
  span.psw {
     display: block;
     float: none;
  }
  .loginbtn {
     width: 100%;
  }
  .cancelbtn {
     width: 100%;
  }

}
</style>
<script>
function validateForm() {
  var x = document.forms["myForm"]["mailid"].value;
  if (x == "") 
  {
    alert("mailid must be filled out");
    return false;
  }
  var y=document.forms["myForm"]["mailid"].value;

  var atposition=y.indexOf("@");  
  var dotposition=y.lastIndexOf(".");  
  
    
  if (atposition<1 || dotposition<atposition+3 || dotposition+3>=y.length)
  {  
    alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
    return false;  
  }
  

}
</script>
<title>Welcome</title>
</head>
<body >

<div class="center">
     ${vimal}
</div>

<h2>Welcome!!</h2>


<form name="myForm" action="login-user"  onsubmit="return validateForm()">
  <div class="imgcontainer">
    <img src="login3.png" alt="Avatar" class="avatar">
      </div>
       <div class="centerr">
       <b>Login </b>
       </div>
  <div class="container">
    <label for="uname"><b>Enter mailid</b></label>
    <input type="text"  id="mailid"  placeholder="Mailid" name="mailid" >
    <button type="submit" class="loginbtn">Login</button>
 
  </div>

</form>
<form action="/c">
   <div class="container">
 <label for="uname"><b>New User? Signup</b></label>
 <button type="submit"class="loginbtn">signup</button>
</div>
</form>
</body>
</html>