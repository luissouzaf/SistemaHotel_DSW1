<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table border="1">
	<caption>
		<c:choose>
			<c:when test="${sitereserva != null}">
                            Edição
                        </c:when>
			<c:otherwise>
                            Cadastro
                        </c:otherwise>
		</c:choose>
	</caption>
	<c:if test="${sitereserva != null}">
		<input type="hidden" name="id" value="${sitereserva.id}" />
	</c:if>
	<tr>
		<td><label for="url">Url</label></td>
		<td><input type="text" id="url" name="url" size="45"
			required value="${sitereserva.url}" /></td>
	</tr>
	<tr>
		<td><label for="nome">Nome</label></td>
		<td><input type="text" id="nome" name="nome" size="45" 
			required value="${sitereserva.nome}" /></td>
	</tr>

	<tr>
		<td><label for="telefone">Telefone</label></td>
		<td><input type="text" id="telefone" name="telefone" size="45"
			required value="${sitereserva.telefone}" /></td>
	</tr>
	<tr>
		<td><label for="email">E-mail</label></td>
		<td><input type="text" id="email" name="email" 
			required value="${sitereserva.email}" /></td>
	</tr>
	<tr>
		<td><label for="senha">senha</label></td>
		<td><input type="text" id="senha" name="senha" 
			required value="${sitereserva.senha}" /></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="submit" value="Salva" /></td>
	</tr>
</table>