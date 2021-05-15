<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>contact</title>
</head>
<body>

<body style ="background-color:bisque;">
 <form>        
  <button type ="submit" formaction="/" class ="btn"style ="float:right">log out</button>
  </form>  
  <br>
  <br>  


<form action ="/cf">
<h5><mark> NEW CONTACT CREATION</mark></h5>
<em>click new ticket button for new contact creation  :</em><input type ="submit" value ="CONTACT"/>
<h6>.....................................................................................................................................</h6>
</form>


<form action ="/contact-table">


<h5> <mark>DISPLAY CONTACTS</mark>></h5>
<em>click to display</em><input type ="submit" value =" SHOW "/>
<h6>.....................................................................................................................................</h6>

</form>


<form action ="/contact-export">
<h5> <mark>EXPORT CONTACTS</mark>></h5>
<em>click to export contact</em><input type ="submit" value =" EXPORT "/>
<h6>.....................................................................................................................................</h6>

</form>
<form action ="/ci">

<h5> <mark>IMPORT CONTACTS</mark>></h5>
<em>click to import contact</em><input type ="submit" value =" IMPORT "/>
<h6>.....................................................................................................................................</h6>


</form>


</body>
</html>