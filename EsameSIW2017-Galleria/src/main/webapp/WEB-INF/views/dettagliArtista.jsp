<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Dettagli Artista</title>
</head>
<body>

	<div class="container">
		<br>Informazioni dell'artista selezionato <br><br>
		<p>Nome: ${artista.nome}</p>
		<p>Cognome: ${artista.cognome}</p>
		<p>Nazionalita: ${artista.nazionalita}</p>
		<p>Data Di Nascita: ${artista.dataNascita}</p>
		<p>Data Di Morte: ${artista.dataMorte}</p>
		<br>
		
		
				
			<div>    Lista delle opere di ${artista.cognome} : 
			<br><br>
      				<c:forEach var="opera" items="${artista.opere}">
        				<ul><li><c:out value="${opera.titolo}" />
        			
            				<c:out value="${opera.dataCreazione}" />
            				<c:out value="${opera.tecnica}" />
            				 <a href="${opera.link }">immagine del quadro</a>
            				<br><br>
          			</li></ul>
          			</c:forEach>
          			
          			
          			</div>
          			
          			
      			
    		
		
				<security:authorize access="hasRole('ROLE_ADMIN')">
				&emsp;&emsp;
          			<a href="<spring:url value="/opera/${artista.id}" />" 
				     				class="btn btn-primary btn-lg"> Aggiungi Opera </a>
				     	&emsp;&emsp;			
				<a href="<spring:url value="/modifica/${artista.id}" />"
					class="btn btn-warning btn-lg"> Modifica Artista </a> 
					&emsp;&emsp;
				<a href="<spring:url value="/artisti/remove/${artista.id}" />"
					class="btn btn-danger btn-lg"> Rimuovi Artista </a>
					</security:authorize>
	

</body>
</html>