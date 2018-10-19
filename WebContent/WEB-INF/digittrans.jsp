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
					<h2><%=TranslatorBean.translate("Transformation numérique")%></h2>
				</div>
				<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.6s">
					<p><%=TranslatorBean.translate("Quelques informations sur la Transformation Digitale")%>.</p>
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
	                                <a href="#"><img class="img-responsive img-blog" src="assets/images/blog/blog1.jpg" width="100%" alt="" /></a>
	                                <h4><%=TranslatorBean.translate("Approche simple de la transformation digitale")%></h4>
	                                <p><%=TranslatorBean.translate("La technologie fait partie intégrante de l'entreprise, les outils numériques devenant un facteur central de croissance et de rentabilité. Quels sont les atouts du numérique pour une société ? Fait-il bon ménage avec les salariés et leur environnement de travail.")%></p>
									<p><%=TranslatorBean.translate("La transformation numérique varie beaucoup d’une entreprise à l’autre, et en fonction de son secteur d’activité. A titre d’exemple : «Quand nous travaillons pour des grosses structures qui génèrent plus de 250 millions d'euros de chiffre d'affaires, nous analysons leurs objectifs de P&L (pertes et profits) et développons une stratégie publicitaire et data (technologie de données) en prenant en compte les ambitions et le leadership de la société», explique le PDG de Netbooster. En un mot, le travail consiste à rationaliser leur ambition, à développer des objectifs clairs et à mettre en place des outils verticaux intégrés à toute organisation. Selon lui, «ces entreprises sont plutôt opportunistes dans leur transformation digitale».")%></p>
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
	                                <a href=""><img class="img-responsive img-blog" src="assets/images/blog/blog2.jpg" width="100%" alt="" /></a>
	                                <h4><%=TranslatorBean.translate("La notion de transformation digitale")%></h4>
	                                <p><%=TranslatorBean.translate("Le langage dans l’univers IT peut sembler être un capharnaüm de termes techniques obscurs, composé d’acronymes, d’anglicismes et autres appellations ésotériques. La notion de « nouvelles technologies » a laissé la place à une nouvelle tendance : « la transformation digitale ». Or, l’abondance de sources, parfois contradictoires, sur le sujet rend cette notion très floue. On trouve de tout et son contraire, et selon les contextes, la transformation digitale semble appréhender des réalités qui diffèrent. Prenons le temps de revenir sur cette notion qui est aujourd’hui un enjeu crucial pour les entreprises.")%></p>
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

