<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>

<html>
<head>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

	<div class="container">

		<!-- Static navbar -->
		<div class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">

						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="<spring:url value="/" />">GalleriaRoma3</a>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">



						<security:authorize access="hasRole('ROLE_ADMIN')">
							<li><a href="<spring:url value="/users" />">Utenti
									Registrati</a></li>
						</security:authorize>

						<security:authorize access="! isAuthenticated()">
							<li><a href="<spring:url value="/register" />">Registrazione</a></li>
						</security:authorize>

						<security:authorize access="isAuthenticated()">

							<security:authorize access="hasRole('ROLE_USER')">
								<li><a href="<spring:url value="/account" />">Operazioni</a></li>
							</security:authorize>

						</security:authorize>

					</ul>
					<ul class="nav navbar-nav navbar-right">
						<security:authorize access="! isAuthenticated()">
							<li><a href="<spring:url value="/login" />">Login</a></li>
						</security:authorize>
						<security:authorize access="hasRole('ROLE_USER')">
							<li><a href="<spring:url value="/logout" />">Logout</a></li>
						</security:authorize>
						
						

					</ul>
				</div>
			</div>
		</div>
	</div>



</body>
</html>


