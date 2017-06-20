<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Lista di tutti gli Artisti</title>
</head>
<body>
	<div class="container">
	<br>
		<h2> Lista degli artisti attualmente presenti nella galleria: </h2>
		<br><br>
		
		<c:forEach items="${artisti}" var="artista">		
		<a href="<spring:url value="/artisti/${artista.id}" />"> 
		<c:out	value="${artista.nome}" />
	    <c:out	value="${artista.cognome}" />
	    <c:out	value="${artista.nazionalita}" />
	    <br><br>
		</a>
	    </c:forEach>
	    
	    
			
		
	</div>

</body>
</html>