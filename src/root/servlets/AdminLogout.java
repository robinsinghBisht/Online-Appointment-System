package root.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet(name = "AdminLogout", urlPatterns = { "/adminLogout" }) // mapping via annotation

public class AdminLogout extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		
		HttpServletRequest reqq = (HttpServletRequest) req;
		HttpSession session = reqq.getSession(false);

		if (session != null)
		{
			String logoutSuccessMsg = "You have successfully logged out.";
			session.invalidate();
			
			req.getRequestDispatcher("/___adminLogin___.jsp?logoutSuccessMsg=" + logoutSuccessMsg).forward(req, res);
		}
		else
		{
			String loginErrorMsg = "ERROR: Please, Login first.";			
			req.getRequestDispatcher("/___adminLogin___.jsp?loginErrorMsg=" + loginErrorMsg).forward(req, res);
		}
	}
}