<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Gerenciamento de Sites de Reserva</title>
</head>
<body>
	<%
		String contextPath = request.getContextPath().replace("/", "");
	%>
	<div align="center">
		<h1>Gerenciamento de Sites de Reserva</h1>
		<h2>
			<a href="/<%=contextPath%>/admin/">Menu Principal</a> &nbsp;&nbsp;&nbsp; <a
				href="/<%=contextPath%>/admin/reservas/cadastro">Adicione Novo Site de Reserva</a>
				
		</h2>
	</div>

	<div align="center">
		<table border="1">
			<caption>Lista de Sites</caption>
			<tr>
				<th>ID</th>
				<th>Url</th>
				<th>Nome</th>
				<th>Telefone</th>
				<th>Email</th>
				<th>Senha</th>
				<th>Acões</th>
			</tr>
			<c:forEach var="site" items="${requestScope.listaSiteReserva}">
				<tr>
					<td>${site.id}</td>
					<td>${site.url}</td>
					<td>${site.nome}</td>
					<td>${site.telefone}</td>
					<td>${site.email}</td>
					<td>${site.senha}</td>
					<td><a href="/<%= contextPath%>/admin/reservas/edicao?id=${site.id}">Edição</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="/<%= contextPath%>/admin/reservas/remocao?id=${site.id}"
						onclick="return confirm('Tem certeza de que deseja excluir este item?');">
							Remoção </a></td>
				</tr>
			</c:forEach>
		</table>
	</div>

</body>
</html>