<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page session="false"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact's Details Saved</title>
</head>
<body>

<jsp:useBean id="contact" class="root.beans.TellUsCompletedBean"/>
<jsp:setProperty name="contact" property="*"/>
<%
if(contact.saveContactData())
request.getRequestDispatcher("/errorMsg.jsp?successMsg=Succeed&successMsg1=Thank You.&successMsg2=Details Saved Successfully.").forward(request, response);
else
request.getRequestDispatcher("/errorMsg.jsp?successMsg=Failed&successMsg1=There's a problem while saving details.").forward(request, response);
%>
</body>
</html>