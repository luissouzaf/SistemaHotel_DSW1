<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html"; charset="utf-8">
	<script src="js/ajaxListagemPorCampoSelecao.js"></script>
    
	<title>Lista de hotéis de acordo com a cidade</title>
</head>
<body>

	<jsp:useBean id="bean" class="br.ufscar.dc.dsw.bean.ListagemPorCidadeBean" />
	
	<fmt:bundle basename="messages">
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
			<table border="1" style="width: 400px; border: 1px solid black">
				<tr>
					<td>Cidades com hotéis:</td>
					<td>
						<select id="cidade" name="cidade" onchange="cidadeSelecionada(this.value)">
							<option value="--">Selecione a cidade</option>
							<c:forEach items="${bean.getHotelPorCidade()}" var="cidade">
								<option value="${cidade.getCidade()}">${cidade.getCidade()}</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr id="hoteis">
					<td>Hotéis desta cidade:</td>
					<td>
						<select id="hotel" name="hotel" onchange="apresenta()"></select>
					</td>
				</tr>
			</table>
		</form>
		<br>
	</fmt:bundle>
</body>
</html>
