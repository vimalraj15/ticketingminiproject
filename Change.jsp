<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
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
  background-color: #6495ED;
  color: white;
}
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
.center {
  margin: auto;
  width: 60%;
  border: 1px;
  padding: 10px;
  color: blue;
  font-size: 150%;
  text-align :center;
}

.mbtn {
  width: auto;
  text-align: center;
  padding: 10px 15px;
  background-color:  #307D7E;
}

</style>
<title>changetickets</title>
</head>

<body>
<div class="center">
     ${murali}
</div>

  <form>        
  <button type ="submit" formaction="/" class="loginbtn"style ="float:right">log out</button>
</form>
  <br>
  <br>
<h3><em>${m}</em></h3>  
<table >
<tr>
   <th>contact</th>
   <th>subject</th>
   <th>status</th>
   <th>priority</th>
   <th>groupname</th>
   <th>assignedto</th>
   <th>description</th>
   <th>tickets</th>

</tr>
	<c:forEach var="lang" items="${vimal}">
     <tr>   		
				<tbody>
				<tr>
				
				<td>
	<c:out value="${lang.contact}"/>		
				</td>
				<td>
	<c:out value="${lang.subject}"/>		
				</td>
				<td>
	<c:out value="${lang.status}"/>		
				</td>
				<td>
	<c:out value="${lang.priority}"/>		
				</td>
				<td>
	<c:out value="${lang.groupname}"/>		
				</td>
				<td>
	<c:out value="${lang.assignedto}"/>		
				</td>
				<td>
	${lang.description}	
				</td>
				<td>
	<c:out value="${lang.tickets}"/>		
				</td>
				
				</tr>
				</tbody>
				</c:forEach>
</table>
<br>

<em>The Above Table Show The Details <b>"${v}"</b> </em>
<h4> for change and update </h4>
<div class="container">
 <form action ="change-one">

            Select option to change <select name = "userchange" required>
            <option value = "" selected></option>
            <option value = "contact">contact</option>
            <option value = "subject">subject</option>
            <option value = "status">status</option>
            <option value = "priority">priority</option>
            <option value = "assignedto">assignedto</option>
            <option value = "groupname">groupname</option>
            <option value = "description">description</option>
         </select>
         <br>
         data *<input type = "text" name = "data" required>
         
         
         
         
   
         
         to contact* <input type = "text" name = "to" required>
         
<button type ="submit"class="mbtn" >update </button>


</form>
</div>
<div class="container">
<form action ="ticket-setting-delete">  
<h4>Remove the Tickets *</h4>  
        Enter Ticket : <input type = "text" name = "tickets" required value =TIC>
       
       <button type ="submit"class="mbtn" >delete </button>    
     
</form>
</div>
</body>
</html>