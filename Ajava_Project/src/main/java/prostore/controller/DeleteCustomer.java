package prostore.controller;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

import prostore.dao.Delete;

public class DeleteCustomer extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Integer id = Integer.parseInt(req.getParameter("id"));

		Delete dt = new Delete();
		boolean check = dt.deletePro(id);
		if (check) {
			RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
			rd.forward(req, resp);
		}
	}
}
