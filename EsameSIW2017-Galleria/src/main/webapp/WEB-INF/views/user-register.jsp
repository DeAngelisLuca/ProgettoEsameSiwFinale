<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>

<title>Registrazione Utente</title>

</head>
<body>
	<br>
	<br>
	<div class="container">
		<form:form commandName="user"
			cssClass="form-horizontal registrationForm">

			<c:if test="${param.success eq true }">
				<div class="alert alert-success"><strong>Registrazione effettuata con
					successo!</strong></div>
			</c:if>
			<c:if test="${param.success eq false }">
				<div class="alert alert-danger"><strong>Nickname gia' utilizzato!
					</strong></div>
			</c:if>

			<div class="form-group">
				<label for="nome" class="col-sm-2 control-label"
					style="font-size: large;"> Nickname: </label>
				<div class="col-sm-10">
					<form:input path="nome" cssClass="form-control" />
					<form:errors path="nome" />
				</div>
			</div>


			<div class="form-group">
				<label for="email" class="col-sm-2 control-label" 
					style="font-size: large;"> Email: </label>
				<div class="col-sm-10">
					<form:input path="email" cssClass="form-control" />
					<form:errors path="email" />
				</div>
			</div>


			<div class="form-group">
				<label for="password" class="col-sm-2 control-label"
					style="font-size: large;"> Password: </label>
				<div class="col-sm-10">
					<form:password path="password" cssClass="form-control" />
					<form:errors path="password" />
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-2">
				<br><br>
					<input type="submit" value="Invia Dati" class="btn btn-info" style="font-style: italic;" />
				</div>
			</div>
		</form:form>
	</div>

</body>
</html>