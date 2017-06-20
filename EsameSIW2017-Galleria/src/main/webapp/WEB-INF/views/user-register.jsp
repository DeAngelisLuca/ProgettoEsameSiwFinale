<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp"%>
<!DOCTYPE html>
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

<title>Registrazione Utente</title>

</head>
<body>
	<br>
	<br>
	
	<div class="container">
		<form:form commandName="user"  cssClass="form-horizontal">
		<div align="center">

			<c:if test="${param.success eq true }">
				<div class="alert alert-success"><strong>Registrazione effettuata con
					successo!</strong></div>
			</c:if>
			<c:if test="${param.success eq false }">
				<div class="alert alert-danger"><strong>Nickname gia' utilizzato!
					</strong></div>
			</c:if>

			<div class="form-group">
				<label for="nome" class="col-sm-4 control-label"
					style="font-size: large;"> Nickname: </label>
				<div class="col-sm-5">
					<form:input path="nome" cssClass="form-control" />
					<form:errors path="nome" />
				</div>
			</div>


			<div class="form-group">
				<label for="email" class="col-sm-4 control-label" 
					style="font-size: large;"> Email: </label>
				<div class="col-sm-5">
					<form:input path="email" cssClass="form-control" />
					<form:errors path="email" />
				</div>
			</div>


			<div class="form-group">
				<label for="password" class="col-sm-4 control-label"
					style="font-size: large;"> Password: </label>
				<div class="col-sm-5">
					<form:password path="password" cssClass="form-control" />
					<form:errors path="password" />
				</div>
			</div>

			<div class="form-group">
			<label for="submit" class="col-sm-5 control-label"
					style="font-size: large;">  </label>
				<div class="col-sm-1">
				<br><br>
					
					<input type="submit" value="Invia Dati" class="btn "/>
				</div>
			</div>
			</div>
		</form:form>
	</div>
	

</body>
</html>