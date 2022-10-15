<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page session="false" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Profile Picture</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<link rel="stylesheet" media="screen" href="css/preimagebyrobin.css">
<style>
.row input.buttom{ background: #4b8df9; display: inline-block; padding: 5px 10px 6px; color: #fbf7f7; text-decoration: none; font-weight: bold; line-height: 1; -moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius: 5px; -moz-box-shadow: 0 1px 3px #999; -webkit-box-shadow: 0 1px 3px #999; box-shadow: 0 1px 3px #999; text-shadow: 0 -1px 1px #222; border: none; position: relative; cursor: pointer; font-size: 14px; font-family:Verdana, Geneva, sans-serif;}
.row input.buttom:hover	{ background-color: #2a78f6; }
body
{
	background:url(images/bgnoise_lg.png);
}

.container > header{
	padding: 20px 30px 20px 30px;
	margin: 0px 20px 10px 20px;
	position: relative;
	display: block;
	text-shadow: 1px 1px 1px rgba(0,0,0,0.2);
    text-align: center;
}
.container > header h1{
	position: relative;
	color: #498ea5;
	font-weight: 700;
	font-style: normal;
	font-size: 30px;
	padding: 0px 0px 5px 0px;
	text-shadow: 0px 1px 1px rgba(255,255,255,0.8);
	}
	
	header{
	display: block;
}

</style>
</head>
<body>
<center>
<div class="container">
			<header>
				<%--<h1>Online Appointment System</h1>--%>
            </header> 
</div>
<form action="patientSignUpCompleted.jsp?username=${param.username}&name=${param.name}&sex=${param.sex}&email=${param.email}&password=${param.password}&securityques=${param.securityques}&securityans=${param.securityans}&address=${param.address}&city=${param.city}&mobile_no=${param.mobile_no}" method="post" enctype="multipart/form-data">
    <div class="row" align="left">
        <div class="file-preview"></div><br/>
        <label for="file-input">Select a Profile Picture:<br/><br/><span style="color:#ff0000;">Note: Best if resolution like ZxZ e.g. 128x128</span></label><br/><br/><br/>
        <input id="file-input" type="file" name="file" required value="" accept="image/*"><br/><br/>
        <input type="submit" value="Upload!" class="buttom" name="submit" id="submit"/>
    </div>
</form>
</center>

<script type="text/javascript">
    $('input[type=file]').change(function(e) {
        if(typeof FileReader == "undefined") return true;

        var elem = $(this);
        var files = e.target.files;

        for (var i = 0, f; f = files[i]; i++) {
            if (f.type.match('image.*')) {
                var reader = new FileReader();
                reader.onload = (function(theFile) {
                    return function(e) {
                        var image = e.target.result;
                        previewDiv = $('.file-preview', elem.parent());
                        bg_width = previewDiv.width() * 1;
                        previewDiv.css({
                            "background-size":"auto 100%",
                            "background-position":"50%, 50%",
                            "background-image":"url("+image+")",
                            "background-repeat": "no-repeat",
                            
                        });
                    };
                })(f);
                reader.readAsDataURL(f);
            }
        }
    });
</script>

</body>
</html>