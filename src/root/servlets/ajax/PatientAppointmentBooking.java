package root.servlets.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import load_on_startup.ConnectionProvider;

@SuppressWarnings("serial")
@WebServlet(name = "PatientAppointmentBooking", urlPatterns = { "/patientAppointmentBooking" }) // mapping via annotation

public class PatientAppointmentBooking extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		
		res.setContentType("text/xml");
		PrintWriter out=res.getWriter();
		
		try
		{
		String details=req.getParameter("details");
		Connection c=ConnectionProvider.getConn();
		Statement s;
		ResultSet rs;
		String sql;


		if(details.equals(""))
		{
			s=c.createStatement();
			sql="SELECT DISTINCT specialty FROM doctor order by specialty asc";
			rs=s.executeQuery(sql);

			out.println("<doctor>");
			while(rs.next())
			{
				out.println("<speciality>");
				out.println("<speciality-name>"+rs.getString(1)+"</speciality-name>");
				out.println("</speciality>");
			}
			out.println("</doctor>");
		}
		else
		{
			s=c.createStatement();
			sql="select id,name from doctor where specialty='"+details+"'";
			rs=s.executeQuery(sql);

			out.println("<doctors>");
			while(rs.next())
			{
				out.println("<doctor>");
				out.println("<doctor-id>"+rs.getString(1)+"</doctor-id>");
				out.println("<doctor-name>"+rs.getString(2)+"</doctor-name>");
				out.println("</doctor>");
			}
			out.println("</doctors>");
		}



		rs.close();
		s.close();
		c.close();
		}
		catch(Exception e)
		{
		out.println(e);
		}
	}
}