<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
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
  background-color: #6495ed;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
button {
  background-color:#6495ed ;
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




input[type=submit]:hover {
  background-color: #6495ed;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
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
</head>
<body>
<form>        
  <button type ="submit" formaction="/" class="loginbtn"style ="float:right">log out</button>
</form>

<div class="center">
     ${vimal}
      ${murali}
</div>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="container">
  <h5>Enter The TICKET To Show and Change Details</h5>

<form action ="/yf">
 

 Ticket : <input type = "text" name = "tickets" value= TIC>
         <br>
         <br>
<em>click to display</em><input type ="submit" value ="SHOW"/>
<br>
</form>
</div>

</body>
</html>
