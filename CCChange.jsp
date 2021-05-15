<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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

.mbtn {
  width: auto;
  text-align: center;
  padding: 10px 15px;
  background-color:  #307D7E;
}

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<form>        
  <button type ="submit" formaction="/" class="loginbtn"style ="float:right">log out</button>
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
<em>THE ABOVE TABLE SHOW THE DETAILS</em>
<h4>change or update the particular value</h4>
<div class="container">
 <form action ="change-two">

            Select option to change <select name = "userchange" required>
            <option value = "" selected></option>
            <option value = "contact">contact</option>
            <option value = "company">company</option>
            <option value = "mailid">mailid</option>
            <option value = "phoneno">phoneno</option>
            <option value = "facebook">facebook</option>
            <option value = "twitter">twitter</option>
         </select>
         <br>
          data *<input type = "text" name = "data" required>
         to contact* <input type = "text" name = "to" required>
         
<button type ="submit"class="mbtn" >update </button>


</form>
</div>
</body>

</html>