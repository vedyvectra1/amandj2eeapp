package com.j2ee.ci;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.j2ee.ci.Beans.TranslatorBean;
import com.j2ee.ci.database.Bdd;
import com.j2ee.ci.database.Billets;
import com.j2ee.ci.database.Commentaires;

public class init extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response )
			throws ServletException, IOException{
		
		String page = (String) request.getParameter("page") !=null ? (String) request.getParameter("page"): "";
		String lang = (String) request.getParameter("lang") !=null ? (String) request.getParameter("lang"): "";
		TranslatorBean tb;
		
		if(lang.equals("en")) {
			tb = new TranslatorBean("fr","en");
			System.out.println(TranslatorBean.translate("Bonjour"));
		}
			
		else if(lang.equals("fr")) {
			tb = new TranslatorBean();
			System.out.println(TranslatorBean.translate("Bonjour"));
		}
		response.sendRedirect(request.getContextPath()+"/"+page);
	}

}
