package com.j2ee.ci;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class artint extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response )
			throws ServletException, IOException{
		String titre = "Intelligence Artificielle";
		request.setAttribute("titre", titre);
		this.getServletContext().getRequestDispatcher("/WEB-INF/artint.jsp").forward(request, response);
	}
}
