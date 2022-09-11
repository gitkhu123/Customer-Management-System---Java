package prostore.controller;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

import prostore.dao.Insert;

public class CreateCustomer extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException
	{
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();

		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String address = req.getParameter("address");
		Insert is = new Insert();
		is.addPro(name, email, address);
		RequestDispatcher rd  = req.getRequestDispatcher("index.jsp");
		rd.forward(req, resp);
		out.close();
	}

}
