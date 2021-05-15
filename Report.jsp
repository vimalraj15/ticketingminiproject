<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
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
</style>
<script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

<script type="text/javascript">
    function chart() {
	  var status= document.getElementById("status").value;
	  console.log(status);
	  if(status==="openstatus"){
    var chart = new CanvasJS.Chart("chartContainer",


    	    	    		
    {

      title:{
      text: "Open"
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
	  } else if("assigned"===status){
		  var chart = new CanvasJS.Chart("chartContainer",


  	    		
				    {

				      title:{
				      text: "Assigned"
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
				        { x: new Date(2012, 01, 1), y: 3 },
				        { x: new Date(2012, 02, 1), y: 8 },
				        { x: new Date(2012, 03, 1), y: 4},
				        { x: new Date(2012, 04, 1), y: 1 },
				        
				        ]
				      }
				      ]
				      
				      
				    });
		  chart.render();
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
				        { x: new Date(2012, 01, 1), y: 5 },
				        { x: new Date(2012, 02, 1), y: 1 },
				        { x: new Date(2012, 03, 1), y: 6},
				        { x: new Date(2012, 04, 1), y: 8 },
				        
				        ]
				      }
				      ]
				      
				      
				    });
		  chart.render();
	  }




    
  }
  

  </script>

<meta charset="ISO-8859-1">
<title>report</title>
</head>
<body>
 <form>        
  <button type ="submit" formaction="/" class ="btn"style ="float:right">log out</button>
  </form>  
  <br>
  <br>  
<body style ="background-color:bisque;">
<div>
				<label for="status">Choose a status:</label>

<select class="top1" name="status" id="status" onchange="chart()">
<option >choose status</option>
  <option value="open" id="open1" >open</option>
  <option value="assigned" id="unn">Assigned</option>
  <option value="closed">closed</option>
    <option value="rejected">rejected</option>
  
</select>
				</div>
  	<div id="open" class="chart">
		  		  <div class="top2" id="chartContainer"  style="height: 300px; width: 100%;">
		  
  </div>
  </div>
  
  	<div id="assigned" class="chart">
		<p id="chartContainer"></p>  
  </div>
  <div id="closed" class="chart">
		<p id="chartContainer"></p>  
  </div>
   <div id="rejected" class="chart">
		<p id="chartContainer"></p>  
  </div>




<br><br>
<h3>REPORTS </h3>

<form action ="/a">
         click here to display Ticket Table: <input type ="submit" value ="VIEW"/> 
         <br>
         <br>
</form>

<form action ="/contact-table">
         click here to display Contact Table <input type ="submit" value ="VIEW"/> 
         <br>
         <br>
</form>

<form action ="/full">
         click here  Report <input type ="submit" value ="VIEW"/> 
         <br>
         <br>
</form>
</body>
</html>