<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="br.ufscar.dc.dsw.domain.Cidade" %>

<!DOCTYPE html>
<html>
<fmt:bundle basename="messages">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
	<title>
		<fmt:message key="listaTodosHoteisPorCidadeTitle"/>
	</title>
</head>
	<body>
			<div align="center">
				<h1><fmt:message key="listaTodosHoteisPorCidadeTitle"/></h1>
				<strong><fmt:message key="system_access"/></strong><br>
	    		<a href="login.jsp" title="Fazer login"><fmt:message key="entrar"/></a><br><br>
			</div>
			<% String strCidade = request.getParameter("teste"); %>

			<form name="form">
					<table border="1" style="width: 400px; border: 1px solid black">
		                <tr>
		                    <td><fmt:message key="hoteis_disponiveis"/> <%= strCidade%></td>
		                    <td></td>
		                </tr>
					</table>
			</form>
			<br>
	</body>
</fmt:bundle>
</html>
