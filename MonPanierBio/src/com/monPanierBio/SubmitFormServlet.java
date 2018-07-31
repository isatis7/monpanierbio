package com.monPanierBio;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.monPanierBio.entities.Produit;

public class SubmitFormServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1348803462148984257L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
validate(req);
		
		boolean validate = validate(req);
		if(validate) {
			 Produit user = new Produit();
			 user.setCode(req.getParameter("code"));
			 user.setCategorie(req.getParameter("categorie"));
			 user.setNom(req.getParameter("nom"));
			 user.setPrix(req.getParameter("prix"));
			 user.setPoids(req.getParameter("poids"));
			 user.setDate(req.getParameter("vente"));
			 user.setDescription(req.getParameter("description"));
			 System.out.println(user);
		}
		
		req.setAttribute("today", new Date());
		
		
		
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(
				"/WEB-INF/jspf/panier.jsp");
				
				dispatcher.forward(req, resp);
		
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
private static boolean validate(HttpServletRequest req) {
		
		boolean validate = true;
		String code = req.getParameter("code");
		if (code == null || code.isEmpty()) {
			req.setAttribute("errorCode", "Code obligatoire");
			validate = false;
			
		}
		String categorie = req.getParameter("categorie");
		if (categorie == null || categorie.isEmpty()) {
			req.setAttribute("errorCategorie", "Categorie obligatoire");
			validate = false;
		}
		String[] nom = req.getParameterValues("nom");
		if (nom == null || nom.length == 0) {
			req.setAttribute("errorNom", "Au moins un nom de produit est obligatoire");
			validate = false;
		}
		String prix = req.getParameter("prix");
		if (prix == null || prix.isEmpty()) {
			req.setAttribute("errorPrix", "prix obligatoire");
			validate = false;
		}
		String poids = req.getParameter("categorie");
		if (poids == null || poids.isEmpty()) {
			req.setAttribute("errorPoids", "Poids obligatoire");
			validate = false;
		}
		String vente = req.getParameter("vente");
		if (vente == null || vente.isEmpty()) {
			req.setAttribute("errorVente", "Date de vente obligatoire");
			validate = false;
		}
		String description = req.getParameter("description");
		if (description == null || description.isEmpty()) {
			req.setAttribute("errorDescription", "Description obligatoire");
			validate = false;
		}
		return validate;

}

}
