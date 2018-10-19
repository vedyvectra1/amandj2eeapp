package com.j2ee.ci;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.j2ee.ci.database.Bdd;
import com.j2ee.ci.database.Billets;
import com.j2ee.ci.database.Commentaires;

public class commentaires extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response )
			throws ServletException, IOException{
		String titre = "Post";
		request.setAttribute("titre", titre);
		int id = Integer.valueOf( (String) request.getParameter("id"));
		Bdd bdd = new Bdd();
		ArrayList<Billets>liste = bdd.getBilletById(id);
		request.setAttribute("listes", liste);
		
		ArrayList<Commentaires>listeComm = bdd.getCommentsById(id);
		request.setAttribute("listComm", listeComm);
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/commentaires.jsp").forward(request, response);
	}
	
	protected void doPost (HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
		try {
			int id = Integer.valueOf( (String) request.getParameter("id"));
			request.setCharacterEncoding("UTF-8");
			String commentaire =request.getParameter("commentaire");
			
			//ByteBuffer byteText = (ByteBuffer) StandardCharsets.UTF_8.encode(commentaire);
			byte [] byteText = commentaire.getBytes(StandardCharsets.UTF_8);
			commentaire = new String(byteText, StandardCharsets.UTF_8);
			
			System.out.println(commentaire);
			HttpSession session = request.getSession();
			String pseudo = ((String) session.getAttribute("pseudo") !=null) ? (String) session.getAttribute("pseudo") : "" ;
			
            Bdd bdd = new Bdd();	
            bdd.createCommentaire(id, pseudo, commentaire);
            
	        response.sendRedirect(request.getContextPath()+"/commentaires?id="+id);
            
            //this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
		}catch(Exception e){
			System.out.println(e);
			System.out.println("Something went wrong !! Please try again.");
			
		}
	}

}
