package com.monPanierBio;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PanierServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -2346697722854214448L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(
				"/WEB-INF/jspf/panier.jsp");
				
				dispatcher.forward(req, resp);
	}

}
