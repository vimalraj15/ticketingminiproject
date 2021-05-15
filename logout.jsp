<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

 response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); 
 response.setHeader("progma","no-cache");
 response.setHeader("Expires","0");
 
 if(session.getAttribute("mails")==null)
	 response.sendRedirect("/");
%>

    <h2>Logout</h2>
    <a href="/"> click here to go login page</a>

</body>
</html>