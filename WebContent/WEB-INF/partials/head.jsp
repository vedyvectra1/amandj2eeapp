<%@page import="com.j2ee.ci.Beans.TranslatorBean"%>
<%	//TranslatorBean tb = new TranslatorBean(); 
	String titre = (String) request.getAttribute("titre");
	titre = TranslatorBean.translate(titre);
%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><%= titre %></title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap -->
    <style type="text/css"><%@include file="../../assets/css/bootstrap.min.css" %></style>
    <style type="text/css"><%@include file="../../assets/css/font-awesome.min.css" %></style>
    <style type="text/css"><%@include file="../../assets/css/jquery.bxslider.css" %></style>
    <style type="text/css"><%@include file="../../assets/css/isotope.css" %></style>
    <style type="text/css"><%@include file="../../assets/css/animate.css" %></style>
    <style type="text/css"><%@include file="../../assets/js/fancybox/jquery.fancybox.css" %></style>
    <style type="text/css"><%@include file="../../assets/css/prettyPhoto.css" %></style>
    <style type="text/css"><%@include file="../../assets/css/style.css" %></style>
    <link rel="icon" type="image/png" href="assets/images/brand-nav.png"> 
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/2.3.1/css/flag-icon.min.css" rel="stylesheet"/>