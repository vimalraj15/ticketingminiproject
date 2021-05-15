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
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
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
  background-color: #C34A2C;
}
.center {
  margin: auto;
  width: 60%;
  border: 1px;
  padding: 10px;
  color: blue;
  text-align :center;
  font-size: 150%;
}
</style>
<script>
function validateForm() 
{
  
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
</head>
<body>
<div class="center">
     ${message}
</div>

<form>        
  <button type ="submit" formaction="/" class="loginbtn"style ="float:right">log out</button>
</form>
<br>
<h3>Contact Form</h3>
<div class="container">
  <form name="myForm"  action="new-contact" onsubmit="return validateForm()">
    <label for="fname">Contact*</label>
    <input type="text" id="contact" name="contact" placeholder="contact.." required>

    <label for="lname">Company*</label>
    <input type="text" id="company" name="company" placeholder="company" required>
    
    <label for="lname">Mailid*</label>
    <input type="text" id="mailid" name="mailid" placeholder="your mailid">
    
    <label for="lname">Phone Number*</label>
    <input type="text" id="phoneno" name="phoneno" placeholder="phone no">
    
    <label for="lname">facebook</label>
    <input type="text" id="facebook" name="facebook" placeholder="facebook id">
     <label for="lname">Twitter</label>
    <input type="text" id="twitter" name="twitter" placeholder="twitter id">

    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>
