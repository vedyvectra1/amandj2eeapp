package com.j2ee.ci;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.j2ee.ci.database.Bdd;
import com.j2ee.ci.database.Billets;

public class publication extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response )
			throws ServletException, IOException{
		String titre = "Publication";
		request.setAttribute("titre", titre);
		
		Bdd bdd = new Bdd();
		ArrayList<Billets>liste = bdd.getAllBillet();
		request.setAttribute("listes", liste);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/publication.jsp").forward(request, response);
	}
	
	protected void doPost (HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
		try {
			String titre =request.getParameter("titre");
			String publication =request.getParameter("publication");
			HttpSession session = request.getSession();
			String pseudo = ((String) session.getAttribute("pseudo") !=null) ? (String) session.getAttribute("pseudo") : "" ;
			
            Bdd bdd = new Bdd();	
            bdd.createBillet(pseudo, titre, publication);
            
	        response.sendRedirect(request.getContextPath()+"/publication");
            
		}catch(Exception e){
			System.out.println(e);
			System.out.println("Something went wrong !! Please try again.");
			
		}
	}

}
