<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<!DOCTYPE html>
	<head>	
		<%@include file="partials/head.jsp" %>
	</head>
	
	<body>
	<div class="box-wrap">
		<header role="banner" id="fh5co-header">
			<%@include file="partials/header.jsp" %>
		</header>
		<!-- END: header -->
		<section id="intro">
			<div class="text-center">
				<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.3s">
					<h2><%=TranslatorBean.translate("Erreur Compte Inexistant")%></h2>
				</div>
				<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.6s">
					<p><%=TranslatorBean.translate("Pas encore de compte ?")%> <a href="<%=request.getContextPath()+"/register"%>"><%=TranslatorBean.translate("enregistrez vous ici")%></a></p>
					
				</div>
			</div>
		</section>


		<%@ include file="partials/footer.jsp" %>

	</body>
</html>

