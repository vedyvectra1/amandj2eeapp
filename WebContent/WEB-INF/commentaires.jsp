<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<!DOCTYPE html>

	<%@page import="com.j2ee.ci.database.Billets"%>
	<%@page import="com.j2ee.ci.database.Commentaires"%>
	<%@page import="java.util.ArrayList" %>
	<head>	
		<%@include file="partials/head.jsp" %>
	</head>
	
	<body>
		<header>
			<%@include file="partials/header.jsp" %>
		</header>
		<!-- END: header -->
		<section id="blog" class="container">
		<% ArrayList<Billets>  liste = (ArrayList<Billets>) request.getAttribute("listes");
		          for(int i = 0; i<liste.size(); i++){
		          		
		          %>
        <div class="text-center">
			<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.3s">
				<h2><%=TranslatorBean.translate(liste.get(i).getTitre())%></h2>					
			</div>
			<div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.6s">
				<p></p>
			</div>
		</div>

        <div class="blog">
            <div class="row">
                 <div class="col-md-8">
                    <div class="blog-item">
                        <div class="row">
                            <div class="col-xs-12 col-sm-2 text-center">
                                <div class="entry-meta">
                                    <span id="publish_date"><%=TranslatorBean.translate(liste.get(i).getDate_creation())%></span>
                                    <span><i class="fa fa-user"></i> <a href="#"><%=TranslatorBean.translate(liste.get(i).getAuteur())%></a></span>
                                </div>
                            </div>
                                
                            <div class="col-xs-12 col-sm-10 blog-content">
                                <p><%=TranslatorBean.translate(liste.get(i).getContenu())%></p>
                            </div>
                        </div>    
                    </div><!--/.blog-item-->
                </div><!--/.col-md-8-->

                <aside class="col-md-4">
                    <div class="widget search">
                        <form role="form" method="post"  action="commentaires">
                            <input name="commentaire" type="text" class="form-control search_box" autocomplete="off" placeholder="<%=TranslatorBean.translate("Votre commentaire")%>">
                            <input class="form-control" rows="3" name="id" value="<%=liste.get(i).getId_billet()%>" type="hidden">
                        </form>
                    </div><!--/.search-->
    				
    				<div class="widget categories">
                        <h3><%=TranslatorBean.translate("Commentaires")%></h3>
                        <div class="row">
                            <div class="col-sm-12">
                            <% ArrayList<Commentaires>  listeComments = (ArrayList<Commentaires>) request.getAttribute("listComm");
					          for(int j = 0; j<listeComments.size(); j++){
					          		
					          %>
                                <div class="single_comments">
                                    <img src="assets/images/blog/avatar3.png" alt=""  />
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do </p>
                                    <div class="entry-meta small muted">
                                    	<p>Lorem</p>
                                    </div>
                                </div>
                                        <span><%=TranslatorBean.translate("Par")%> <a href="#"><%=(listeComments.get(j).getAuteur() !=null && ! listeComments.get(j).getAuteur().equals("") ) ? listeComments.get(j).getAuteur() : TranslatorBean.translate("Anonyme")%></a></span><span>On <a href="#"><%=listeComments.get(j).getCommentaire()%></a></span><span>On <a href="#"><%=TranslatorBean.translate(listeComments.get(j).getDate_commentaire())%></a></span>
                             <% } %>   
                            </div>
                        </div>                     
                    </div><!--/.recent comments-->

    				
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
        <% } %>
    </section><!--/#blog-->

		<%@include file="partials/footer.jsp" %>

	</body>
</html>

    