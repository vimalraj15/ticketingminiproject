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

body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}



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
<title>tickets</title>
</head>
<body> 
<div class="center">
     ${v}
</div>
 
<form> 
  <button type ="submit" formaction="/" class="loginbtn"style ="float:right">log out</button>
</form>
<div>
<form action ="/mc">
 <label for="uname"><b>Search Tickets</b></label>
    <input type="text"  id="tickets"  placeholder="Enter tickets" name="tickets" >
     <button type="submit" class="mbtn">Search</button>
</form>
</div> 

<table>
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
	<form action ="/b">
    <label for="uname"><b>Export Tickets</b></label>
     <button type="submit" class="mbtn">Export</button>     
    </form>  
</body>

</html>