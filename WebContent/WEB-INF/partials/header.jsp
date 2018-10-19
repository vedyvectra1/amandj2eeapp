<%@page import="com.j2ee.ci.Beans.TranslatorBean"%>
<% 	String pseudos = ((String) session.getAttribute("pseudo") !=null) ? (String) session.getAttribute("pseudo") : "" ;
	String nomPnoms = (session.getAttribute("nom") != null && session.getAttribute("pnom") != null) ? (String) session.getAttribute("nom")+" "+session.getAttribute("pnom") : "";
	String email = (session.getAttribute("email") != null) ? (String) session.getAttribute("email") : "";
	String motDePasse = (session.getAttribute("mdp") != null) ? (String) session.getAttribute("mdp") : "";
	String pays = (session.getAttribute("pays") != null) ? (String) session.getAttribute("pays") : "";
	String ville = (session.getAttribute("ville") != null) ? (String) session.getAttribute("ville") : "";
	String entreprise = (session.getAttribute("entreprise") != null) ? (String) session.getAttribute("entreprise") : "";
	String thisPage = request.getRequestURL().toString();
	thisPage = thisPage.replaceAll("http://localhost:8081/Projet-J2ee/WEB-INF/", "");
	thisPage = thisPage.replaceAll(".jsp", "");
%>		  
	<nav class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="navigation">
            <div class="container">

                <div class="navbar-collapse collapse">
                    <div class="menu">
                        	<ul class="nav nav-tabs nav-justified" role="tablist">
                            <li><a href="<%=request.getContextPath()+"/index"%>" class="textStyleNav"><%=TranslatorBean.translate("Présentation")%></a></li>
							<li><a href="<%=request.getContextPath()+"/digittransf"%>" class="textStyleNav"><%=TranslatorBean.translate("Transformation numérique")%></a></li>
							<li><a href="<%=request.getContextPath()+"/artint"%>" class="textStyleNav"><%=TranslatorBean.translate("Intélligence Artificielle")%></a></li>
							<li><a href="<%=request.getContextPath()+"/bigdata"%>" class="textStyleNav"><%=TranslatorBean.translate("Big Data")%></a></li>
							<li><a href="<%=request.getContextPath()+"/datascience"%>" class="textStyleNav"><%=TranslatorBean.translate("Data science")%></a></li>
							<li><a href="<%=request.getContextPath()+"/publication"%>" class="textStyleNav"><%=TranslatorBean.translate("Publication")%></a></li>
							<li><a href="<%=request.getContextPath()+"/contact"%>" class="textStyleNav"><%=TranslatorBean.translate("Contact")%></a></li>
							<% if (!pseudos.equals("")){ %>
								<li><a href="<%=request.getContextPath()+"/profil"%>" class="textStyleNav"><%=TranslatorBean.translate("Profil")%></a></li>
							<% } %>	
							<% if (pseudos.equals("")){ %>
								<li ><a href="<%=request.getContextPath()+"/login"%>" class="textStyleNav"><%=TranslatorBean.translate("Connexion")%></a></li>
							<% }else{ %>
								<li><a href="<%=request.getContextPath()+"/deconnect"%>" class="textStyleNav"><%=TranslatorBean.translate("Déconnexion")%></a></li>
							<% } %>
							<li><a href="<%=request.getContextPath()+"/init?lang=en&page="+thisPage+"" %>"><span class="flag-icon-background flag-icon-us textStyleNav btn"></span></a></li>
							<li><a href="<%=request.getContextPath()+"/init?lang=fr&page="+thisPage+"" %>"><span class="flag-icon-background flag-icon-fr textStyleNav btn"></span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </nav>