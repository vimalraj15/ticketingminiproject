<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>

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
  

 </script>
 <style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 50%;
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

input[type=submit]:hover {
  background-color: #6495ed;
}
button {
  background-color: #6495ed;
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
  
  margin-left: +100px;
  margin-right: +100px;
  padding: 20px;
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
  background-color: #4CAF50;
  color: white;
}
.center {
  margin: auto;
  width: 60%;
  border: 1px;
  padding: 10px;
  color: black;
  text-align :center;
  font-size: 200%;
}






</style>
<meta charset="ISO-8859-1">
<title>Status</title>
</head>

<body>
<div class="center">
     Status
</div>


<form>        
  <button type ="submit" formaction="/" class="loginbtn"style ="float:right">log out</button>
</form> 

<br>
<br>


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



<br>
<br>
<br>
<br>
<br>

<div class="container">
 <div>
<label for="status">Choose a status:</label>

<select class="top1" name="status" id="status" onchange="chart()">
<option >choose status</option>
<option value="open" id="open" >open</option>
<option value="closed" id="unn">closed</option>
<option value="rejected">rejected</option>
<option value="assigned">assigned</option>

</select>
</div>



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
      
      <button id="exportChart"  >Export Chart</button>    
      
  
</div>
</body>
</html>