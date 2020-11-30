<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.util.Date" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sistema para criação de promoções de quarto de hotel em sites de reservas</title>
</head>

<body>
	<%
		String contextPath = request.getContextPath().replace("/", "");
	%>
    <fmt:bundle basename="acessos">
    
	    <strong>Acesso ao Sistema</strong><br>
	    <a href="login.jsp" title="Fazer login">Entre</a><br><br>

	    <form name="fomularioTipoDeListagem" action="hoteluser" method="POST">
			<fieldset>
				<legend>Área para não cadastrados</legend>
				<input type="radio" name ="AreaParaNaoCadastrados" title="área para não cadastrados" value="listaTodosHoteis" checked/>
				<label for="listaTodosHoteis">Listar todos os hotéis ordenados por nome</label><br>
				<input type="radio" name ="AreaParaNaoCadastrados" title="área para não cadastrados" value="listaHoteisPorCidade" />
				<label for="listaHoteisPorCidade">Listar todos os hotéis ordenados por cidade</label><br>
				<input type="submit" value="Listar"/>
			</fieldset>
		</form>
    </fmt:bundle>
    
	<footer>
	    <strong> <%= new Date() %></strong>
	</footer>
</body>
</html>
