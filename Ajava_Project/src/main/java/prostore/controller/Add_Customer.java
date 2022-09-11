package prostore.controller;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class Add_Customer extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException
	{
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();
		RequestDispatcher rd  = req.getRequestDispatcher("add_customer_form.jsp");
		rd.forward(req, resp);
		out.close();
	}

}
