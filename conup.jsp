<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
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
  background-color: #C34A2C;
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
</style>
<meta charset="ISO-8859-1">
<title>update</title>
</head>
<body>
   <form>        
  <button type ="submit" formaction="/" class="loginbtn"style ="float:right">log out</button>
</form>
 <br>  
<h5>ENTER THE NAME THAT YOU HAVE ASSIGNED</h5>
<br>
<form action ="/yd">
 

 CONTACT: <input type = "text" name = "contact" />
         <br>
         <br>
<em>click to display</em><input type ="submit" value ="SHOW"/>

<br>
</form>
</body>
</html>