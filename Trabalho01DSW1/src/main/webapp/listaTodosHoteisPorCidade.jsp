<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="js/ajaxTipoListagem.js"></script>
    
	<title>Lista de hotéis do banco de dados Hotéis de acordo com a cidade</title>
</head>
<body>
	
	<jsp:useBean id='bean' class='src.br.ufscar.dc.dsw.bean.ListagemPorCidadeBean' />
		
	<div align="center">
		<h1>Sistema para criação de promoções de quarto de hotel em sites de reservas</h1>
		<h2>
			<a href="login_administrador.jsp">Área para login de administrador</a>
			<a href="login_hoteis_reservas.jsp" title="área de acesso ao sistema de hotéis e sistema de reservas">Área para login de hotéis e sistema de reservas</a><br/>
		</h2>
	</div>
	<form name='form'>
	
		<label for="listaHoteisPorCidade">Insira o nome da cidade:</label>
		<input id="listaHoteisPorCidade" name="listaHoteisPorCidade" placeholder="Pelo menos 2 caracteres" onkeyUp="getHotelPorCidade()"/>
		<div id="hoteis">	
			<table border="1" style="width: 400px; border: 1px solid black">
				<tr>
					<th style="width: 10%; text-align: center"></th>
					<th>Nome do hotel</th>
				</tr>
					<c:forEach var="listaHoteisPorCidade" items="${bean.getHotelPorCidade()}">
						<tr>
							<td style="text-align: center"><input
								type="radio" id="${listaHoteisPorCidade.getNomeHotel()}"
								name="selCidade" value="${listaHoteisPorCidade.getNomeHotel()}"
								onclick="alert('Hotel: ${listaHoteisPorCidade.getNomeHotel()}')">
							</td>
							<td>${listaHoteisPorCidade.getNomeHotel()}</td>
						</tr>
					</c:forEach>
			</table>
		</div>
	</form>
	<br/>
</body>
</html>