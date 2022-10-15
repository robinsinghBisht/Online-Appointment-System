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

public class PatientLoginSuccessFilter implements Filter {
	FilterConfig config;

	public void init(FilterConfig config) throws ServletException {
		this.config = config;
	}

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws ServletException, IOException {

		String loginErrorMsg = "ERROR: Your username or/and password do not match.";

		HttpServletRequest reqq = (HttpServletRequest) req;
		HttpSession session = reqq.getSession(false);

		if (session != null) {
			chain.doFilter(req, res);
		} else {
			try {
				String username = req.getParameter("username").trim();
				String password = req.getParameter("password");

				try {
					Connection c = ConnectionProvider.getConn();
					PreparedStatement ps = c.prepareStatement("select * from patient where username=? and password=?");
					ps.setString(1, username);
					ps.setString(2, password);
					ResultSet rs = ps.executeQuery();

					if (rs.next()) {
						String name = rs.getString("name");

						session = reqq.getSession();
						session.setAttribute("patientUsername", username);
						session.setAttribute("patientName", name);

						//res.getWriter().println("name: " + name);
						chain.doFilter(req, res);
					} else {
						RequestDispatcher rd = req
								.getRequestDispatcher("/patientLogin.jsp?loginErrorMsg=" + loginErrorMsg);
						rd.forward(req, res);
					}
				} catch (SQLException e) {
					System.out.println(e);
					req.getRequestDispatcher("/patientLogin.jsp").forward(req, res);
				}
			} catch (NullPointerException e) {
				req.getRequestDispatcher("/patientLogin.jsp").forward(req, res);
			}
		}

	}

	public void destroy() {
	}
}
