<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 30%;
  padding: 12px 20px;
  margin: 8px 0;

  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
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
<body>

<div class="center">
     ${message}
</div>
 <div class="imgcontainer">
    <img src="download1.jpg" alt="Avatar" class="avatar">
  </div>

</body>
</html>