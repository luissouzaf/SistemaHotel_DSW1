<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.util.Date" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<fmt:bundle basename="messages">
<head>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>
		<fmt:message key="indexTitle"/>
    </title>
</head>

<body>
	<%
		String contextPath = request.getContextPath().replace("/", "");
	%>
    
	    <strong><fmt:message key="system_access"/></strong><br>
	    <a href="login.jsp" title="Fazer login"><fmt:message key="faca_login"/></a><br><br>

	    <form name="fomularioTipoDeListagem" action="hoteluser" method="POST">
			<fieldset>
				<legend><fmt:message key="non_registered"/></legend>
				<input type="radio" name ="AreaParaNaoCadastrados" title="área para não cadastrados" value="listaTodosHoteis" checked/>
				<label for="listaTodosHoteis"><fmt:message key="list_by_name"/></label><br>
				<input type="radio" name ="AreaParaNaoCadastrados" title="área para não cadastrados" value="listaHoteisPorCidade" />
				<label for="listaHoteisPorCidade"><fmt:message key="list_by_city"/></label><br>
				<fmt:message key="list" var="listMessage"/>
				<input type="submit" value="${listMessage}"/>
			</fieldset>
		</form>
    
	<footer>
	    <strong> <%= new Date() %></strong>
	</footer>
</body>
</fmt:bundle>
</html>
