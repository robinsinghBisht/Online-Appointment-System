<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page session="false" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Operation</title>
    <link rel="stylesheet" type="text/css" href="css/style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/demo.css" media="all" />
    <style>
body
{
	background:url(images/bgnoise_lg.png);
}
</style>
</head>
<body>
<div id="msgbyrobin" class="clear">
      <!-- ####################################################################################################### -->
      <div class="clear">
        <div class="one_half first">
          <h1>${param.successMsg}</h1><br><br><br>
        </div>
        <div class="one_half">
          <h2>${param.successMsg1}</h2>
        </div>
      </div>
      <div class="divider2"></div>
      <p class="notice">${param.successMsg2}</p>
      <p class="notice">&copy; Online Appointment System 2018</p>
      <p class="clear"><a class="fl_left" href="javascript:history.go(-1)"><span style="color:#800000;">« Go Back</span></a>
      <!-- ####################################################################################################### -->
 </div>
</body>
</html>