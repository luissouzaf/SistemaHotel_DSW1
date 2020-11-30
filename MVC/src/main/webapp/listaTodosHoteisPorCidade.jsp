<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html"; charset="utf-8">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script>
            $(function () {
                $("#listaCidade").autocomplete({
                    select: function (event, ui) {
                        alert("Selecionado: " + ui.item.value);
                    },
                    source: "ListagemDeCidadesController", // HotelPorCidadeController é um controller da classe HotelPorCidadeController  
                    minLength: 1
                });
            });
	</script>
	<script src="js/ajaxListagemDeHoteisPorCidade.js"></script>
    
	<title>Lista de hotéis do banco de dados Hotéis de acordo com a cidade</title>
</head>
<body>

	<jsp:useBean id="bean" class="br.ufscar.dc.dsw.bean.ListagemPorCidadeBean" />
		
	<strong>Acesso ao Sistema</strong><br>
	<a href="login.jsp" title="Fazer login">Entre</a><br><br>
	<form method="post" action="index.jsp">
    	<tr>
        	<td colspan="2"> 
                <input type="submit" name="voltar" value="Voltar para Página Inicial"/>
            </td>
        </tr>
    </form>
	
	<form name="form">
		<div id="cidades">
			<label for="listaCidade">Nome</label>
			<input id="listaCidade" name="listaCidade" placeholder="Pelo menos 2 caracteres" onkeyUp="getCidadesAjax()"/>
			
			<table border="1" style="width: 400px; border: 1px solid black">
				<tr>
					<th style="width: 10%; text-align: center"></th>
					<th>Nome</th>
				</tr>
					<c:forEach var="listaHoteisPorCidade" items="${bean.cidades}">
						<tr>
							<td style="text-align: center"><input
								type="radio" id="${listaHoteisPorCidade.getNomeCidade()}"
								name="selCidade" value="${listaHoteisPorCidade.getNomeCidade()}"
								onclick="alert('Cidade: ${listaHoteisPorCidade.getNomeCidade()}')">
							</td>
							<td>${listaHoteisPorCidade.getNomeHotelDaCidade()}</td>
						</tr>
					</c:forEach>
			</table>
		</div>
	</form>
	<br>
</body>
</html>