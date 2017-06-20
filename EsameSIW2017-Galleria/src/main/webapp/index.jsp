<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>


<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="resources/css/main.css" />
<meta charset="utf-8" />

<style>
.mySlides {display:none;}
</style>

<title>GalleriaRoma3</title>
</head>
<body>






	<header id="header">

		<div class="inner">
			<nav id="nav">
				<a href="index.jsp" class="button special">GalleriaRoma3</a>


				<security:authorize access="hasRole('ROLE_ADMIN')">
					<a href="<spring:url value="/users" />">Utenti Registrati</a>
				</security:authorize>

				<security:authorize access="! isAuthenticated()">
					<a href="<spring:url value="/register" />">Registrazione</a>
				</security:authorize>

				<security:authorize access="isAuthenticated()">

					<security:authorize access="hasRole('ROLE_USER')">
						<a href="<spring:url value="/account" />">Operazioni</a>
					</security:authorize>

				</security:authorize>

				<security:authorize access="! isAuthenticated()">
					<a href="<spring:url value="/login" />">Login</a>
				</security:authorize>
				<security:authorize access="hasRole('ROLE_USER')">
					<a href="<spring:url value="/logout" />">Logout</a>
				</security:authorize>

			</nav>
			<a href="#navPanel" class="navPanelToggle"><span
				class="fa fa-bars"></span></a>
		</div>
	</header>






	<!-- Banner -->
	<section id="banner">
		<div class="inner">
			<header>
				<h2>Benvenuto nella Galleria di Roma Tre</h2>
			</header>
			

			<div class="flex "></div>

			<footer>
				<h3><marquee behavior='alternate'>Sogno di dipingere e poi dipingo il mio sogno</marquee></h3>
				 

<center><div class="w3-center"><h1> Alcune opere presenti nella mostra</div></h1>
<br><br>

<div class="w3-content w3-section" style="max-width:50%">

  <img class="mySlides" src="http://i67.tinypic.com/2wce3ci.jpg" style="width:100%">
   <img class="mySlides" src="http://i65.tinypic.com/15e729u.jpg" style="width:100%">
  <img class="mySlides" src="http://i65.tinypic.com/30jrx40.jpg" style="width:100%">
  <img class="mySlides" src="http://i68.tinypic.com/10oehdf.jpg" style="width:100%">
  <img class="mySlides" src="http://i66.tinypic.com/2w56id2.jpg" style="width:100%">
  <img class="mySlides" src="http://i63.tinypic.com/2hy8b2p.jpg" style="width:100%">
  <img class="mySlides" src="http://i63.tinypic.com/qoey3k.jpg" style="width:100%">
  <img class="mySlides" src="http://i63.tinypic.com/294gkrc.jpg" style="width:100%">
   <img class="mySlides" src="http://i67.tinypic.com/291iz5v.jpg" style="width:100%">
    <img class="mySlides" src="http://i67.tinypic.com/2d6v143.jpg" style="width:100%">
    <img class="mySlides" src="http://i68.tinypic.com/vysf1d.jpg" style="width:100%">
  
</div>

<script>
//Piccolo script per scorrere delle immagini
var myIndex = 0;
carousel();

function carousel() { 
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 3000); 
}
</script>
</center>

				

			</footer>
		</div>
	</section>
<center>
	<h4>Collegamenti esterni della galleria</h4>
									<ul class="icons">
										<li><a href="http://www.twitter.it" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
										<li><a href="http://www.facebook.it" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
										<li><a href="http://instragram.it" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
										<li><a href="http://github.com/DeAngelisLuca/ProgettoEsameSiwFinale/tree/master" class="icon fa-github"><span class="label">Github</span></a></li>
									
									</ul></center>
	

	





	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>



</body>
</html>