<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Log In</title>
</head>

<body>
	<div align="center" ><h3>ACCEDI</h3><br>
	
		<form class="form-signin" role="form"
			action="<spring:url value="/j_spring_security_check" />"
			method="POST">
				
				<div class="field half">
				
					<input type="text" name="j_username" class="form-control"
						placeholder="Nickname" required autofocus>
				</div><br>
				<div class="field half">
					<input type="password" name="j_password" class="form-control"
						placeholder="Password" required autofocus>
				</div>
			
			<br>
			<br>




				<div align="center" ><button class="btn btn-lg btn-primary btn-block" type="submit">Entra</button></div>
		</form>
	</div>
</body>
</html>