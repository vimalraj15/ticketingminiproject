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
  text-align :center;
  font-size: 150%;
}
</style>
  <script src="https://cdn.tiny.cloud/1/8wlxoyga1ptj5mqwqw9l5hfd5d7id1fzvmisinno8w5qbix4/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
<script>
function validateForm() {
  var a = document.forms["myForm"]["contact"].value;
  var b = document.forms["myForm"]["subject"].value;
  var c = document.forms["myForm"]["status"].value;
  var d = document.forms["myForm"]["priority"].value;
 var e = document.forms["myForm"]["groupname"].value; 
  var f = document.forms["myForm"]["assignedto"].value;
  if (a == "" || b== "" || c == "" || d== ""|| e == "" || f=="")
  {
    alert("Fill The Priority Fields");
    return false;
  }
}
tinymce.init({
    selector: '#description'
  });
</script>

</head>
<body>
<form>        
  <button type ="submit" formaction="/" class="loginbtn"style ="float:right">log out</button>
</form>
 <div class="center">
  ${message} 
 </div>

<h3>Ticket Form</h3>

<div class="container">

  <form name="myForm" action="new-ticket" onsubmit="return validateForm()">
    <label for="fname">Contact*</label>
    <input type="text" id="contact" name="contact" placeholder="contact.." required>
    
    
    <label for="fname">Subject*</label>
    <input type="text" id="subject" name="subject" placeholder="subject" required>
    
    <label for="status">status*</label>
    <select id="status" name="status" required>
    <option value=""></option>
      <option value="open">open</option>
      <option value="closed">closed</option>
      <option value="rejected">rejected</option>
      <option value="assigned">assigned</option>
    </select>
     <label for="priority">priority*</label>
    <select id="priority" name="priority" required>
    <option value=""></option>
      <option value="high">high</option>
      <option value="low">low</option>
      <option value="medium">medium</option>
    </select>
    <label for="Group name">Group name*</label>
    <input type="text" id="groupname" name="groupname" placeholder="group name" required>
     <label for="Assigned to">Assigned to*</label>
    <input type="text" id="assigned to" name="assignedto" placeholder="name" required>

    <label for="subject">Description</label>
    <textarea id="description" name="description" placeholder="Write something.." style="height:200px"></textarea>

    <input type="submit" value="Submit">
  </form>
</div>
</body>
</html>
