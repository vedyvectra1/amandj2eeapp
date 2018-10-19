package com.j2ee.ci;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.j2ee.ci.database.Bdd;

public class profil extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response )
			throws ServletException, IOException{
		String titre = "Profil";
		request.setAttribute("titre", titre);
		this.getServletContext().getRequestDispatcher("/WEB-INF/profil.jsp").forward(request, response);
	}
	
	protected void doPost (HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
		try {
				String pays =(request.getParameter("pays") != null) ? request.getParameter("pays") : "";
				String ville =(request.getParameter("ville") != null) ? request.getParameter("ville") : "";
				String entreprise =(request.getParameter("entreprise") != null) ? request.getParameter("entreprise") : "";
				
				HttpSession session = request.getSession();
				String pseudo = ((String) session.getAttribute("pseudo") !=null) ? (String) session.getAttribute("pseudo") : "" ;
				String motDePasse = (session.getAttribute("mdp") != null) ? (String) session.getAttribute("mdp") : "";
            
				 Bdd bdd = new Bdd();	
				 
				 if(! pays.equals("")) 
				 bdd.setMembrePays(pays, pseudo);
				 session.setAttribute("pays", pays);
				 
				 
				 if(! ville.equals(""))
				 bdd.setMembreVille(ville, pseudo);
				 session.setAttribute("ville", ville);
				 
				 if(! entreprise.equals(""))
					 bdd.setMembreEntreprise(entreprise, pseudo);
					 session.setAttribute("entreprise", entreprise);
				 
				 this.getServletContext().getRequestDispatcher("/WEB-INF/profil.jsp").forward(request, response);
            
		}catch(Exception e){
			System.out.println(e);
			System.out.println("Something went wrong !! Please try again.");
			
		}
		//this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
	}
}
