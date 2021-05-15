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

</style>
<meta charset="ISO-8859-1">
<title>Status</title>
</head>

<body>



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
      
      <button id="exportChart"  >Export Chart</button>    
      
  

</body>
</html>