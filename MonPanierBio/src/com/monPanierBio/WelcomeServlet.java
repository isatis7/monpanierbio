package com.monPanierBio;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WelcomeServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7918096304570418352L;
	
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
		throws ServletException, IOException {
	
	//Date today = new Date();
	req.setAttribute("today", new Date());
	
	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(
			"/WEB-INF/jspf/welcome.jsp");
	
	dispatcher.forward(req, resp);
}	

}
