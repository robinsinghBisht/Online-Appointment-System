package root.servlets.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import load_on_startup.ConnectionProvider;

@SuppressWarnings("serial")
@WebServlet(name = "PatientAppointmentSlots", urlPatterns = { "/patientAppointmentSlots" }) // mapping via annotation

public class PatientAppointmentSlots extends HttpServlet {
	static PrintWriter out;
	@SuppressWarnings({"rawtypes" })
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
				
		res.setContentType("text/html");
		out=res.getWriter();
		
		String doctor_id=req.getParameter("doctor_id");
		String booked_for=req.getParameter("booked_for");
		if(doctor_id.equals(""))
		{
			out.println("<p>~ Check input values you've entered!<br>~ Select doctor & specialty first!</p><br>");
			return;
		}
		LinkedHashMap lhm=(LinkedHashMap)getServletContext().getAttribute("timeSlots");
		checkToDB(lhm,Integer.parseInt(doctor_id),booked_for);
	}
	
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static void checkToDB(LinkedHashMap hm, int id, String date)
	{
		try
		{
			Connection c=ConnectionProvider.getConn();
			
			PreparedStatement ps;
			ResultSet rs;

			Date myDate = new SimpleDateFormat("yyyy-MM-dd").parse(date);
			java.sql.Date mySqlDate = new java.sql.Date(myDate.getTime());

			
			Set s=hm.entrySet();
			Iterator<Map.Entry> i=s.iterator();

			while(i.hasNext())
			{
				Map.Entry e=i.next();
				String k=(String)e.getKey();
			//String v=(String)e.getValue();
			//System.out.println(k+"="+v);

				
				ps = c.prepareStatement("select * from appointments where booked_for=? and time_slot=? and doctor_id=?");
				ps.setDate(1,mySqlDate);
				ps.setString(2,k);
				ps.setInt(3,id);
				rs=ps.executeQuery();

				if(rs.next())
					hm.put(k,"booked");
				else
					hm.put(k,"non-booked");

			}

		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		//out.println("\n\nHTML Code:\n\n");
		generateHTML(hm,date);
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static void generateHTML(LinkedHashMap hm, String booked_for)
	{
		int c=1;
		
		out.println("<p class=\"insertion\"><label for=\"description\">Time Slots</label></p>");
		
		out.println("<table class=\"rwd-table\">");

		Set s=hm.entrySet();
		Iterator<Map.Entry> i=s.iterator();

		String k,v;
String currDate=currDate();		
		
while(i.hasNext())
{
			Map.Entry e=i.next();
			k=(String)e.getKey();
			v=(String)e.getValue();
			//System.out.println("curr: "+currDate()+"\nbook: "+booked_for);
if(booked_for.equals(currDate)){
if(compareTime(currentTime(),k))
{
			if(c==1)
				out.println("<tr>");

			if(v.equals("booked"))
				out.println("<td style=\"background: #940000;\">"+k+"</td>");
			else
				out.println("<td style=\"cursor: pointer;\" onclick=\"setSlot('"+k+"')\" >"+k+"</td>");
			


			if(c==4)
			{
				out.println("</tr>");
				c=1;
				continue;
			}
			c++;

}
else if(isCurrentTimeInRange()){
	continue;
}
else{
	out.println("<p>~ No slots available!<br>~ Last booking time slot is of 20:45 - 21:00.</p><br>");
return;}

}
else
{
		if(c==1)
				out.println("<tr>");

			if(v.equals("booked"))
				out.println("<td style=\"background: #940000;\">"+k+"</td>");
			else
				out.println("<td style=\"cursor: pointer;\" onclick=\"setSlot('"+k+"')\" >"+k+"</td>");
			


			if(c==4)
			{
				out.println("</tr>");
				c=1;
				continue;
			}
			c++;
}
		}

			out.println("</table>");
			out.println("<p>&larr; Select any time slot, RED colored slots are already booked. &rarr;</p><br><br>");
		}


	public static boolean compareTime(String currTime, String slot)
	{
		String c1[]=currTime.split(":");
		int c1i1=Integer.parseInt(c1[0]);
		int c1i2=Integer.parseInt(c1[1]);

		String c2[]=slot.split("\\W");
		int c2i1=Integer.parseInt(c2[0]);
		int c2i2=Integer.parseInt(c2[1]);
		
		//System.out.println("c1i1: "+c1i1+" c1i2: "+c1i2);
		//System.out.println("c2i1: "+c2i1+" c2i2: "+c2i2);
		
		if(c1i1<c2i1)
			return true;
		else if(c1i1==c2i1 && c1i2<=c2i2)
			return true;
		else
			return false;
	}

	public static String currentTime()
	{
		Date date=new Date(System.currentTimeMillis());
		SimpleDateFormat df2 = new SimpleDateFormat("HH:mm");
		String dateText = df2.format(date);
		return dateText;
	}
	
	public static String currDate()
	{
		Date date=new Date(System.currentTimeMillis());
		SimpleDateFormat df2 = new SimpleDateFormat("yyyy-MM-dd");
		return df2.format(date);
	}
	
	public static boolean isCurrentTimeInRange()
	{
		String c1[]=currentTime().split(":");
		int c1i1=Integer.parseInt(c1[0]);
		
		if(c1i1>=10 && c1i1<=21)
			return true;
		else
			return false;
	}
}