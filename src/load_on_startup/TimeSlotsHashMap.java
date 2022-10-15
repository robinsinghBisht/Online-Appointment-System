package load_on_startup;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashMap; //using LinkedHashMap to maintain insertion order.

@SuppressWarnings("serial")
public class TimeSlotsHashMap extends HttpServlet
{
	public void init(ServletConfig sc) throws ServletException
	{
	ServletContext ctx=sc.getServletContext();
	String time_slot=ctx.getInitParameter("time_slot");
	int timeSlot=Integer.parseInt(time_slot);
	
	LinkedHashMap<String,String> hm=new LinkedHashMap<String,String>();
	
	long startTime=1462077000000L; //10:00 AM
	long slot=1000*60*timeSlot;
	long afterSlotTime;

	String dateText1, dateText2="";
	String result;
	while(!dateText2.equals("21:00"))
	{
		Date dateCurr=new Date(startTime);
		SimpleDateFormat df2 = new SimpleDateFormat("HH:mm");
		dateText1 = df2.format(dateCurr);
		//System.out.print(dateText1+"-");
		result=dateText1+" - ";


		afterSlotTime = startTime + slot;
		Date dateAfter=new Date(afterSlotTime);
		df2 = new SimpleDateFormat("HH:mm");
		dateText2 = df2.format(dateAfter);
		//System.out.println(dateText2);

		startTime=afterSlotTime;

		result+=dateText2;
		//System.out.println(result);
		hm.put(result,""); //adding values to LinkedHashMap
	}

	ctx.setAttribute("timeSlots",hm); //add to context
	//System.out.println(hm);
	}
}
