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
.centerr 
{
  font-size: 150%;
  text-align :center;
}

</style>
</head>
<body>
<div class="center">
     ${message}
</div>
<div class="centerr">
       <b>Contact Settings</b>
</div>
<form>        
  <button type ="submit" formaction="/" class="loginbtn"style ="float:right">log out</button>
</form>
<br>
<br>
<br>

<div class="container">
  
   <form action ="contact-setting">
<h4>To Add In Database</h4>
        Select New Fileds To Add<select name = "userchange" required>
            <option value = "" selected></option>
            <option value = "city">city</option>
            <option value = "gender">gender</option>
         </select>
    <input type="submit" value="Submit">
  </form>
</div>
<div class="container">
<h4>To Add  Data For New Fileds</h4>
        <form action ="contact-setting-db">
        Select The Option To Add <select name = "userchange" required>
        
            <option value = "" selected></option>
            <option value = "city">city</option>
            <option value = "gender">gender</option>
         </select>
         data * <input type = "text" name = "data" required>
      
         to contact *<input type = "text" name = "to" required>
       
         <input type ="submit" value ="add"/>
</form>
</div>
<div class="container">
<h4>To Remove the Contact</h4>
<form action ="contact-setting-delete">
        Enter contact * : <input type = "text" name = "contact" required>
        <input type ="submit" value ="delete"/>      
</form>    



</div>


</body>
</html>
