package com.j2ee.ci;

import java.io.IOException;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.j2ee.ci.database.Bdd;
import com.j2ee.ci.database.Membres;
import com.mysql.jdbc.Connection;

public class login extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response )
			throws ServletException, IOException{
		String titre = "Se connecter";
		request.setAttribute("titre", titre);
		this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
	}
	
	protected void doPost (HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
		try {
				String pseudo =request.getParameter("pseudo");
				String passe =request.getParameter("passe");
            
				
	         
	         Bdd bdd = new Bdd();
	         Membres membreConnected = bdd.getMembreByLog(pseudo, passe);
	         HttpSession session = request.getSession();
	         session.setAttribute("nom", membreConnected.getNom());
	         session.setAttribute("pnom", membreConnected.getPrenoms());
	         session.setAttribute("pseudo", membreConnected.getPseudo());
	         session.setAttribute("email", membreConnected.getEmail());
	         session.setAttribute("mdp", membreConnected.getPasse());
	         session.setAttribute("pays", membreConnected.getPays());
	         session.setAttribute("ville", membreConnected.getVille());
	         session.setAttribute("entreprise", membreConnected.getEntreprise());
	         if(session.getAttribute("pseudo").equals(""))
	        	 response.sendRedirect(request.getContextPath()+"/loginError");
	         else response.sendRedirect(request.getContextPath()+"/profil");
	         
	         
            
		}catch(Exception e){
			response.sendRedirect(request.getContextPath()+"/loginError");
			
		}
		
	}

}
