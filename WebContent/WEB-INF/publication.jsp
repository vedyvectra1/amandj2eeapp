<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<!DOCTYPE html>

<%@page import="com.j2ee.ci.database.Billets"%>
<%@page import="java.util.ArrayList" %>
	<head>	
		<%@include file="partials/head.jsp" %>
	</head>
	
	<body>
		<header>
			<%@include file="partials/header.jsp" %>
		</header>
		<!-- END: header -->
	<section id="blog" class="container">
        <div class="text-center">
			<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.3s">
				<h2>Publications</h2>
			</div>
			<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.6s">
				<p></p>
			</div>
		</div>

        <div class="blog">
            <div class="row">
                 <div class="col-md-8">
                 <!-- Affichage de la liste des articles publiés -->
		          <% ArrayList<Billets>  liste = (ArrayList<Billets>) request.getAttribute("listes");
		          for(int i = 0; i<liste.size(); i++){	
		          %>
                    <div class="blog-item">
                        <div class="row">
                            <div class="col-xs-12 col-sm-2 text-center">
                                <div class="entry-meta">
                                    <span id="publish_date"><%=TranslatorBean.translate(liste.get(i).getDate_creation()) %></span>
                                	<span><i class="fa fa-user"></i> <a href="#"><%=TranslatorBean.translate(liste.get(i).getAuteur()) %></a></span>
                                </div>
                            </div>
                                
                            <div class="col-xs-12 col-sm-10 blog-content">
                                <h3><%=TranslatorBean.translate(liste.get(i).getTitre()) %></h3>
                                <p><%=TranslatorBean.translate(liste.get(i).getContenu()) %></p>
                                <a class="btn btn-primary readmore" href="<%=request.getContextPath()+"/commentaires?id="+String.valueOf(liste.get(i).getId_billet())%>"><%=TranslatorBean.translate("Lire plus")%> <i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>    
                    </div><!--/.blog-item-->
                   <%}%>
                </div><!--/.col-md-8-->
                
                <!-- Affiche le formulaire de publication si l'utilisateur est loggé-->
		        <% if (! pseudos.equals("")){ %>
			        <div class="col-md-4">
						<div class="text-center">
							<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.3s">
								<h3><%=TranslatorBean.translate("Partagez vos idées")%></h3>
							</div>
						</div>
						<div class="container">
							<div class="col-md-8 col-md-offset-2 animate-box">
								<form method="post" action="publication">
									<div class="form-group row">
										<div class="col-md-4 col-md-pull-2 field">
											<input placeholder="<%=TranslatorBean.translate("Titre") %>" type="text" tabindex="1" class="form-control" required autofocus name="titre">
										</div>
									</div>
									<div class="form-group row">
										<div class="col-md-4 col-md-pull-2 field">
											<textarea placeholder="Publication" tabindex="5" class="form-control" required name="publication"></textarea>
										</div>
									</div>
									<div class="form-group row">
										<div class="col-md-12 field">
											<input type="submit" id="submit" class="btn btn-primary" value="<%=TranslatorBean.translate("Valider")%>" >
										</div>
									</div>
								</form>
							</div>
							<!-- <div class="col-md-4"></div> -->
						</div>
			
			        </div>
				<% } %>
            </div><!--/.row-->
        </div>
    </section><!--/#blog-->

		<%@include file="partials/footer.jsp" %>

	</body>
</html>

