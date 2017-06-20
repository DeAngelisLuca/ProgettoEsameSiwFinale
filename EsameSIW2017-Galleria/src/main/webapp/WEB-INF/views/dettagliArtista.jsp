<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>





<title>Dettagli Artista</title>
</head>
<body>


	<br>Informazioni dell'artista selezionato
	<br>
	<br>
	<p>Nome: ${artista.nome}</p>
	<p>Cognome: ${artista.cognome}</p>
	<p>Nazionalita: ${artista.nazionalita}</p>
	<p>Data Di Nascita: ${artista.dataNascita}</p>
	<p>Data Di Morte: ${artista.dataMorte}</p>
	<br>
	<h3>
		<center>Caratteristiche delle opere di ${artista.cognome} :</center>
	</h3>


	<div class="table-wrapper">
		<table>

			<thead>
				<tr>
					<th>Titolo</th>
					<th>Tecnica</th>
					<th>Dimensione</th>
					<th>Anno</th>
					<th>Immagine</th>

				</tr>
			</thead>
			<c:forEach var="opera" items="${artista.opere}">
				<tbody>
					<tr>
						<td><c:out value="${opera.titolo}" /></td>
						<td><c:out value="${opera.tecnica}" /></td>
						<td><c:out value="${opera.dimensione}" /></td>
						<td><c:out value="${opera.dataCreazione}" /></td>
						<td><a href="${opera.link }">Quadro</a></td>

					</tr>

				</tbody>
			</c:forEach>

		</table>
	</div>




	<br>
	<br>
	<br>
	<br>





	<security:authorize access="hasRole('ROLE_ADMIN')">
		&emsp;&emsp;
		<a href="<spring:url value="/opera/${artista.id}" />" class="button">
			Aggiungi Opera </a>
		&emsp;&emsp;
		<a href="<spring:url value="/modifica/${artista.id}" />"
			class="button"> Modifica Artista </a>
		&emsp;&emsp;
		<a href="<spring:url value="/artisti/remove/${artista.id}" />"
			class="button"> Rimuovi Artista </a>
	</security:authorize>


</body>
</html>