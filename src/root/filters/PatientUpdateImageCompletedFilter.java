package root.filters;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import java.io.IOException;

import com.oreilly.servlet.MultipartRequest;

public class PatientUpdateImageCompletedFilter implements Filter {
	FilterConfig config;

	public void init(FilterConfig config) throws ServletException {
		this.config = config;
	}

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws ServletException, IOException {
		try {
			String path = req.getServletContext().getRealPath("temp_image");
			HttpServletRequest reqq = (HttpServletRequest) req;
			MultipartRequest mpr = new MultipartRequest(reqq, path, 50 * 1024 * 1024);
			String fileName = mpr.getOriginalFileName("file");
			String imagePath = path + "/" + fileName;

			req.setAttribute("imagePath", imagePath);

			// res.getWriter().println(req.getParameter("username")+" from
			// filter<br>");
			chain.doFilter(req, res);
		} catch (Exception e) {
			req.getRequestDispatcher("/patientLoginSuccess.jsp").forward(req, res);
		}
	}

	public void destroy() {
	}

}
