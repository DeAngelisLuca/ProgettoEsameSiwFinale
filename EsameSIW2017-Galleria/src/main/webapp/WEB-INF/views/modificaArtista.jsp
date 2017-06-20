<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../layout/view-taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Modifica Artista</title>
</head>
<body>

<div class="container">
		<form:form commandName="artista" cssClass="form-horizontal">
	
		<c:if test="${param.success eq true }">
			<div class="alert alert-success"> Artista Modificato! </div>
		</c:if>
	
		<div class="form-group">
			<label for="nome" class="col-sm-2 control-label"> Nome: </label>
			<div class="col-sm-10">
				<form:input path="nome" cssClass="form-control" />
				<form:errors path="nome"/>
			</div>
		</div>
		
		<div class="form-group">
			<label for="cognome" class="col-sm-2 control-label"> Cognome: </label>
			<div class="col-sm-10">
				<form:input path="cognome" cssClass="form-control" />
				<form:errors path="cognome"/>
			</div>
		</div>
		
		<div class="form-group">
			<label for="nazionalita" class="col-sm-2 control-label"> Nazionalita': </label>
			<div class="col-sm-10">
				<form:input path="nazionalita" cssClass="form-control" />
				<form:errors path="nazionalita"/>
			</div>
		</div>
		
		<div class="form-group">
			<label for="dataNascita" class="col-sm-2 control-label" > Data Di Nascita: </label>
			<div class="col-sm-10">
				<form:input path="dataNascita" cssClass="form-control" placeholder="dd/mm/yyyy" />
				<form:errors path="dataNascita" />
			</div>
		</div>
		
		<div class="form-group">
			<label for="dataMorte" class="col-sm-2 control-label"> Data Di Morte: </label>
			<div class="col-sm-10">
				<form:input path="dataMorte" cssClass="form-control" placeholder="dd/mm/yyyy" />
				<form:errors path="dataMorte"/>
			</div>
		</div>
		
		
		<div class="form-group">
			<div class="col-sm-2">
				<input type="submit" value="Modifica" class="btn btn-lg btn-warning"  />
			</div>
		</div>
		
		</form:form>
	</div>

</body>
</html>