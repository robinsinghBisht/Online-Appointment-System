package root.filters;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import load_on_startup.ConnectionProvider;

public class PatientUploadImageFilter implements Filter {
	FilterConfig config;

	public void init(FilterConfig config) throws ServletException {
		this.config = config;
	}

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws ServletException, IOException {
		
		String usernameMsg="ERROR: Username exist, choose another one.";
		String passwordMsg="ERROR: Password must be same as above password.";
		String selectAgain="NOTE: Select again.";
		String securityAnsMsg="NOTE: Enter security answer again.";
try
{
		String username=req.getParameter("username").trim();
		String name=req.getParameter("name");
		String sex=req.getParameter("sex");
		String email=req.getParameter("email").trim();
		String password=req.getParameter("password").trim();
		String repassword=req.getParameter("repassword").trim();
		String address=req.getParameter("address");
		String city=req.getParameter("city");
		String mobile_no=req.getParameter("mobile_no");
		String url="?selectAgain="+selectAgain+"&securityAnsMsg="+securityAnsMsg+"&username="+username+"&name="+name+"&sex="+sex+"&email="+email+"&address="+address+"&city="+city+"&mobile_no="+mobile_no;
		

		
		if(password.equals(repassword) && !password.equals(""))
		{
			try
			{
				Connection c=ConnectionProvider.getConn();
				PreparedStatement ps=c.prepareStatement("select * from patient where username=?");
				ps.setString(1,username);
				ResultSet rs=ps.executeQuery();

				if(!rs.next())
				{
					chain.doFilter(req, res);
				}
				else
				{
					req.getRequestDispatcher("/patientSignUp.jsp"+url+"&usernameMsg="+usernameMsg).forward(req,res);
				}
			}
			catch(Exception e)
			{
				System.out.println(e);
				req.getRequestDispatcher("/patientSignUp.jsp").forward(req,res);
			}
		}
		else
		{
			req.getRequestDispatcher("/patientSignUp.jsp"+url+"&passwordMsg="+passwordMsg).forward(req,res);
		}
}
catch(NullPointerException e)
{
	req.getRequestDispatcher("/patientSignUp.jsp").forward(req,res);
}

	
}

	public void destroy() {
	}
}
