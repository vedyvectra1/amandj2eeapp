<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<!DOCTYPE html>

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
					<h2><%=TranslatorBean.translate("Data Science")%></h2>
				</div>
				<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.6s">
					<p><%=TranslatorBean.translate("Quelques informations sur le Data Science")%></p>
				</div>
			</div>
	
	        <div class="blog">
	            <div class="row">
	                 <div class="col-md-8">
	                    <div class="blog-item">
	                        <div class="row">
	                            <div class="col-xs-12 col-sm-2 text-center">
	                                <div class="entry-meta">
	                                    <span id="publish_date">05  AVR</span>
	                                </div>
	                            </div>
	                                
	                            <div class="col-xs-12 col-sm-10 blog-content">
	                                <a href="#"><img class="img-responsive img-blog" src="assets/images/slider/1.jpg" width="100%" alt="" /></a>
	                                <h4><%=TranslatorBean.translate("Les nouveaux défis de la Data Science")%></h4>
	                                <p><%=TranslatorBean.translate("Les applications les plus connues de la Data Science concernent la gestion des risques financiers, la lutte contre la fraude et le blanchiment d’argent, la cyber-sécurité, l’efficacité énergétique, et bien entendu, la gestion des objets connectés.")%></p>
	                            </div>
	                        </div>    
	                    </div><!--/.blog-item-->
	                        
	                    <div class="blog-item">
	                        <div class="row">
	                             <div class="col-sm-2 text-center">
	                                <div class="entry-meta"> 
	                                    <span id="publish_date">05  AVR</span>
	                                </div>
	                            </div>
	                            <div class="col-sm-10 blog-content">
	                                <a href=""><img class="img-responsive img-blog" src="assets/images/analytic.jpg" width="100%" alt="" /></a>
	                                <h4><%=TranslatorBean.translate("Méthode CRISP : la clé de la réussite en Data Science")%></h4>
	                                <p><%=TranslatorBean.translate("La méthode CRISP, initialement connue comme CRISP-DM, a été au départ développée par IBM dans les années 60 pour réaliser les projets Datamining. Elle reste aujourd’hui la seule méthode utilisable efficacement pour tous les projets Data Science.")%></p>
	                            </div>
	                        </div>    
	                    </div><!--/.blog-item-->
	                </div><!--/.col-md-8-->
	
	                <aside class="col-md-4">
	    				<div class="widget blog_gallery">
	                        <h3><%=TranslatorBean.translate("Galérie")%></h3>
	                        <ul class="sidebar-gallery">
	                            <li><a href="#"><img src="assets/images/blog/gallery1.png" alt="" /></a></li>
	                            <li><a href="#"><img src="assets/images/blog/gallery2.png" alt="" /></a></li>
	                            <li><a href="#"><img src="assets/images/blog/gallery3.png" alt="" /></a></li>
	                            <li><a href="#"><img src="assets/images/blog/gallery4.png" alt="" /></a></li>
	                            <li><a href="#"><img src="assets/images/blog/gallery5.png" alt="" /></a></li>
	                            <li><a href="#"><img src="assets/images/blog/gallery6.png" alt="" /></a></li>
	                        </ul>
	                    </div><!--/.blog_gallery-->
	    			</aside>  
	            </div><!--/.row-->
	        </div>
	    </section><!--/#blog-->

		<%@include file="partials/footer.jsp" %>

	</body>
</html>

