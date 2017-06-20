<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/view-taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Lista Utenti</title>



</head>
<body><br><br>
	<div class="container">
		<center><h3>Utenti registrati</h3></center>
		
		<br>
		
		<table class="table-wrapper">
			<thead>
				<tr>
					<th>Username</th>
					<th>Email</th>
					<th>Operazione</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${users}" var="user"> 
					<tr>
						<td>
							<c:out	value="${user.nome}" />
						</td>
						<td><c:out	value="${user.email}" /></td>
						<td><a href="<spring:url value="/users/remove/${user.id}" />"
							class="button special"> Remove </a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		

		
			</div>
		
	
</body>
</html>