package root.filters;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import load_on_startup.ConnectionProvider;

public class AdminChangePasswordCompletedFilter implements Filter {
	FilterConfig config;

	public void init(FilterConfig config) throws ServletException {
		this.config = config;
	}

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws ServletException, IOException {
		String passwordMsg="ERROR: Password did not match.";
try
{
	HttpServletRequest reqq = (HttpServletRequest) req;
	HttpSession session = reqq.getSession(false);


			String username = (String)session.getAttribute("adminUsername");

		String password=req.getParameter("password").trim();
		String repassword=req.getParameter("repassword").trim();
		String currpassword=req.getParameter("currpassword").trim();
		String url="?passwordMsg="+passwordMsg;
		
			try
			{
				Connection c=ConnectionProvider.getConn();
				PreparedStatement ps=c.prepareStatement("select * from admin where username=? and password=?");
				ps.setString(1,username);
				ps.setString(2,currpassword);
				ResultSet rs=ps.executeQuery();

				if(rs.next() && password.equals(repassword))
				{
					chain.doFilter(req, res);
				}
				else
				{
					req.getRequestDispatcher("/adminChangePassword.jsp"+url).forward(req,res);
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
				req.getRequestDispatcher("/patientChangePassword.jsp").forward(req,res);
			}
		
}
catch(NullPointerException e)
{
	req.getRequestDispatcher("/patientChangePassword.jsp").forward(req,res);
}

	}

	public void destroy() {
	}

}
