<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Menu do Sistema</title>
    </head>
    
    <body>
	<%
		String contextPath = request.getContextPath().replace("/", "");
	%>
	<div align="center">
		<h1>Página do Site de Reservas</h1>
		<p>Olá ${sessionScope.usuarioLogado.nome}</p>
		<!-- <h2>
				<a href="/<%=contextPath%>/sitereservauser/">Menu Principal</a> &nbsp;&nbsp;&nbsp;
				<a href="/<%=contextPath%>/sitereservauser/cadastro">Adicione Nova Promoção</a>
				
		</h2> -->
	</div>

	<div align="center">
		<table border="1">
			<caption>Lista de Promoções deste site</caption>
			<tr>
				<th>ID</th>
				<th>Preço</th>
				<th>Início da Promoção</th>
				<th>Fim da Promoção</th>
				<th>CNPJ do Hotel</th>
				<th>Url do site</th>
				<th>Acões</th>
			</tr>
			<c:forEach var="promohotel" items="${requestScope.listaPromoHotel}">
				<tr>
					<td>${promohotel.id}</td>
					<td>${promohotel.preco}</td>
					<td>${promohotel.iniciopromo}</td>
					<td>${promohotel.fimpromo}</td>
					<td>${promohotel.hotel.cnpj}</td>
					<td>${promohotel.sitereserva.url}</td>
					<!-- <td><a href="/<%= contextPath%>/hoteluser/edicao?id=${promohotel.id}">Edição</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="/<%= contextPath%>/hoteluser/remocao?id=${promohotel.id}"
						onclick="return confirm('Tem certeza de que deseja excluir este item?');">
							Remoção </a></td> -->
				</tr>
			</c:forEach>
		</table>
	</div>
    <ul>
        <li>
            <a href="${pageContext.request.contextPath}/logout.jsp">Sair</a>
        </li>
    </ul>
</body>
</html>
