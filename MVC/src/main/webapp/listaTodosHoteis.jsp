<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
	<title>Lista de hotéis da tabela Hotel</title>
	<script src="js/ajaxTipoListagem.js"></script>
</head>
<body>
	<%
		String contextPath = request.getContextPath().replace("/", "");
	%>
	
	<jsp:useBean id="bean" class="br.ufscar.dc.dsw.bean.ListagemPorCidadeBean"/>
	
	<strong>Acesso ao Sistema</strong><br>
	<a href="login.jsp" title="Fazer login">Entre</a><br><br>
	<form method="post" action="index.jsp">
    	<tr>
        	<td colspan="2"> 
                <input type="submit" name="voltar" value="Voltar para Página Inicial"/>
            </td>
        </tr>
    </form>

	<div align="center">
		<table border="1">
			<caption>Lista de Hotéis</caption>
			<tr>
				<th>Nome</th>
				<th>Email</th>
				<th>Cidade</th>
				<th>CNPJ</th>
			</tr>
			<c:forEach var="hotel" items="${requestScope.listaHoteis}">
				<tr>
					<td>${hotel.nome}</td>
					<td>${hotel.email}</td>
					<td>${hotel.cidade}</td>
					<td>${hotel.cnpj}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
