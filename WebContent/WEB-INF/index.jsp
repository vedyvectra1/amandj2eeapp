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
		<div class="slider">
			<div class="img-responsive">
				<ul class="bxslider">				
					<li><img src="assets/images/slider/1.jpg" alt=""/></li>								
					<li><img src="assets/images/slider/2.jpg" alt=""/></li>	
					<li><img src="assets/images/slider/3.jpg" alt=""/></li>			
				</ul>
			</div>	
	    </div>
		
		<div class="container">
			<div class="text-center">
				<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.3s">
					<h3><%=TranslatorBean.translate("Promouvoir pour tous")%></h3>
				</div>
				<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.6s">
					<h2><%=TranslatorBean.translate("Les meilleures innovations")%></h2>
				</div>
			</div>
		</div>
		
			<div class="box">
				<div class="wow fadeInLeft" data-wow-offset="0" data-wow-delay="0.4s">
					<div class="col-sm-3">
						<i class="fa fa-cogs fa-3x"></i>
						<h4><%=TranslatorBean.translate("Machine Learning")%></h4>
					</div>
				</div>
				<div class="wow fadeInLeft" data-wow-offset="0" data-wow-delay="0.8s">
					<div class="col-sm-3">
						<i class="fa fa-leaf fa-3x"></i>
						<h4><%=TranslatorBean.translate("Data Science")%></h4>
					</div>
				</div>
				<div class="wow fadeInRight" data-wow-offset="0" data-wow-delay="1.2s">
					<div class="col-sm-3">
						<i class="fa fa-heart-o fa-3x"></i>
						<h4><%=TranslatorBean.translate("AIDS")%></h4>
					</div>
				</div>
				<div class="wow fadeInRight" data-wow-offset="0" data-wow-delay="1.6s">
					<div class="col-sm-3">
						<i class="fa fa-laptop fa-3x"></i>
						<h4><%=TranslatorBean.translate("IA")%></h4>
					</div>
				</div>
			</div>
		
		<div class="features">
			<div class="container">
				<div class="text-center">
					<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.3s">
						<h2><%=TranslatorBean.translate("Objectifs principaux")%></h2>
					</div>
					<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.6s">
						<p><%=TranslatorBean.translate("Promouvoir la culture des nouvelles technologies<br>Et accompagner les bloggeurs de tous horizons")%><br>
						<%=TranslatorBean.translate("Dans la réalisation de leurs oeuvres.")%></p>
					</div>
				</div>
			</div>
		</div>
		
		<div class="container">
			<div class="col-lg-6 wow fadeInRight" data-wow-offset="0" data-wow-delay="0.5s">
				<img src="assets/images/6.jpg" class="img-responsive" >
			</div>
			
			<div class="col-lg-6 wow fadeInLeft" data-wow-offset="0" data-wow-delay="0.5s">
				<img src="assets/images/5.jpg" class="img-responsive" >
			</div>
		</div>
		
		<div class="main-feature">
			<div class="container">
				<div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">
					<div class="media">
						<div class="media-left">					
							<i class="fa fa-rocket fa-3x"></i>
						</div>
						
						<div class="media-body">
							<h4 class="media-heading"><%=TranslatorBean.translate("Publiez vos idées")%></h4>
							<p>
								<%=TranslatorBean.translate("N'hésitez pas à nous faire par de vos idées. Accès à un forum"+
								"dédiez à toutes réflexions sur le Big Data.")%>
							</p>
						</div>
					</div>
				</div>
				
				<div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">
					<div class="media">
						<div class="media-left">					
							<i class="fa fa-camera fa-3x"></i>
						</div>
						
						<div class="media-body">
							<h4 class="media-heading"><%=TranslatorBean.translate("Partagez vos photos")%></h4>
							<p>
								<%=TranslatorBean.translate("Illustrez chacune de vos interventions avec vos photos et votre propre design.")%>
							</p>
						</div>
					</div>
				</div>
				
				<div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.9s">
					<div class="media">
						<div class="media-left">					
							<i class="fa fa-heart-o fa-3x"></i>
						</div>
						
						<div class="media-body">
							<h4 class="media-heading"><%=TranslatorBean.translate("Nous avons besoin de vous")%></h4>
							<p>
								<%=TranslatorBean.translate("Faites vivre la communauté et n'hésitez pas à participer aux bootcamp que nous organisons.")%>
							</p>
						</div>
					</div>
				</div>
			</div>
			
			<div class="text-center">
				<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.3s">
					<h2><%=TranslatorBean.translate("Facilement modulable et assistance garantie")%> </h2>
				</div>
				<div class="wow bounceInUp" data-wow-offset="0" data-wow-delay="0.6s">
					<p><%=TranslatorBean.translate("Présentez votre blog comme vous le sentez nos experts vous aiderons à cela.")%></p>
				</div>
				<button type="button" class="btn btn-default"><%=TranslatorBean.translate("Plus")%></button>
			</div>	
			
		</div>
		
		<div class="about-us">
			<div class="container">
				<div class="text-center">
					<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.3s">
						<h3></h3>
					</div>
					<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.6s">
						<h2><%=TranslatorBean.translate("A propos")%></h2>
					</div>
					<div class="wow fadeInRight" data-wow-offset="0" data-wow-delay="0.3s">
						<div class="col-md-4 col-md-offset-4">
							<img src="assets/images/about/man4.jpg" alt="" >
							<h3>Amand Kouakou</h3>
							<p><%=TranslatorBean.translate("Etudiant en Master 1 de MIAGE développeur Java à temps perdu.")%></p>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	
		<%@include file="partials/footer.jsp" %>

	</body>


