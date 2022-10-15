package root.filters;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import load_on_startup.ConnectionProvider;

public class OldPatientLoginSuccessFilter implements Filter {
	FilterConfig config;

	public void init(FilterConfig config) throws ServletException {
		this.config = config;
	}

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws ServletException, IOException {

		String loginErrorMsg = "ERROR: Your UHID or/and Mobile No. do not match.";

		HttpServletRequest reqq = (HttpServletRequest) req;
		HttpSession session = reqq.getSession(false);

		if (session != null) {
			chain.doFilter(req, res);
		} else {
			try {
				String uhid = req.getParameter("uhid").trim();
				String mobile_no = req.getParameter("mobile_no");

				try {
					Connection c = ConnectionProvider.getConn();
					PreparedStatement ps = c.prepareStatement("select * from old_patient where uhid=? and mobile_no=?");
					ps.setString(1, uhid);
					ps.setString(2, mobile_no);
					ResultSet rs = ps.executeQuery();

					if (rs.next()) {
						String name = rs.getString("name");

						session = reqq.getSession();
						session.setAttribute("patientUsername", uhid);
						session.setAttribute("patientName", name);

						//res.getWriter().println("name: " + name);
						chain.doFilter(req, res);
					} else {
						RequestDispatcher rd = req
								.getRequestDispatcher("/oldPatientLogin.jsp?loginErrorMsg=" + loginErrorMsg);
						rd.forward(req, res);
					}
				} catch (SQLException e) {
					System.out.println(e);
					req.getRequestDispatcher("/oldPatientLogin.jsp").forward(req, res);
				}
			} catch (NullPointerException e) {
				req.getRequestDispatcher("/oldPatientLogin.jsp").forward(req, res);
			}
		}

	}

	public void destroy() {
	}
}
