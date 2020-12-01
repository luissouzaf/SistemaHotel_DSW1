<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<fmt:bundle basename="messages">
<head>
	<meta http-equiv="Content-Type" content="text/html"; charset="utf-8">
	<script src="js/ajaxListagemPorCampoSelecao.js"></script>
    
	<title>
		<fmt:message key="listaTodosHoteisPorCidadeTitle"/>
	</title>
</head>
<body>

	<jsp:useBean id="bean" class="br.ufscar.dc.dsw.bean.ListagemPorCidadeBean" />
	
		<strong><fmt:message key="system_access"/></strong><br>
		<a href="login.jsp" title="Fazer login"><fmt:message key="entrar"/></a><br><br>
		<form method="post" action="index.jsp">
	    	<tr>
	        	<td colspan="2"> 
	        		<fmt:message key="voltar" var="voltarMessage"/>
	                <input type="submit" name="voltar" value="${voltarMessage}"/>
	            </td>
	        </tr>
	    </form>
		
		<form name="form">
			<table border="1" style="width: 400px; border: 1px solid black">
				<tr>
					<td><fmt:message key="cidades_com_hoteis"/>:</td>
					<td>
						<select id="cidade" name="cidade" onchange="cidadeSelecionada(this.value)">
							<option value="--"><fmt:message key="select_city"/></option>
							<c:forEach items="${bean.getHotelPorCidade()}" var="cidade">
								<option value="${cidade.getCidade()}">${cidade.getCidade()}</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr id="hoteis">
					<td><fmt:message key="hoteis_da_cidade"/>:</td>
					<td>
						<select id="hotel" name="hotel" onchange="apresenta()"></select>
					</td>
				</tr>
			</table>
		</form>
		<br>
</body>
</fmt:bundle>
</html>
