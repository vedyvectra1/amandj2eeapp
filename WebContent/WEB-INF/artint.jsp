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
					<h2><%=TranslatorBean.translate("Intélligence Artificielle")%></h2>
				</div>
				<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.6s">
					<p><%=TranslatorBean.translate("Quelques informations sur l'"+"IA.")%></p>
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
	                                <a href="#"><img class="img-responsive img-blog" src="assets/images/ia1.jpg" width="100%" alt="" /></a>
	                                <h4><%=TranslatorBean.translate("Comment investir dans l'"+"intelligence artificielle")%></h4>
	                                <p><%=TranslatorBean.translate("L'arrivée de «robots» capables d'"+"apprendre par eux-mêmes devrait bouleverser de nombreux secteurs. Les premiers fonds spécialisés voient le jour.")%></p>
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
	                                <a href=""><img class="img-responsive img-blog" src="assets/images/logoia.jpg" width="100%" alt="" /></a>
	                                <h4><%=TranslatorBean.translate("Une intelligence artificielle peut-elle être drôle ?")%></h4>
	                                <p><%=TranslatorBean.translate("Deux étudiants de Stanford ont entraîné un réseau neuronal à reproduire les meilleures blagues d'Internet. Les résultats en disent plus sur l'humour en ligne que sur les prouesses de l'intelligence artificielle.")%></p>
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

