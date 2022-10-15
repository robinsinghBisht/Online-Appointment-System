<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
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

<body>
<h2>All Appointments</h2>
<form method='post' id='form'>
<table class="bordered">
    <thead>
    <tr>
        <th>Booked For</th>  
    	<th>Appointment ID</th>
    	<th>Illness Declared</th>      
        <th>Time Slot</th>
        <th>UHID/Username</th>
        <th>Doctor ID</th>
    </tr>
    </thead>
    
<%
try
{ 
   Connection conn=load_on_startup.ConnectionProvider.getConn();
   PreparedStatement ps=conn.prepareStatement("select * from appointments order by BOOKED_FOR asc");
   
   ResultSet rs=ps.executeQuery();
   while(rs.next())
   {
   Date bookedDate = new SimpleDateFormat("yyyy-MM-dd").parse(rs.getString("BOOKED_FOR"));
   SimpleDateFormat df2 = new SimpleDateFormat("EEEE, dd MMMM yyyy");
   String dateText = df2.format(bookedDate);
   String illness=rs.getString("ILLNESS");
   if(illness==null)
   illness="-";
   %>
   <tr>
   		<td><%=dateText%></td>
   		<td><%=rs.getInt("S_NO")%></td>
   		<td><%=illness%></td>
        <td><%=rs.getString("TIME_SLOT")%></td>
        <td><%=rs.getString("PATIENT_USERNAME")%></td>
        <td><%=rs.getString("DOCTOR_ID")%></td>
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
