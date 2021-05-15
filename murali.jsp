<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title>Side Menu Bar</title>
<link rel="stylesheet" href="style.css">
</head>
<style>
* {
	padding: 0;
	margin: 0;
	text-decoration: none;
	list-style: none;
	box-sizing: border-box;
}

body {
	font-family: 'Josefin Sans', sans-serif;
}
html{
  scroll-behavior: smooth;
}


ul {

    background: #4b4276;
    padding: 30px 0px;
	position: fixed;
	top: 0;
	left: 0;
	margin-left: 0px;
	width: 240px;
	height: 100vh;
	overflow-y: auto;
}

ul li {
	height: 65px;
	outline: none;
}

ul li a {
	display: block;
	height: 100%;
	width: 100%;
	line-height: 70px;
	font-size: 20px;
	color: white;
	padding-left: 10%;
	background: #1e1e1e;
	border-top: 1px solid rgba(255, 255, 255, .1);
	border-bottom: 1px solid black;
	border-left: 5px solid transparent;

}


section{
  margin-left: 260px;

}
.sec1{
  margin-left: -20px;
  background: url(hi.jpg) no-repeat;
  background-size: cover;
  height: 100vh;
}
.sec2{
  margin-left: -20px;
  background: url(hi.jpg) no-repeat;
  background-size: cover;
  height: 100vh;
}
.sec3{
  margin-left: -20px;
  background: url(hi.jpg) no-repeat;
  background-size: cover;
  height: 100vh;
}
.sec4{
  margin-left: -20px;
  background: url(hi.jpg) no-repeat;
  background-size: cover;
  height: 100vh;
}
.sec5{
  margin-left: -20px;
  background: url(hi.jpg) no-repeat;
  background-size: cover;
  height: 100vh;
}
.sec6{
  margin-left: -20px;
  background: url(hi.jpg) no-repeat;
  background-size: cover;
  height: 100vh;
}
.sec7{
  margin-left: -20px;
  background: url(hi.jpg) no-repeat;
  background-size: cover;
  height: 100vh;
}


h1{
  font-size: 40px;
  padding: 15px 20px;
}
p{
  padding: 0 20px 10px 20px;
  text-align: justify;
   font-style: oblique;

}

cm {
  white-space: pre;
}
c1 {
  white-space: pre;
}
ul li:hover{
  background-color: #594f8d;
}
ul li a{
  color: #bdb8d7;
  display: block;
}
ul li a .fas{
  width: 25px;
}
 ul li:hover a{
  color: #fff;
}
h2{
  color: #fff;
  text-transform: uppercase;
  text-align: center;
  margin-bottom: 30px;
  
}


.column {
  float: left;
  width: 20%;
  padding: 0 10px;
}

.column2
{
  float: left;
  width: 100%;
  padding: 0 10px;
}
/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
.loginbtn {
  width: 1;
  text-align: center;
  padding: 10px 18px;
  background-color: #6495ED;
}
/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 10px 10px 0 rgba(0, 0, 0, 0.5);
  padding: 16px;
  text-align: center;
  background-color: #f1f1f1;
}
input[type=text],select, input[type=password] {
  width: 100%;
  padding: 15px;
    margin-top: 6px;
  margin-bottom: 16px;
  display: inline-block;
border: 1px solid #ccc;
border-radius: 4px;
box-sizing: border-box;
  background: #ddd;
}

/* Add a background color when the inputs get focus */
input[type=text]:focus,select, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: #474e5d;
  padding-top: 50px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* Style the horizontal ruler */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
 
/* The Close Button (x) */
.close {
  position: absolute;
  right: 35px;
  top: 15px;
  font-size: 40px;
  font-weight: bold;
  color: #f1f1f1;
}

.close:hover,
.close:focus {
  color: #f44336;
  cursor: pointer;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
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

.monospace {
  font-family: "Lucida Console", Courier, monospace;
  color: #fff;
  text-transform: uppercase;
  text-align: center;
  margin-bottom: 30px;
  font-size: 30px;
}


table {
  border-collapse: collapse;
   border: 1px solid black;
  width: 100%;
}

th, td {
  text-align: left;
  
  padding: 8px;
   border-bottom: 1px solid #ddd;
}
tr:nth-child(odd){background-color: #f2f2f2}
tr:hover {background-color:#f5f5f5;}


th {
  background-color: #6495ed;
  color: white;
}
#example2 {
  width: 200px;
  padding: 10px;  
  border: 5px solid skyblue;
  align-content: center
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }


</style>
  <script src="https://cdn.tiny.cloud/1/u7fw5mj8i3xj4knum3d8ieh134vm54q8uphgxrpd9t0v310x/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
<script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script type="text/javascript">

function chart() 
  {
	  var status= document.getElementById("status").value;
	  console.log(status);
	  if(status==="open"){
    var chart = new CanvasJS.Chart("chartContainer",


    	    	    		
    {

      title:{
      text: "open"
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
        
        ]
      }
      ]
      
      
    });
    chart.render();
    document.getElementById("exportChart").addEventListener("click",function ()
    {
    	chart.exportChart({format: "jpg"});
    });
}
	  else if("closed"===status){
		  var chart = new CanvasJS.Chart("chartContainer",


  	    		
				    {

				      title:{
				      text: "closed"
				      },
				       data: [
				      {
				        type: "line",

				        dataPoints: [
				        { x: new Date(2012, 00, 1), y: 2 },
				        { x: new Date(2012, 01, 1), y: 4 },
				        { x: new Date(2012, 02, 1), y: 6 },
				        { x: new Date(2012, 03, 1), y: 2},
				        { x: new Date(2012, 04, 1), y: 5 },
				        
				        ]
				      }
				      ]
				      
				      
				    });
		  chart.render();
		  document.getElementById("exportChart").addEventListener("click",function ()
				    {
				    	chart.exportChart({format: "jpg"});
				    });
	  }
	  else if("rejected"===status){
		  var chart = new CanvasJS.Chart("chartContainer",


	  	    		
				    {

				      title:{
				      text: "rejected"
				      },
				       data: [
				      {
				        type: "line",

				        dataPoints: [
				        { x: new Date(2012, 00, 1), y: 2 },
				        { x: new Date(2012, 01, 1), y: 3 },
				        { x: new Date(2012, 02, 1), y: 8 },
				        { x: new Date(2012, 03, 1), y: 4},
				        { x: new Date(2012, 04, 1), y: 1 },
				        
				        ]
				      }
				      ]
				      
				      
				    });
		  chart.render();
		  document.getElementById("exportChart").addEventListener("click",function ()
				    {
				    	chart.exportChart({format: "jpg"});
				    });
	  }
	    
	  else if("assigned"===status){
		  var chart = new CanvasJS.Chart("chartContainer",


	  	    		
				    {

				      title:{
				      text: "ASSIGNED"
				      },
				       data: [
				      {
				        type: "line",

				        dataPoints: [
				        { x: new Date(2012, 00, 1), y: 2 },
				        { x: new Date(2012, 01, 1), y: 5 },
				        { x: new Date(2012, 02, 1), y: 1 },
				        { x: new Date(2012, 03, 1), y: 6},
				        { x: new Date(2012, 04, 1), y: 8 },
				        
				        ]
				      }
				      ]
				    });
		  chart.render();
		  document.getElementById("exportChart").addEventListener("click",function ()
				    {
				    	chart.exportChart({format: "jpg"});
				    });
	  }    
  }

tinymce.init({
    selector: '#description'
  });

tinymce.init({
    selector: '#descriptio'
  });

tinymce.init({
    selector: '#descripti'
  });


 </script>


<body>
<section>
<div class="sec2"></div>
 <h1 id="murali">Dashboard</h1>


<table>
<tr>
   <th>unresolved</th>
   <th>overdue</th>
   <th>duedate</th>
   <th>open</th>
   <th>onhold</th>
   <th>unassigned</th>
</tr>
     <tr>   		
				<tbody>
				<tr>
				<td>
	             10		
				</td>
				<td>
	             22		
				</td>
				<td>
	             33		
				</td>
				<td>
	             45		
				</td>
				<td>
	             55	
				</td>
				<td>
	             10	
				</td>
				
				</tr>
				</tbody>
</table>
<label for="status">Choose a status:</label>
<select class="top1" name="status" id="status" onchange="chart()">
<option >choose status</option>
<option value="open" id="open" >open</option>
<option value="closed" id="unn">closed</option>
<option value="rejected">rejected</option>
<option value="assigned">assigned</option>
</select>
<div id="open" class="chart">
	  <div class="top2" id="chartContainer"  style="height: 300px; width: 100%;">
	  
	  
</div>
</div>

<div id="closed" class="chart">
<p id="chartContainer"></p>  
</div>
<div id="rejected" class="chart">
<p id="chartContainer"></p>  
</div>
<div id="assigned" class="chart">
<p id="chartContainer"></p>  
</div>
      
      <button id="exportChart" class="loginbtn"  style="width:150px;" >Export Chart</button>    
<div class="row"> 
  <div class="column">
    <div class="card">

      <h3>Search Tickets</h3>
    <form action ="/mp">
 
    <input type="text"  id="tickets"  placeholder="Enter tickets" name="tickets" >
     <button type="submit" class="loginbtn">Search</button>
</form>
      Go here for search Tickets
    </div>
  </div>
  
  
<div class="column">
    <div class="card">
      <h3>Search Contacts</h3>
     <form action ="/ypp">
 
    <input type="text"  id="contact"  placeholder="Enter contact" name="contact" >
     <button type="submit" class="loginbtn">Search</button>
</form>
      Go here for Search Tickets
    </div>
  </div>   
  </div>

<p>&nbsp;</p>  
<p>&nbsp;</p>  
<p>&nbsp;</p>  
<p><b>Nature is boon to humankind. Nature consists of various natural resources i.e. Sunrays, air, water, soil, etc. which are necessary for humankind. There are various biotic and abiotic factors that together called nature. Biotic factors consist of forests and animals and abiotic factors are physical elements.
All those elements which are naturally found on earth and which are untouched by human activities are classified as natural resources. Fossils, Metals, Natural crude oil, etc. which are helpful for the world are also part of natural resources.
Nature is essential for the survival of humankind. Bio-diversity is an integral part of the natural system. Nature feeds several terrestrial and aquatic creatures. Preservation of natural resources is crucial for all humans.
Forest, sunrays, mountains all are important. Every element is carrying a special geological fact. What if there were no stones and pebbles? Then the fire was not invented. Yes, it is true natural elements are the root cause for developing a civilization.</b></p>
<div class="sec1"></div>


</section>


<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script> 
<script src="https://cdn.tiny.cloud/1/u7fw5mj8i3xj4knum3d8ieh134vm54q8uphgxrpd9t0v310x/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
<script type="text/javascript">
window.onload = function () {
	var chart = new CanvasJS.Chart("chartContainer1",
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

	document.getElementById("exportCharts").addEventListener("click",function(){
		chart.exportChart({format: "jpg"});
	});
	}

tinymce.init({
    selector: '#description'
  });

tinymce.init({
    selector: '#descriptio'
  });

tinymce.init({
    selector: '#descripti'
  });

	
	
	
  </script>
<body>

<%

 response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); 
 response.setHeader("progma","no-cache");
 response.setHeader("Expires","0");
 
 if(session.getAttribute("mails")==null)
	 response.sendRedirect("welcomepage.jsp");
%>


<script src="https://kit.fontawesome.com/02c8a7c5cd.js" ></script>
	<ul>
	<h2>hi!</h2>
	<p class="monospace">${name}</p>
		<li class="active"><a href="#home"><i class="fas fa-home"></i>Home</a> </li>
		<li><a href="#about"><i class="fas fa-tasks"></i>Tickets</a></li>
		<li><a href="#portfolio"><i class="fas fa-id-card"></i>Contacts</a></li>
		<li><a href="#murali"><i class="far fa-file-alt"></i>Dashboard</a></li>
		<li><a href="#services"><i class="far fa-clipboard"></i>Reports</a></li>
		<li><a href="#feedback"><i class="fas fa-cogs"></i>Settings</a></li>
		<li><a href="#ticket"><i class="fas fa-align-justify"></i>Ticketing</a></li>
		<li><a class="contact" href="${pageContext.request.contextPath }/logout"><i class="fas fa-sign-out-alt"></i>logout</a></li>
	</ul>
<section>
<h1 id="home">Hello ${sessionScope.mails}</h1>

<p>Nature is boon to humankind. Nature consists of various natural resources i.e. Sunrays, air, water, soil, etc. which are necessary for humankind. There are various biotic and abiotic factors that together called nature. Biotic factors consist of forests and animals and abiotic factors are physical elements.
All those elements which are naturally found on earth and which are untouched by human activities are classified as natural resources. Fossils, Metals, Natural crude oil, etc. which are helpful for the world are also part of natural resources.
Nature is essential for the survival of humankind. Bio-diversity is an integral part of the natural system. Nature feeds several terrestrial and aquatic creatures. Preservation of natural resources is crucial for all humans.
Forest, sunrays, mountains all are important. Every element is carrying a special geological fact. What if there were no stones and pebbles? Then the fire was not invented. Yes, it is true natural elements are the root cause for developing a civilization.</p>
<div class="sec1"></div>





   <h1 id="about">Tickets</h1>
  <div class="column2">
    <div class="card">
      <h3>Search Tickets</h3>
    <form action ="/mp">
    <input type="text"  id="tickets"  placeholder="Enter tickets" name="tickets" >
     <button type="submit" class="loginbtn" style="width:150px;">Search</button>
</form>

    </div>
  </div>  
  <p>&nbsp;</p> 
  <hr>
<div class="row">
   <div class="column">
    <div class="card">
		<b><h3>New Ticket</h3></b>
		<h3><button onclick="document.getElementById('id01').style.display='block'" class="loginbtn" style="width:150px;" >Create</button></h3>
       <b> Go here for new Ticket Creation</b>
    </div>
		
   <div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" name="myForm" action="new-ticket"  method="POST" onsubmit="return validateForm()">   
    <div class="container">
      <h1>New Ticket Creation</h1>
       Please fill in this form to create an Tickets
      <hr>
       <label for="fname"><b>Contact*</b></label>
    <input type="text" id="contact" name="contact" placeholder="contact.." required>
    
    
    <label for="fname"><b>Subject*</b></label>
    <input type="text" id="subject" name="subject" placeholder="subject" required>
    
    <label for="status"><b>status*</b></label>
    <select id="status" name="status" required>
    <option value=""></option>
      <option value="open">open</option>
      <option value="closed">closed</option>
      <option value="rejected">rejected</option>
      <option value="assigned">assigned</option>
    </select>
     <br>
     
     <label for="priority"><b>priority*</b></label>
    <select id="priority" name="priority" required>
    <option value=""></option>
      <option value="high">high</option>
      <option value="low">low</option>
      <option value="medium">medium</option>
    </select>
    <br>
    
    
    <label for="Group name"><b>Group name*</b></label>
    <input type="text" id="groupname" name="groupname" placeholder="group name" required>
    
    
     <label for="Assigned to"><b>Assigned to*</b></label>
    <input type="text" id="assigned to" name="assignedto" placeholder="name" required>

    <label for="subject"><b>Description<b></b></label>
    <textarea id="description" name="description" placeholder="Write something.." style="height:200px"></textarea>
    
      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
        <button type="submit" class="signupbtn">Sign Up</button>
      </div>
    </div>
  </form>
</div>
</div>
<div class="column">
      <div class="card">
		<h3>Display Tickets</h3>        
     <form action="/a">
         <button type="submit" class="loginbtn">Show</button>
    </form>
        Go here for view tickets
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <h3>Update Tickets</h3>
      <form action="/y">
    <button type="submit" class="loginbtn">Change</button>
 </form>
      Go here for update ticket details
    </div>
  </div>
  <div class="column">
    <div class="card">
      <h3>Tickets Status </h3>
      <form action ="/vimal">       
    <button type="submit" class="loginbtn">Show</button>
</form> 
      Go here for tickets status
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <h3>Exporting Tickets</h3>
      <form action="/b">
    <button type="submit" class="loginbtn">Export</button>
 </form>
      Go here for tickets export to file
    </div>
</div>

<p>&nbsp;</p> 
<p>&nbsp;</p> 
<div> </div>

<hr>
<div class="column2">
<div class="card">
<b> Go here for Ticket Tooling</b>
<p>&nbsp;</p> 
<button onclick="document.getElementById('id03').style.display='block'" class="loginbtn" style="width:150px;" >Create</button>
</div>
</div>
<div>

  
   
   <div id="id03" class="modal">
  <span onclick="document.getElementById('id03').style.display='none'" class="close" title="Close Modal">&times;</span>
   <form class="modal-content"  method="POST" action="/upload" enctype="multipart/form-data">    
       <div class="container">
      <h1>Ticket Details</h1>
      <br>
       Please fill in this form 
   <br>
   	<br>
   	<br>
	<label>name*</label>
		<input name="name"  value ="${name}" readonly required>
	
	<br>
	<br>
	<br>
		<label>subject*</label>
		<input type="text" name="subject"  required>

     <label >Severity*</label>
    <select id="severity" name="severity" required>
      <option value="Major">Major</option>
      <option value="Minor">Minor</option>
      <option value="Critical">Critical</option>
    </select>	

      
     <label>Category*</label>
    <select id="category" name="category" required>
      <option value="Network">Network</option>
      <option value="KPI">KPI</option>
      <option value="FM">FM</option>
       <option value="CM">CM</option>
      <option value="SYS LOG">SYS LOG</option>
      <option value="SLA">SLA</option>
    </select>	
	
	<label>Region*</label>
    <select id="region" name="region" required>
      <option value="India">India</option>
      <option value="Australia">Australia</option>
      <option value="America">America</option>
    </select>
	
	
	<label>Escalate*</label>
    <select id="escalate" name="escalate" required>
      <option value="Level1">Level1</option>
      <option value="Level2">Level2</option>
      <option value="Level3">Level3</option>
    </select>
	
	
	 <label>Department*</label>
    <select id="department" name="department" required>
      <option value="testing">testing</option>
      <option value="developer">developer</option>
      <option value="user">user</option>
    </select>
	
	<label>To*</label>
   <input type="text" name="too"required>
	<em>Separate the Email Id using semi-colon(;)</em>
	<div></div>
	
	 <label>Description*</label>
    <textarea id="descriptio" name="description" placeholder="Write something.." style="height:200px"></textarea>
	
<br />
		<label>Select files to upload</label>
		<input type="file"name="file" required >
   
   
   
   
    <div class="clearfix">
        <button type="button" onclick="document.getElementById('id03').style.display='none'" class="cancelbtn">Cancel</button>
        <button type="submit" class="signupbtn">Create</button>
    </div>
    </div> 
   </form>
   
   </div>
 


  
 <p>&nbsp;</p> 
 <p>Nature is boon to humankind. Nature consists of various natural resources i.e. Sunrays, air, water, soil, etc. which are necessary for humankind. There are various biotic and abiotic factors that together called nature. Biotic factors consist of forests and animals and abiotic factors are physical elements.
All those elements which are naturally found on earth and which are untouched by human activities are classified as natural resources. Fossils, Metals, Natural crude oil, etc. which are helpful for the world are also part of natural resources.
Nature is essential for the survival of humankind. Bio-diversity is an integral part of the natural system. Nature feeds several terrestrial and aquatic creatures. Preservation of natural resources is crucial for all humans.
Forest, sunrays, mountains all are important. Every element is carrying a special geological fact. What if there were no stones and pebbles? Then the fire was not invented. Yes, it is true natural elements are the root cause for developing a civilization.</p>  
</div>

		<div class="sec2"></div>
		<div class="row">
   <h1 id="portfolio">Contacts</h1>
   <div class="column">
    <div class="card">
		<b><h3>New Contact</h3></b>
		<h3><button onclick="document.getElementById('id02').style.display='block'" class="loginbtn" style="width:150px;" >Create</button></h3>
       <b> Go here for new Contact Creation</b>
    </div>
		
   <div id="id02" class="modal">
  <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form name="myForm" class="modal-content"  action="new-contact" method="POST"  onsubmit="return validateForm()">   
    <div class="container">
    
      <h1>New Contact Creation</h1>
       Please fill in this form to create an Contact
      <hr>
     <label for="fname">Contact*</label>
    <input type="text" id="contact" name="contact" placeholder="contact.." required>

    <label for="lname">Company*</label>
    <input type="text" id="company" name="company" placeholder="company" required>
    
    <label for="lname">Mailid*</label>
    <input type="text" id="mailid" name="mailid" placeholder="your mailid" >
    
    <label for="lname">Phone Number*</label>
    <input type="text" id="phoneno" name="phoneno" placeholder="phone no">
    
    <label for="lname">facebook</label>
    <input type="text" id="facebook" name="facebook" placeholder="facebook id">
     <label for="lname">Twitter</label>
    <input type="text" id="twitter" name="twitter" placeholder="twitter id">
     
      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
        <button type="submit" class="signupbtn" onsubmit="return validateForm()">Sign Up</button>
      </div>
    </div>
  </form>
</div>
</div>
<div class="column">
      <div class="card">
		<h3>Display Contacts</h3>        
    <form action="/contact-table">
    <button type="submit" class="loginbtn">Show</button>
 </form>
        Go here for view contacts
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <h3>Update Contacts</h3>
       <form action="/dg">
    <button type="submit" class="loginbtn">Update</button>
 </form>
      Go here for update Contact details
    </div>
  </div>
  <div class="column">
    <div class="card">
      <h3>Contacts Export</h3>
     <form action="/contact-export">
    <button type="submit" class="loginbtn">Export</button>
 </form>
      Go here for Contact Export
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <h3>Import Contacts</h3>
      <form action="/ci">
    <button type="submit" class="loginbtn">Import</button>
 </form>
 
      Go here for Contact Import
    </div>
</div>
<p>&nbsp;</p> 
 <p> Nature is boon to humankind. Nature consists of various natural resources i.e. Sunrays, air, water, soil, etc. which are necessary for humankind. There are various biotic and abiotic factors that together called nature. Biotic factors consist of forests and animals and abiotic factors are physical elements.
All those elements which are naturally found on earth and which are untouched by human activities are classified as natural resources. Fossils, Metals, Natural crude oil, etc. which are helpful for the world are also part of natural resources.
Nature is essential for the survival of humankind. Bio-diversity is an integral part of the natural system. Nature feeds several terrestrial and aquatic creatures. Preservation of natural resources is crucial for all humans.
Forest, sunrays, mountains all are important. Every element is carrying a special geological fact. What if there were no stones and pebbles? Then the fire was not invented. Yes, it is true natural elements are the root cause for developing a civilization.</p>  
</div>		
<div class="sec4"></div>
		<h1 id="services">Report</h1>
		
		
<div id="chartContainer1" style="width: 100%; height: 300px;display: inline-block;"></div> 

<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script> 

<button id="exportCharts" class="loginbtn"  style="width:100%;" >Export Chart</button>  

<div class="row">
	<div class="column">
      <div class="card">
		<h3>Overall Status</h3>        
    <form action="/full">
    <button type="submit" class="loginbtn">proceed</button>
  </form>
        Go here for overall Status
    </div>
</div>
<div class="column">
    <div class="card">
      <h3>Tickets report</h3>
     <form action="/vimal">

   <button type="submit" class="loginbtn">proceed</button>
  </form>
      Go here for Ticket Status
    </div>
  </div>
</div>
<p>&nbsp;</p> 
 
		<p>Nature is boon to humankind. Nature consists of various natural resources i.e. Sunrays, air, water, soil, etc. which are necessary for humankind. There are various biotic and abiotic factors that together called nature. Biotic factors consist of forests and animals and abiotic factors are physical elements.
All those elements which are naturally found on earth and which are untouched by human activities are classified as natural resources. Fossils, Metals, Natural crude oil, etc. which are helpful for the world are also part of natural resources.
Nature is essential for the survival of humankind. Bio-diversity is an integral part of the natural system. Nature feeds several terrestrial and aquatic creatures. Preservation of natural resources is crucial for all humans.
Forest, sunrays, mountains all are important. Every element is carrying a special geological fact. What if there were no stones and pebbles? Then the fire was not invented. Yes, it is true natural elements are the root cause for developing a civilization.</p>



<div class="sec5"></div>
		    <div class="row">
		<h1 id="feedback">Settings</h1>
		<div class="column">
      <div class="card">
		<h3>User Setting</h3>        
   <form action="/usersetting">
  
    <button type="submit" class="loginbtn">proceed</button>
  </form>
        Go here for user account setting
    </div>
</div>
<div class="column">
    <div class="card">
      <h3>Ticket Setting</h3>
    <form action="/ticketsetting">
    
    <button type="submit" class="loginbtn">proceed</button>
 </form>
      Go here for Ticket setting
    </div>
  </div>
  <div class="column">
    <div class="card">
      <h3>Contact</h3>
     <form action="/contactsetting">
    <button type="submit" class="loginbtn">proceed</button>
 </form>
      Go here for Contact Settings
    </div>
 
 
 
  </div>
<p>&nbsp;</p> 
<p>&nbsp;</p> 
<p>&nbsp;</p> 
<p>&nbsp;</p> 
<p>&nbsp;</p>  
<p>&nbsp;</p>  
<p>&nbsp;</p>  

 <p> Nature is boon to humankind. Nature consists of various natural resources i.e. Sunrays, air, water, soil, etc. which are necessary for humankind. There are various biotic and abiotic factors that together called nature. Biotic factors consist of forests and animals and abiotic factors are physical elements.
All those elements which are naturally found on earth and which are untouched by human activities are classified as natural resources. Fossils, Metals, Natural crude oil, etc. which are helpful for the world are also part of natural resources.
Nature is essential for the survival of humankind. Bio-diversity is an integral part of the natural system. Nature feeds several terrestrial and aquatic creatures. Preservation of natural resources is crucial for all humans.
Forest, sunrays, mountains all are important. Every element is carrying a special geological fact. What if there were no stones and pebbles? Then the fire was not invented. Yes, it is true natural elements are the root cause for developing a civilization.</p>  
 
</div>
		
		

<div class="sec6"></div>
		<h1 id="contact">Contact Section</h1>
		<p>Nature is boon to humankind. Nature consists of various natural resources i.e. Sunrays, air, water, soil, etc. which are necessary for humankind. There are various biotic and abiotic factors that together called nature. Biotic factors consist of forests and animals and abiotic factors are physical elements.
All those elements which are naturally found on earth and which are untouched by human activities are classified as natural resources. Fossils, Metals, Natural crude oil, etc. which are helpful for the world are also part of natural resources.
Nature is essential for the survival of humankind. Bio-diversity is an integral part of the natural system. Nature feeds several terrestrial and aquatic creatures. Preservation of natural resources is crucial for all humans.
Forest, sunrays, mountains all are important. Every element is carrying a special geological fact. What if there were no stones and pebbles? Then the fire was not invented. Yes, it is true natural elements are the root cause for developing a civilization.</p>
	
	
	
<div class="sec5"></div>
		    <div class="row">
		<h1 id="ticket">Ticket</h1>
		<div class="column2">
<div class="card">
<b> Go here for Ticket Tooling</b>
<p>&nbsp;</p> 
<button onclick="document.getElementById('id03').style.display='block'" class="loginbtn" style="width:150px;" >Create</button>
</div>
</div>
<div>

  
   
   <div id="id03" class="modal">
  <span onclick="document.getElementById('id03').style.display='none'" class="close" title="Close Modal">&times;</span>
   <form class="modal-content"  method="POST" action="/upload" enctype="multipart/form-data">    
       <div class="container">
      <h1>Ticket Details</h1>
      <br>
       Please fill in this form 
   <br>
   	<br>
   	<br>
	<label>name*</label>
		<input name="name"  value ="${name}" readonly required>
	
	<br>
	<br>
	<br>
		<label>subject*</label>
		<input type="text" name="subject"  required>

     <label >Severity*</label>
    <select id="severity" name="severity" required>
      <option value="Major">Major</option>
      <option value="Minor">Minor</option>
      <option value="Critical">Critical</option>
    </select>	

      
     <label>Category*</label>
    <select id="category" name="category" required>
      <option value="Network">Network</option>
      <option value="KPI">KPI</option>
      <option value="FM">FM</option>
       <option value="CM">CM</option>
      <option value="SYS LOG">SYS LOG</option>
      <option value="SLA">SLA</option>
    </select>	
	
	<label>Region*</label>
    <select id="region" name="region" required>
      <option value="India">India</option>
      <option value="Australia">Australia</option>
      <option value="America">America</option>
    </select>
	
	
	<label>Escalate*</label>
    <select id="escalate" name="escalate" required>
      <option value="Level1">Level1</option>
      <option value="Level2">Level2</option>
      <option value="Level3">Level3</option>
    </select>
	
	
	 <label>Department*</label>
    <select id="department" name="department" required>
      <option value="testing">testing</option>
      <option value="developer">developer</option>
      <option value="user">user</option>
    </select>
	
	<label>To*</label>
   <input type="text" name="too"required>
	<em>Separate the Email Id using semi-colon(;)</em>
	<div></div>
	
	 <label>Description*</label>
    <textarea id="descripti" name="description" placeholder="Write something.." style="height:200px"></textarea>
	
<br />
		<label>Select files to upload</label>
		<input type="file"name="file" required >
   
   
   
   
    <div class="clearfix">
        <button type="button" onclick="document.getElementById('id03').style.display='none'" class="cancelbtn">Cancel</button>
        <button type="submit" class="signupbtn">Create</button>
    </div>
    </div> 
   </form>
   
   </div>
<p>&nbsp;</p> 
<p>&nbsp;</p> 
 <p> Nature is boon to humankind. Nature consists of various natural resources i.e. Sunrays, air, water, soil, etc. which are necessary for humankind. There are various biotic and abiotic factors that together called nature. Biotic factors consist of forests and animals and abiotic factors are physical elements.
All those elements which are naturally found on earth and which are untouched by human activities are classified as natural resources. Fossils, Metals, Natural crude oil, etc. which are helpful for the world are also part of natural resources.
Nature is essential for the survival of humankind. Bio-diversity is an integral part of the natural system. Nature feeds several terrestrial and aquatic creatures. Preservation of natural resources is crucial for all humans.
Forest, sunrays, mountains all are important. Every element is carrying a special geological fact. What if there were no stones and pebbles? Then the fire was not invented. Yes, it is true natural elements are the root cause for developing a civilization.</p>  
 	
	
	
	
	
	
	
	
	</section>


<script>
var modal = document.getElementById('id01');


window.onclick = function(event)
{
  if (event.target == modal) {
    modal.style.display = "none";
  }
}

var modal = document.getElementById('id02');

window.onclick = function(event) 
{
if (event.target == modal) {
 modal.style.display = "none";
}

var modal = document.getElementById('id03');


window.onclick = function(event) {
if (event.target == modal) {
modal.style.display = "none";
}








</script>
</body>
</html>