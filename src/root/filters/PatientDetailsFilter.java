package root.filters;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import load_on_startup.ConnectionProvider;

public class PatientDetailsFilter implements Filter {
	FilterConfig config;

	public void init(FilterConfig config) throws ServletException {
		this.config = config;
	}

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws ServletException, IOException {


		HttpServletRequest reqq = (HttpServletRequest) req;
		HttpSession session = reqq.getSession(false);

	
				String username = (String)session.getAttribute("patientUsername");

				try {
					Connection c = ConnectionProvider.getConn();
					PreparedStatement ps = c.prepareStatement("select * from patient where username=?");
					ps.setString(1, username);
					ResultSet rs = ps.executeQuery();
						
					if(rs.next()){
						session.setAttribute("patientName",rs.getString("NAME"));
						session.setAttribute("patientSex",rs.getString("SEX"));
						session.setAttribute("patientEmail",rs.getString("EMAIL"));
						session.setAttribute("patientSecurityQues",rs.getString("SECURITYQUES"));
						session.setAttribute("patientSecurityAns",rs.getString("SECURITYANS"));
						session.setAttribute("patientAddress",rs.getString("ADDRESS"));
						session.setAttribute("patientCity",rs.getString("CITY"));
						session.setAttribute("patientMobile_no",rs.getString("MOBILE_NO"));
					}
						//res.getWriter().println("name: " + name);
						chain.doFilter(req, res);
					
				} catch (SQLException e) {
					System.out.println(e);
				}
	}

	public void destroy() {
	}
}
