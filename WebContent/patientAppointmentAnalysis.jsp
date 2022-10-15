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
<%!
Connection conn;
ResultSet rs;
String patientUsername;

%>
<%
int count=0;
patientUsername=(String)session.getAttribute("patientUsername");
try{
Statement stmt = conn.createStatement();
rs = stmt.executeQuery("SELECT COUNT(*) AS total FROM Appointments where patient_username='"+patientUsername+"'");
    while(rs.next()){
    count = rs.getInt("total");
    }
}
catch(Exception e){}
%>
<h2>Appointment Analysis - (<%=count%> appointment found)</h2>
<form method='post' id='form'>
<table class="bordered">
    <thead>
    <tr>
    	<th>Appointment ID</th>
    	<th>Illness Declared</th>
        <th>Booked For</th>        
        <th>Time Slot</th>
        <th>Doctor ID</th>
        <th>Delete</th>
    </tr>
    </thead>
    
<%
try
{ 
   conn=load_on_startup.ConnectionProvider.getConn();
   PreparedStatement ps=conn.prepareStatement("select * from appointments where patient_username=? order by s_no asc");
   ps.setString(1,patientUsername);
   
   rs=ps.executeQuery();
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
   		<td><%=rs.getInt("S_NO")%></td>
   		<td><%=illness%></td>
   		<td><%=dateText%></td>
        <td><%=rs.getString("TIME_SLOT")%></td>
        <td><%=rs.getString("DOCTOR_ID")%></td>
        <td><input type="image" src="images/icn_trash.png" id="<%=rs.getString("S_NO")%>" onclick="datadelete(this.id)"/></td>
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
<script type="text/javascript">
function datadelete(s_no)
{
    form.action='patientAppointmentDelete?s_no='+s_no;
    form.submit();
}
</script>
</body>
</html>
