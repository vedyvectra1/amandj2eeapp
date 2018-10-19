<%@page import="com.j2ee.ci.Beans.TranslatorBean"%>
<footer>
    <div class="footer">
        <div class="container">
            <div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.2s">
                <h2>MIAGE-J2EE</h2>
                <p><%=TranslatorBean.translate("Nous avons un bon cadre d'étude et de bons professeurs."+
                "Ce projet J2EE a pu être réalisé grâce aux connaissancesacquise au cours de Mr Diallo.")%></p>

                <ul class="social-network">
                    <li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook fa-1x"></i></a></li>
                    <li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter fa-1x"></i></a></li>
                    <li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin fa-1x"></i></a></li>
                    <li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest fa-1x"></i></a></li>
                    <li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus fa-1x"></i></a></li>
                </ul>
            </div>

            <div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.4s">
                <h3><%=TranslatorBean.translate("POSTS RECENTS")%></h3>
                <ul>
                    <li><%=TranslatorBean.translate("Comment investir dans l'intelligence artificielle")%></li><hr>
                    <li><%=TranslatorBean.translate("Approche simple de la transformation digitale")%></li><hr>
                    <li><%=TranslatorBean.translate("Le Machine Learning")%></li><hr>
                </ul>
            </div>

            <div class="col-md-4 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">
                <h3>CONTACT INFO</h3>
                <ul>
                    <li><i class="fa fa-home fa-2x"></i><%=TranslatorBean.translate("Bureau")%> # CESTIA, Abidjan - Deux-Plateaux</li><hr>
                    <li><i class="fa fa-phone fa-2x"></i> +225 000 000</li><hr>
                    <li><i class="fa fa-envelope fa-2x"></i> info@domain.net</li>
                </ul>
            </div>

        </div>
    </div>

    <div class="sub-footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    &copy; 2018 <a target="_blank" href="#" title="Free Twitter Bootstrap WordPress Themes and HTML templates"><%=TranslatorBean.translate("Propulsé par")%></a> AMAND KOUAKOU
                </div>
                <!--
                    All links in the footer should remain intact.
                    Licenseing information is available at: http://bootstraptaste.com/license/
                    You can buy this theme without footer links online at: http://bootstraptaste.com/buy/?theme=Multi
                -->
                <div class="col-md-8">
                    <ul class="pull-right">
                        
                       	<li><a href="<%=request.getContextPath()+"/index"%>" class="textStyleNav"><%=TranslatorBean.translate("Présentation")%></a></li>
						<li><a href="<%=request.getContextPath()+"/digittransf"%>" class="textStyleNav"><%=TranslatorBean.translate("Transformation numérique")%></a></li>
						<li><a href="<%=request.getContextPath()+"/artint"%>" class="textStyleNav"><%=TranslatorBean.translate("Intélligence Artificielle")%></a></li>
						<li><a href="<%=request.getContextPath()+"/bigdata"%>" class="textStyleNav"><%=TranslatorBean.translate("Big Data")%></a></li>
						<li><a href="<%=request.getContextPath()+"/datascience"%>" class="textStyleNav"><%=TranslatorBean.translate("Data science")%></a></li>
						<li><a href="<%=request.getContextPath()+"/publication"%>" class="textStyleNav"><%=TranslatorBean.translate("Publication")%></a></li>
                    </ul>
                </div>
            </div>
            <div class="pull-right">
                <a href="#home" class="scrollup"><i class="fa fa-angle-up fa-3x"></i></a>
            </div>
        </div>
    </div>
</footer>

	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->	
    <script ><%@include file="../../assets/js/jquery-2.1.1.min.js" %></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script ><%@include file="../../assets/js/bootstrap.min.js" %></script>
	<script ><%@include file="../../assets/js/wow.min.js" %></script>
	<script ><%@include file="../../assets/js/fancybox/jquery.fancybox.pack.js" %></script>
	<script ><%@include file="../../assets/js/jquery.easing.1.3.js" %></script>
	<script ><%@include file="../../assets/js/jquery.bxslider.min.js" %></script>
	<script ><%@include file="../../assets/js/jquery.isotope.min.js" %></script>
	<script ><%@include file="../../assets/js/functions.js" %></script>
	<script>
	wow = new WOW(
	 {
	
		}	) 
		.init();
	</script>
