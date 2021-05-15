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
.centerr {

  font-size: 150%;
  text-align :center;
}

</style>
</head>
<body>
<div class="center">
     ${message}
</div>
<form>
<div class="centerr">
       <b>User Settings "${mails}"</b>
</div>        
  <button type ="submit" formaction="/" class="loginbtn"style ="float:right">log out</button>
</form>
<br>
<br>
<br>
<div class="container">

<form action ="user-setting">
 Select Option To Change * <select name = "userchange" required>
            <option value = "" selected></option>
            <option value = "firstname">firstname</option>
            <option value = "lastname">lastname</option>
            <option value = "company">company</option>
            <option value = "phoneno">phone no</option>
         </select>
         value : <input type = "text" name = "oldone" required>
        
          to (mailid) *: <input type = "text" name = "newone" value ="${mails}" readonly  required>
  <input type ="submit" value ="change"/> 
  </form>
</div>
<div class="container">
<h4>To Remove The Account</h4>
<form action ="user-setting-delete">

        
        Enter mailid :* <input type = "text" name = "mailid" value ="${mails}" readonly required>
        
        <input type ="submit" value ="delete"/>      
        </form>

</div>
</body>
</html>
