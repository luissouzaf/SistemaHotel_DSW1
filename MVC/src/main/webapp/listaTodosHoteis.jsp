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
	
	<jsp:useBean id='bean' class='br.ufscar.dc.dsw.bean.ListagemPorCidadeBean'/>
	
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
				<th>Email</th>
				<th>Senha</th>
				<th>CNPJ</th>
				<th>Nome</th>
				<th>Cidade</th>
			</tr>
			<c:forEach var="hotel" items="${requestScope.listaHoteis}">
				<tr>
					<td>${hotel.email}</td>
					<td>${hotel.senha}</td>
					<td>${hotel.cnpj}</td>
					<td>${hotel.nome}</td>
					<td>${hotel.cidade}</td>
				</tr>
			</c:forEach>
		</table>
		<form name ='form'>
			<table>
                <tr id='cidades'>    
                    <td>
                        Listar por cidade
                    </td>
                    <td>
                        <select id='cidade' name='cidade' onchange='cidadeSelecionada(this.value)'>
	                        <option value='--'>--</option>
	                            <c:forEach items='${cidade}' var='cidade'>
	                                <option value='${bean.cidade}'>${bean.getAll}</option>
	                            </c:forEach>
                        </select>
                    </td> 
                </tr>
            </table>
		</form>
	</div>
</body>
</html>