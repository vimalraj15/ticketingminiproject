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
<script src="https://cdn.tiny.cloud/1/u7fw5mj8i3xj4knum3d8ieh134vm54q8uphgxrpd9t0v310x/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
<script>
tinymce.init({
    selector: '#description'
  });

</scripT>


<body>
<div class="center">
     ${message}
</div>
<div class="centerr">
       <b>Ticket Settings</b>
</div>   

<form>        
  <button type ="submit" formaction="/" class="loginbtn"style ="float:right">log out</button>
</form>
<br>
<br>
<br>
<div class="container">
  
   <form action ="ticket-setting">
<h4>To Add In Database</h4>
        Select  New Fileds To Add In Database * <select name = "userchange" required>
            <option value = "" selected></option>
            <option value = "duedate">duedate</option>
            <option value = "type">type</option>
         </select>

    <input type="submit" value="Submit">
  
  </form>
</div>
<div class="container">
<h4>To Add Data For New Fileds</h4>
        <form action ="ticket-setting-db">
        Select Option <select name = "userchange" required>
        
            <option value = "" selected></option>
            <option value = "duedate">duedate</option>
            <option value = "type">type</option>
         </select>
         <br>
         data *<input type = "text" name = "data" required>
         to contact* <input type = "text" name = "to" required>
         <input type ="submit" value ="add"/>

</form>
</div>

<div class="container">
<h4>TO CHANGE ALL VALUES</h4>
<form action ="/change">
    Enter the contact * <input type = "text" name = "contact" required>
    <em>fill all the details below</em>         
         Subject * <input type = "text" name = "subject" required>
         <br>
         <br>
         Status *<select name = "status" required>
            <option value = "" selected></option>    
            <option value = "open">open</option>    
            <option value = "closed">closed</option>
            <option value = "rejected">rejected</option>
            <option value = "assigned">assigned</option>
         </select>
         
         Priority*<select name = "priority" required>
            <option value = ""></option>
            <option value = "high">high</option>
            <option value = "low">low</option>
            <option value = "medium">medium</option>
         </select>
         GroupName*<input type = "text" name = "groupname" required >
         <br>  
         <br>
         Description*<br/>
         <textarea  id="description" rows = "5" cols = "50" name = "description" required>
         </textarea>
                  
updateall :<input type ="submit" value ="update"/>      
     
</form>
</div>
</body>
</html>
