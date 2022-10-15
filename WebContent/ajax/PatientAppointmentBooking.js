function getXMLHttpRequest()
{
	var xmlhttp;
	if(window.XMLHttpRequest)
	{
	//for IE7+ and others
	xmlhttp=new XMLHttpRequest();
	}
	else
	{
	//for IE5, IE6
	xmlhttp=new ActiveXObject("Microsoft.XMLHttp");
	}
	return xmlhttp;
}


function testTextAndValue()
{
	alert("Text: " + document.myform.selectDoctor.options[1].text);
	alert("\nValue: " + document.myform.selectDoctor.options[1].value);
}




//getting available doctor specialty

function loadXMLDoc()
{
var xmlhttp=getXMLHttpRequest();
var url="patientAppointmentBooking?details=";

xmlhttp.onreadystatechange=function()
{
	//alert(xmlhttp.readyState);
if(xmlhttp.readyState==4)// && xmlhttp.status==200)
{
var roott=xmlhttp.responseXML;
var ress=roott.getElementsByTagName("speciality");

for(var i=0;i<ress.length;i++)
{
var ress2=ress[i].getElementsByTagName('speciality-name')[0].firstChild.nodeValue;
addOptions(ress2);
}
//xmlhttp.responseXML=null;
}

function addOptions(result)
{
	var ct1=document.createElement("option");
	ct1.text=result;
	ct1.value=result;
	document.myform.selectSpecialty.options.add(ct1);
}
}
xmlhttp.open("GET",url,true);
xmlhttp.send();
}



//getting doctor name

function loadXMLDoc2()
{
var xmlhttp=getXMLHttpRequest();
var keys=document.myform.selectSpecialty.value;
var url="patientAppointmentBooking?details="+keys;

xmlhttp.onreadystatechange=function()
{
	//alert(xmlhttp.readyState);
if(xmlhttp.readyState==4)// && xmlhttp.status==200)
{
var roott=xmlhttp.responseXML;
var ress=roott.getElementsByTagName("doctor");

removeOptions();

for(var i=0;i<ress.length;i++)
{
var ress2=ress[i].getElementsByTagName('doctor-name')[0].firstChild.nodeValue;
var doctID=ress[i].getElementsByTagName('doctor-id')[0].firstChild.nodeValue;
addOptions(ress2,doctID);
}

}

function addOptions(result,doctID)
{
	var ct1=document.createElement("option");
	ct1.text=result;
	ct1.value=doctID;
	document.myform.selectDoctor.options.add(ct1);
}

function removeOptions()
{
    for(var i=document.myform.selectDoctor.options.length-1;i>0;i--)
    {
        document.myform.selectDoctor.remove(i);
    }
}

}
xmlhttp.open("GET",url,true);
xmlhttp.send();
}




//showTimeSlots()
function showTimeSlots(timeSlot)
{	
	document.getElementById("timeSlotsTable").innerHTML="<p>Processing...</p><br>";
	
var xmlhttp=getXMLHttpRequest();
var doctor_id=document.myform.selectDoctor.value;
//var booked_for=document.myform.booked_for.value;
var booked_for=timeSlot;
//alert(doctor_id+" : "+booked_for);
var url="patientAppointmentSlots?doctor_id="+doctor_id+"&booked_for="+booked_for;

xmlhttp.onreadystatechange=function()
{
	//alert(xmlhttp.readyState);
	if(xmlhttp.readyState==4)// && xmlhttp.status==200)
	{
		document.getElementById("timeSlotsTable").innerHTML=xmlhttp.responseText;
	}
}
xmlhttp.open("GET",url,true);
xmlhttp.send();
}