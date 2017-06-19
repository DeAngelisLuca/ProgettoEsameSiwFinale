<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp"%>

<!DOCTYPE html>
<html>
<head>

<title>Pagina di ${user.nome}</title> 
</head>
<body>
	<div class="container">
		<br>
		<security:authorize access="hasRole('ROLE_ADMIN')">
			<a href="artista" class="btn btn-warning btn-lg"> Aggiungi artista </a>
		</security:authorize>
		
		<br><br>
		
		<a href="artisti" class="btn btn-warning btn-lg"> Lista degli artisti </a>		
		
		</div>
	</body>
</html>