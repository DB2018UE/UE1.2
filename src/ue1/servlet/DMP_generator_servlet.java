package ue1.servlet;

import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DMP_generator_servlet
 */
@WebServlet("/DMP_generator_servlet")
public class DMP_generator_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		forward("/metadata.jsp", request, response);
		return;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		resp.setCharacterEncoding("UTF-8");
    	
		if (req.getParameter("ORCIDname") != null) {
			lookupName(req, resp);
			return;
		}
		
		forward("/metadata.jsp", req, resp);
		return;
	}
	
	protected void lookupName(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		forward("/metadata.jsp", req, resp);
	}
	
	protected void forward(String to, ServletRequest req, ServletResponse resp) throws ServletException, IOException {
		getServletContext().getRequestDispatcher(to).forward(req, resp);
	}

}
