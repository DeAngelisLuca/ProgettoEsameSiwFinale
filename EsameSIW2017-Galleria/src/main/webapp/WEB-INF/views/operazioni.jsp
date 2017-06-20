<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>

<title>Bentornato nella tua pagina ${user.nome}</title> 
</head>
<body>
<h3 align="center">Bentornato nella tua pagina ${user.nome}</h3>
	<div class="container">
		<br>
		<security:authorize access="hasRole('ROLE_ADMIN')">
		<div align="right">
			<a href="artista" class="button"> Aggiungi artista </a>
			<p> <img src="http://i65.tinypic.com/mvlrvp.png"></p>
			</div>
		</security:authorize>
		
		<br><br>
		
		<a href="artisti" class="button"> Artisti nella galleria </a>		
		&emsp;&emsp;<p align="left"> <img src="http://i63.tinypic.com/1zx6pl3.png"></p>
		
		</div>
	</body>
</html>