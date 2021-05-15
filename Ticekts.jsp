

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>tickets</title>
</head>
<body>
 <form>        
  <button type ="submit" formaction="/" class ="btn"style ="float:right">log out</button>
  </form>  
  <br>
  <br>  


<body style ="background-color:bisque;">
<form action ="/t">
<h5><mark> NEW TICKET CREATION</mark></h5>
<em>click new ticket button for new ticket creation  :</em><input type ="submit" value ="TICKET"/>
<h6>.....................................................................................................................................</h6>
</form>


<form action ="/a">


<h5> <mark>DISPLAY TICKETS</mark>></h5>
<em>click to display</em><input type ="submit" value ="SHOW"/>
<h6>.....................................................................................................................................</h6>

</form>

<form action ="/y">


<h5> <mark>CHANGE ASSIGNED TICKETS</mark>></h5>

<em>click to change</em><input type ="submit" value ="CHANGE"/>
<h6>.....................................................................................................................................</h6>

</form>





<form action ="/b">


<h5> <mark>EXPORT TICKETS</mark>></h5>
<em>click to display</em><input type ="submit" value ="EXPORT"/>
<h6>.....................................................................................................................................</h6>


</form>



</body>
</html>