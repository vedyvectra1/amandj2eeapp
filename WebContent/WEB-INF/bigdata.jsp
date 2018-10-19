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
					<h2><%=TranslatorBean.translate("Big Data")%></h2>
				</div>
				<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.6s">
					<p><%=TranslatorBean.translate("Quelques informations sur le Big Data")%></p>
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
	                                <a href="#"><img class="img-responsive img-blog" src="assets/images/bigdata.jpg" width="100%" alt="" /></a>
	                                <h4><%=TranslatorBean.translate("Le Machine Learning")%></h4>
	                                <p><%=TranslatorBean.translate("Comme vous le savez sans doute, le Machine Learning est déjà utilisé massivement pour les recommandations sur les sites de e-commerce, pour les logiciels de reconnaissance vocale, ou encore pour affiner les résultats des résultats des moteurs de recherche. Toutefois, ces cas d’usage répandus ne sont qu’une infime partie des possibilités offertes par cette technologie. Voici 10 exemples d’applications originales pour comprendre à quel point l’apprentissage automatique va transformer notre monde.")%></p>
	                            	<p><%=TranslatorBean.translate("Le gouvernement a lancé une première version beta de sa plateforme France Num. Issue d'une recommandation du CNNum, celle-ci a pour ambition d'accompagner la transformation numérique des entreprises en les mettant en contact avec des prestataires")%></p>
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
	                                <a href=""><img class="img-responsive img-blog" src="assets/images/bigdata1.jpeg" width="100%" alt="" /></a>
	                                <h4><%=TranslatorBean.translate("WhatsApp : les vieilles données bientôt effacées, comment faire un backup?")%></h4>
	                                <p><%=TranslatorBean.translate("WhatsApp supprimera prochainement les backups de données effectués sur le Cloud Google Drive s’ils n’ont pas été mis à jour depuis plus d’un an. Voici comment effectuer un backup manuel afin d’éviter cette situation.")%></p>
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

