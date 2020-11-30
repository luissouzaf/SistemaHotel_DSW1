<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Gerenciamento de Hotéis</title>
</head>
<body>
	<%
		String contextPath = request.getContextPath().replace("/", "");
	%>
	<div align="center">
		<h1>Gerenciamento de Hotéis</h1>
		<h2>
			<a href="/<%=contextPath%>/admin/">Menu Principal</a> &nbsp;&nbsp;&nbsp; <a
				href="/<%=contextPath%>/admin/hoteis/cadastro">Adicione Novo Hotel</a>
				
		</h2>
	</div>

	<div align="center">
		<table border="1">
			<caption>Lista de Hoteis</caption>
			<tr>
				<th>ID</th>
				<th>CNPJ</th>
				<th>Nome</th>
				<th>Cidade</th>
				<th>Email</th>
				<th>Senha</th>
				<th>Acões</th>
			</tr>
			<c:forEach var="hotel" items="${requestScope.listaHotel}">
				<tr>
					<td>${hotel.id}</td>
					<td>${hotel.cnpj}</td>
					<td>${hotel.nome}</td>
					<td>${hotel.cidade}</td>
					<td>${hotel.email}</td>
					<td>${hotel.senha}</td>
					<td><a href="/<%= contextPath%>/admin/hoteis/edicao?id=${hotel.id}">Edição</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="/<%= contextPath%>/admin/hoteis/remocao?id=${hotel.id}"
						onclick="return confirm('Tem certeza de que deseja excluir este item?');">
							Remoção </a></td>
				</tr>
			</c:forEach>
		</table>
	</div>

</body>
</html>