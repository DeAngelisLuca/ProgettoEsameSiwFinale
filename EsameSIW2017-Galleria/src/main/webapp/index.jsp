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
<link href="resources/css/stile.css" rel="stylesheet" type="text/css">
<meta charset="utf-8" />

<title>GalleriaRoma3</title>
</head>
<body>
	<header id="header">

		<div class="inner">
			<nav id="nav">
				<a href="index.jsp" class="button alt">GalleriaRoma3</a>


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
				<h1>Benvenuto nella Galleria di Roma Tre</h1>
			</header>

			<div class="flex "></div>

			<footer>
				da scrivere frase<br> <br> a<br> <br> a<br>
				<br> a<br> <br> a<br> <br> aa<br> <br>
				a<br> <br> a<br> <br> a<br> <br> a<br>
				<br> a<br> <br> a<br> <br> a<br> <br>
				<br> <br> a<br> <br> a<br> <br> a<br>
				<br> a<br> <br> aa<br> <br> <br> <br>
				a<br> <br> <br> <br> a a a a a a


			</footer>
		</div>
	</section>


	<h4>Collegamenti esterni della galleria</h4>
	<ul class="icons">
		<h4>
			<li><a href="http://www.twitter.it" target=”_blank” class="icon fa-twitter"><span class="label">Twitter</span></a></li>
		</h4>
		<h4>
			<li><a href="http://www.facebook.it" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
		</h4>
		<h4>
			<li><a href="http://instragram.it" class="icon fa-instagram"><span
					class="label">Instagram</span></a></li>
		</h4>
		<h4>
			<li><a href="http://github.com/DeAngelisLuca/ProgettoEsameSiwFinale/tree/master" class="icon fa-github"><span class="label">Github</span></a></li>
		</h4>

	</ul>





	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>



</body>
</html>