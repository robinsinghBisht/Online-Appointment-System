package root.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import load_on_startup.ConnectionProvider;

@SuppressWarnings("serial") // suppressing eclipse warning
@WebServlet(name = "PatientAppointmentDelete", urlPatterns = { "/patientAppointmentDelete" }) // mapping via annotation

public class PatientAppointmentDelete extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		try
		  {
		   int s_no=Integer.parseInt(req.getParameter("s_no"));
		   Connection conn=ConnectionProvider.getConn();
		   PreparedStatement ps=conn.prepareStatement("delete from appointments where s_no=?");
		   ps.setInt(1,s_no);
		   ps.executeUpdate();
		   req.getRequestDispatcher("/patientAppointmentAnalysis.jsp").forward(req, res);
		  }
		   catch(Exception e)
		   {
		    System.out.println(e);
		   }
		
	}

}
