<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp"%>
<!DOCTYPE html>
<html>
<head><link href="resources/css/stile.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

 <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title> Nuovo Artista </title>
</head>
<body><h3 align="center">Inserisci il nuovo artista</h3><br><br>
	<div class="field half">
		<form:form commandName="artista" cssClass="form-horizontal">
	
		<c:if test="${param.success eq true }">
			<div class="alert alert-success"> Artista inserito con sucesso! </div>
		</c:if>
		<c:if test="${param.success eq false }">
			<div class="alert alert-danger"> Artista già inserito! </div>
		</c:if>
	
		<div class="field half">
			<label for="nome" class="col-sm-5 control-label"> Nome: </label>
			<div class="col-sm-5">
				<form:input path="nome" cssClass="form-control" />
				<form:errors path="nome"/>
			</div>
		</div>
		
		<div class="field half">
			<label for="cognome" class="col-sm-3 control-label"> Cognome: </label>
			<div class="col-sm-5">
				<form:input path="cognome" cssClass="form-control" />
				<form:errors path="cognome"/>
			</div>
		</div>
		
		<div class="field half">
			<label for="nazionalita" class="col-sm-5 control-label"> Nazionalità: </label>
			<div class="col-sm-5">
				<form:input path="nazionalita" cssClass="form-control" />
				<form:errors path="nazionalita"/>
			</div>
		</div>
		
		<div class="field half">
			<label for="dataNascita" class="col-sm-3 control-label" > Data Di Nascita: </label>
			<div class="col-sm-5">
				<form:input path="dataNascita" cssClass="form-control" placeholder="dd/mm/yyyy" />
				<form:errors path="dataNascita"/>
			</div>
		</div>
		
		<div class="field half">
			<label for="dataMorte" class="col-sm-5 control-label" > Data Di Morte: </label>
			<div class="col-sm-5">
				<form:input path="dataMorte" cssClass="form-control" placeholder="dd/mm/yyyy" />
				<form:errors path="dataMorte"/>
			</div>
		</div>

			
				<div class="field">
					<br><br>
				<div align="center" >	<input  type="submit" value="Salva" class="button" />
					</div>
				</div>
			
			

		</form:form>
	</div>

</body>
</html>