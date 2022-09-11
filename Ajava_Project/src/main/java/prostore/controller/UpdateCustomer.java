package prostore.controller;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

import prostore.dao.Update;

public class UpdateCustomer extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Integer id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String address = req.getParameter("address");

		Update up = new Update();
		boolean check = up.updatetPro(id, name, email, address);
		if (check) {
			resp.sendRedirect("index.jsp");
		}

	}

}
