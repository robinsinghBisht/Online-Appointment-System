<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page session="true" %>
<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-Equiv="Cache-Control" Content="no-cache">
<meta http-Equiv="Pragma" Content="no-cache">
<meta http-Equiv="Expires" Content="0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Appointment Analysis</title>
<link rel="stylesheet" type="text/css" href="css/tables.css" media="all" />
<style>
body
{
	background:url(images/bgnoise_lg.png);
}
</style>
</head>
<% 
String regarding=request.getParameter("regarding"); 
%>
<body>
<h2><%=regarding%> List</h2>
<form method='post' id='form'>
<table class="bordered">
    <thead>
    <tr>
    	<th>Name</th>
    	<th>Email</th> 
        <th>Subject</th>
        <th>Message</th>
    </tr>
    </thead>
    
<%
try
{    
   Connection conn=load_on_startup.ConnectionProvider.getConn();
   PreparedStatement ps=conn.prepareStatement("select * from contact where regarding=?");
   ps.setString(1,regarding);
   
   ResultSet rs=ps.executeQuery();
   while(rs.next())
   {
   %>
   <tr>
   		<td><%=rs.getString("NAME")%></td>
   		<td><%=rs.getString("EMAIL")%></td>
        <td><%=rs.getString("SUBJECT")%></td>
        <td><%=rs.getString("MESSAGE")%></td>
    </tr> 
   <%
   }
}
catch(Exception e)
{
}
%>         
</table>
</form>
</body>
</html>
