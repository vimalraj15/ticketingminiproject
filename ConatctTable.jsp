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
.mbtn {
  width: auto;
  text-align: center;
  padding: 10px 15px;
  background-color: #307D7E;
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
</style>
<title>contacts</title>
</head>
<body>
<div class="center">
  ${b}
</div>
<form>        
  <button type ="submit" formaction="/" class="loginbtn"style ="float:right">log out</button>
</form>
 
<form action ="/yl">
 <label for="uname"><b>Search Contacts</b></label>
    <input type="text"  id="contact"  placeholder="Enter contact" name="contact" >
     <button type="submit" class="mbtn">Search</button>
</form>
    
<table >
<tr>
   <th>contact</th>
   <th>company</th>
   <th>mailid</th>
   <th>phoneno</th>
   <th>facebook</th>
   <th>twitter</th>
</tr>

<c:forEach var="lang" items="${vimal}">
     <tr>   		
				<tbody>
				<tr>
				<td>
	<c:out value="${lang.contact}"/>		
				</td>
				<td>
	<c:out value="${lang.company}"/>		
				</td>
				<td>
	<c:out value="${lang.mailid}"/>		
				</td>
				<td>
	<c:out value="${lang.phoneno}"/>		
				</td>
				<td>
	<c:out value="${lang.facebook}"/>		
				</td>
				<td>
	<c:out value="${lang.twitter}"/>		
				</td>
				</tr>
				</tbody>
				</c:forEach> 
</table>
<br>
<br>
<form action ="/contact-export">
     <label for="uname"><b>Export contacts</b></label>
     <button type="submit" class="mbtn">Export</button>     
    </form>  

</body>
</html>