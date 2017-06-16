<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp"%>
<%@ page
	import="it.uniroma3.service.*, java.util.List, it.uniroma3.model.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Nuova Opera</title>
</head>
<body>

	<div class="container">
		<form:form commandName="opera" method="post" cssClass="form-horizontal" enctype="multipart/form-data">

			<c:if test="${param.success eq true }">
				<div class="alert alert-success">Opera inserita con successo!</div>
			</c:if>

			<div class="form-group">
				<label for="titolo" class="col-sm-2 control-label"> Titolo: </label>
				<div class="col-sm-10">
					<form:input path="titolo" cssClass="form-control" />
					<form:errors path="titolo" />
				</div>
			</div>

			<div class="form-group">
				<label for="dataCreazione" class="col-sm-2 control-label">
					Data Creazione: </label>
				<div class="col-sm-10">
					<form:input path="dataCreazione" cssClass="form-control" />
					<form:errors path="dataCreazione" />
				</div>
			</div>

			<div class="form-group">
				<label for="tecnica" class="col-sm-2 control-label">
					Tecnica: </label>
				<div class="col-sm-10">
					<form:input path="tecnica" cssClass="form-control" />
					<form:errors path="tecnica" />
				</div>
			</div>

			<div class="form-group">
				<label for="dimensione" class="col-sm-2 control-label">
					Dimensione: </label>
				<div class="col-sm-10">
					<form:input path="dimensione" cssClass="form-control" />
					<form:errors path="dimensione" />
				</div>
			</div>
			
			<div class="form-group">
				<label for="link" class="col-sm-2 control-label">
					Link: </label>
				<div class="col-sm-10">
					<form:input path="link" cssClass="form-control" />
					<form:errors path="link" />
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-2"> 
					<input type="submit" value="Salva" class="btn btn-lg btn-primary" />
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>