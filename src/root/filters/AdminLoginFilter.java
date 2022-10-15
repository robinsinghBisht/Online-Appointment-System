package root.filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class AdminLoginFilter  implements Filter {
	FilterConfig config;

	public void init(FilterConfig config) throws ServletException {
		this.config = config;
	}

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws ServletException, IOException {

		HttpServletRequest reqq = (HttpServletRequest) req;
		HttpSession s = reqq.getSession(false);

		if (s!=null) {
			RequestDispatcher rd = req.getRequestDispatcher("/___adminLoginSuccess___.jsp");
			rd.forward(req, res);
		}
		else
		chain.doFilter(req, res);

	}

	public void destroy() {
	}
}
