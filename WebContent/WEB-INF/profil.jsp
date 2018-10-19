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
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-lg-offset-3 col-md-8 col-md-offset-2 text-center">
						<div class="intro animate-box">
							<h1><%= nomPnoms %></h1>
							<h2><%=TranslatorBean.translate("Retrouvez ici les informations concernant votre profil.")%></h2>
						</div>
					</div>
				</div>
			<div>
		</section>

		<main id="main">
			<div class="container">
				<div class="row">
					<div class="col-xs-6">
			            <div class="panel panel-default">
			                <div class="panel-heading">
			                    <h3 class="panel-title"> <%=TranslatorBean.translate("Bonjour")%> <%= nomPnoms %></h3>
			                    </div>
			                <div class="panel-body">
			                    <div class="row">
			                        <div class="col-xs-5">
			                            <img src="assets/images/avatar.png" width="50px" height="50px" alt="Image de profil de <%= pseudos %>" class="img-circle" >
			                        </div>
			                    </div>
			                    <div class="row">
			                        <div class="col-xs-6">
			                            <strong><%= pseudos %></strong><br/>
			                            <a href="mailto:<%= email %>"><%= email %></a>
			                        </div>
			                        <div class="col-xs-6">
			                      
			                        </div>
			                        <div class="col-xs-12">
			                            <div class="col-xs-6">
			                        
			                            
			                            </div>
			                        </div>
			                    </div>
			                </div>
			            </div>
			        </div>
			        
			        <div class="col-xs-6">
			            <div class="panel panel-default">
			                <div class="panel-heading">
			                    <h3 class="panel-title"><%=TranslatorBean.translate("Complèter mon profil")%></h3>
			                    </div>
			                <div class="panel-body" id="box">
			                    <div class="col-md-12">
							<div class="fh5co-grid animate-box">
								<form method="post" action="profil">
									<div class="form-group row">
										<div class="col-md-6 field">
											<label for="firstname"><%=TranslatorBean.translate("Pays")%></label>
											<input type="text" name="pays" id="pays" class="form-control" placeholder="<%=TranslatorBean.translate("Pays")%>">
										</div>
										<div class="col-md-6 field">
											<label for="lastname"><%=TranslatorBean.translate("Ville")%></label>
											<input type="text" name="ville" id="ville" class="form-control" placeholder="<%=TranslatorBean.translate("Ville")%>">
										</div>
									</div>
									<div class="form-group row">
										<div class="col-md-6 field">
											<label for="phone"><%=TranslatorBean.translate("Entreprise")%></label>
											<input type="text" name="entreprise" id="entreprise" class="form-control" placeholder="<%=TranslatorBean.translate("Entreprise")%>">
										</div>
									</div>
									<div class="form-group row">
										<input type="submit" value="<%=TranslatorBean.translate("Valider")%>" class="btn btn-success btn-sm" name="update" />
									</div>
								</form>
							</div>
						</div>
			                </div>
			            </div>
			        </div>
			        
				</div>
        
        
    </div>
			</div>
		</main>

		<%@ include file="partials/footer.jsp" %>

	</body>
</html>

