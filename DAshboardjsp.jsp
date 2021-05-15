<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script type="text/javascript">
window.onload = function () {
var chart = new CanvasJS.Chart("chartContainer",
{

      title:{
      text: "Report"
      },
       data: [
      {
        type: "line",

        dataPoints: [                             
        { x: new Date(2012, 00, 1), y: 5 },
        { x: new Date(2012, 01, 1), y: 4 },
        { x: new Date(2012, 02, 1), y: 2 },
        { x: new Date(2012, 03, 1), y: 6},
        { x: new Date(2012, 04, 1), y: 1 },
        
        ]}]
    });
chart.render();

document.getElementById("exportChart").addEventListener("click",function(){
	chart.exportChart({format: "jpg"});
});
}

</script>

<meta name="viewport" content="width=device-width, initial-scale=1">
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
  background-color: red;
}
.loginbtn1 {
  width: auto;
  text-align: center;
  padding: 10px 18px;
  background-color: #C34A2C;
}
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}
.mbtn {
  width: auto;
  text-align: center;
  padding: 10px 15px;
  background-color: #307D7E;
}
.centerr {

  font-size: 150%;
  text-align :center;
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
.imgcontainer1 {
  text-align: center;
  margin: 24px 0 12px 0;
}
img.avatar1 {
  width: 15%;
  text-align: center;
  border-radius: 20%;
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
* {box-sizing: border-box}

/* Set height of body and the document to 100% */
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial;
}

/* Style tab links */
.tablink {
  background-color: #555;
  color: white;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  font-size: 17px;
  width: 20%;
}

.tablink:hover {
  background-color: #777;
}

/* Style the tab content (and add height:100% for full page content) */
.tabcontent {
  color: black;
  display: none;
  padding: 100px 20px;
  height: 100%;
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
#Tickets{background-color:white;}
#Contacts {background-color:white;}
#Report {background-color:white;}
#Dashboard {background-color:white;}
#Settings {background-color:white;}
#Logout {background-color:white;}

</style>
</head>
<body>
<div class="center">

 ${message} 

</div>

<button class="tablink" onclick="openPage('Tickets', this, 'red')">Tickets</button>
<button class="tablink" onclick="openPage('Contacts', this, 'red')">Contacts</button>
<button class="tablink" onclick="openPage('Report', this, 'red')" id="defaultOpen">Report</button>
<button class="tablink" onclick="openPage('Dashboard', this, 'red')">Dashboard</button>
<button class="tablink" onclick="openPage('Settings', this, 'red')">Settings</button>

<form>        
  <button type ="submit" formaction="/" class="loginbtn1"style ="float:right">log out</button>
</form> 
 
<br>
<br>
<br>
<div id="Tickets" class="tabcontent">

       <div class="centerr">
       <b>Tickets</b>
       </div>

  
  <form action="/t">
    <label for="uname"><b>New Ticket Creation</b></label>
    <button type="submit" class="loginbtn">Create</button>
  </form>
 <form action="/a">
    <label for="uname"><b>Display Tickets</b></label>
    <button type="submit" class="loginbtn">Show</button>
 </form>
 <form action="/y">
    <label for="uname"><b>Change Tickets Details</b></label>
    <button type="submit" class="loginbtn">Change</button>
 </form>
 <form action ="/vimal">       
    <label for="uname"><b>Show Status</b></label>
    <button type="submit" class="loginbtn">Show</button>
</form> 
 <form action="/b">
    <label for="uname"><b>Export Tickets</b></label>
    <button type="submit" class="loginbtn">Export</button>
 </form>
</div>

<div id="Contacts" class="tabcontent">
 

       <div class="centerr">
       <b>Contacts</b>
       </div>
       

  <form action="/cf">
    <label for="uname"><b>New Contact Creation</b></label>
    <button type="submit" class="loginbtn">Create</button>
  </form>
 <form action="/contact-table">
    <label for="uname"><b>Display Contacts</b></label>
    <button type="submit" class="loginbtn">Show</button>
 </form>
 <form action="/contact-export">
    <label for="uname"><b>Contacts Export</b></label>
    <button type="submit" class="loginbtn">Export</button>
 </form>
 <form action="/ci">
    <label for="uname"><b>Contacts Import</b></label>
    <button type="submit" class="loginbtn">Import</button>
 </form>
 <form action="/dg">
    <label for="uname"><b>Update Contacts</b></label>
    <button type="submit" class="loginbtn">Update</button>
 </form>

</div>

<div id="Report" class="tabcontent">
  
    
<div id="chartContainer" style="height: 300px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script> 
<button id="exportChart" class="loginbtn">Export Chart</button>
  
  
</div>


<div id="Dashboard" class="tabcontent">



   <div class="imgcontainer1">
    <img src="welcom..jpg" alt="Avatar" class="avatar1">
    <div class="centerr">
       <b>Welcome</b>
       </div>
   </div>

<div class="center">

 ${message1} 

</div>
<form action="/full">
    <label for="uname"><b>Overall Status</b></label>
    <button type="submit" class="loginbtn">proceed</button>
  </form>
  
<form action="/vimal">
   <label for="uname"><b>Ticket Status</b></label>
   <button type="submit" class="loginbtn">proceed</button>
  </form>

<form action ="/mp">
 <label for="uname"><b>Search Tickets</b></label>
    <input type="text"  id="tickets"  placeholder="Enter tickets" name="tickets" >
     <button type="submit" class="mbtn">Search</button>
</form>

<form action ="/ypp">
 <label for="uname"><b>Search Contacts</b></label>
    <input type="text"  id="contact"  placeholder="Enter contact" name="contact" >
     <button type="submit" class="mbtn">Search</button>
</form>
    </div>

<div id="Settings" class="tabcontent">

      

       <div class="centerr">
       <b>Settings</b>
      
       </div>


  <form action="/usersetting">
    <label for="uname"><b>User Setting</b></label>
    <button type="submit" class="loginbtn">proceed</button>
  </form>
 <form action="/ticketsetting">
    <label for="uname"><b>Ticket Setting</b></label>
    <button type="submit" class="loginbtn">proceed</button>
 </form>
 <form action="/contactsetting">
    <label for="uname"><b>Contact Setting</b></label>
    <button type="submit" class="loginbtn">proceed</button>
 </form>
</div>
<script>
function openPage(pageName,elmnt,color) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].style.backgroundColor = "";
  }
  document.getElementById(pageName).style.display = "block";
  elmnt.style.backgroundColor = color;
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
   
</body>
</html> 
