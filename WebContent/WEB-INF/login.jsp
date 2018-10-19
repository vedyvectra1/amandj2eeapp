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
					<h2><%=TranslatorBean.translate("Connectez-vous")%></h2>
				</div>
				<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.6s">
					<p><%=TranslatorBean.translate("Pas encore de compte ?")%> <a href="<%=request.getContextPath()+"/register"%>"><%=TranslatorBean.translate("enregistrez vous ici")%></a></p>
					
				</div>
			</div>
		</section>

		<main id="main">
			<div class="container">
				<div class="col-md-8 col-md-offset-2 animate-box">
					<form method="post" action="login">
						<div class="form-group row">
							<div class="col-md-6 field">
								<label for="firstname"><%=TranslatorBean.translate("Pseudo")%></label>
								<input type="text" name="pseudo" id="pseudo" class="form-control" placeholder="<%=TranslatorBean.translate("Pseudo")%>">
							</div>
							<div class="col-md-6 field">
								<label for="lastname"><%=TranslatorBean.translate("Mot de passe")%></label>
								<input type="password" name="passe" id="passe" class="form-control" placeholder="<%=TranslatorBean.translate("Mot de passe")%>">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-md-12 field">
								<input type="submit" id="submit" class="btn btn-primary" value="<%=TranslatorBean.translate("Valider")%>">
							</div>
						</div>
					</form>
				</div>
				<!-- <div class="col-md-4"></div> -->
			</div>
		</main>

		<%@ include file="partials/footer.jsp" %>

	</body>
</html>

