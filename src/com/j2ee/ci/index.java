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
import com.mysql.jdbc.PreparedStatement;

public class index extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response )
			throws ServletException, IOException{
		
		String titre = "Présentation";
		request.setAttribute("titre", titre);
	
		this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
	}
	
	protected void doPost (HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
		try {
			String nom =request.getParameter("nom");
            String prenoms =request.getParameter("pnom");
            String email =request.getParameter("email");
            String pseudo =request.getParameter("pseudo");
            String passe =request.getParameter("passe");
            String rPasse =request.getParameter("rPasse");
            
            if(passe.equals(rPasse)) {
                 
                 Bdd bdd = new Bdd();	
                 bdd.createMembre(nom, prenoms, email, pseudo, passe);
                 
                 this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
            }
            
		}catch(Exception e){
			System.out.println(e);
			System.out.println("Something went wrong !! Please try again.");
			
		}
		this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
	}
}
