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
					<h2><%=TranslatorBean.translate("Enregistrement")%></h2>
				</div>
				<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.6s">
					<p></p>
				</div>
			</div>
		</section>

		<main id="main">
			<div class="container">
				<div class="col-md-8 col-md-offset-2 animate-box">
					<form method="post" action="index">
									<div class="form-group row">
										<div class="col-md-10 field">
											<label for="firstname"><%=TranslatorBean.translate("Nom")%></label>
											<input type="text" name="nom" id="nom" class="form-control" placeholder="<%=TranslatorBean.translate("Nom")%>">
										</div>
										<div class="col-md-10 field">
											<label for="lastname"><%=TranslatorBean.translate("Prenoms")%></label>
											<input type="text" name="pnom" id="pnom" class="form-control" placeholder="<%=TranslatorBean.translate("Prenoms")%>">
										</div>
									</div>
									<div class="form-group row">
										<div class="col-md-10 field">
											<label for="email"><%=TranslatorBean.translate("Email")%></label>
											<input type="email" name="email" id="email" class="form-control" placeholder="<%=TranslatorBean.translate("Email")%>">
										</div>
										<div class="col-md-10 field">
											<label for="phone"><%=TranslatorBean.translate("Pseudo")%></label>
											<input type="text" name="pseudo" id="pseudo" class="form-control" placeholder="<%=TranslatorBean.translate("Pseudo")%>">
										</div>
										<div class="col-md-10 field">
											<label for="phone"><%=TranslatorBean.translate("Mot de passe")%></label>
											<input type="password" name="passe" id="passe" class="form-control" placeholder="<%=TranslatorBean.translate("Mot de passe")%>">
										</div>
										<div class="col-md-10 field">
											<label for="phone"><%=TranslatorBean.translate("Saisir de nouveau le mot de passe")%></label>
											<input type="password" name="rPasse" id="rPasse" class="form-control" placeholder="<%=TranslatorBean.translate("Saisir de nouveau le mot de passe")%>">
										</div>
									</div>
									<div class="form-group row">
											<input type="submit" id="submit" class="btn" value="<%=TranslatorBean.translate("Valider")%>">
											<input  type="reset" id="cancel" class="btn btn-danger" value="<%=TranslatorBean.translate("Annuler")%>"/>
									</div>
								</form>
				</div>
				<!-- <div class="col-md-4"></div> -->
			</div>
		</main>

		<%@ include file="partials/footer.jsp" %>

	</body>
</html>

