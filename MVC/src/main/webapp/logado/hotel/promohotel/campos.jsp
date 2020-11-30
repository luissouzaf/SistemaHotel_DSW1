<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table border="1">
	<caption>
		<c:choose>
			<c:when test="${promohotel != null}">
                            Edição
                        </c:when>
			<c:otherwise>
                            Cadastro
                        </c:otherwise>
		</c:choose>
	</caption>
	<c:if test="${promohotel != null}">
		<input type="hidden" name="id" value="${promohotel.id}" />
	</c:if>

	<tr>
		<td><label for="preco">Preço</label></td>
		<td><input type="number" id="preco" name="preco" required
			min="0.01" step="any" size="5" value="${promohotel.preco}" /></td>
	</tr>
	<tr>
		<td><label for="iniciopromo">Inicio da Promoção</label></td>
		<td><input type="text" id="iniciopromo" name="iniciopromo" size="45" required
			value="${promohotel.iniciopromo}" /></td>
	</tr>
	<tr>
		<td><label for="fimpromo">Fim da Promoção</label></td>
		<td><input type="text" id="fimpromo" name="fimpromo" size="45" required
			value="${promohotel.fimpromo}" /></td>
	</tr>
	<tr>
		<td><label for="sitereserva">Site de Reservas</label></td>
		<td><select id="sitereserva" name="sitereserva">
				<c:forEach items="${sites}" var="sitereserva">
					<option value="${sites.key}"
						${promohotel.sitereserva.nome==sitereserva.value ? 'selected' : '' }>
						${sitereserva.value}</option>
				</c:forEach>
		</select></td>
	</tr>

	<tr>
		<td colspan="2" align="center"><input type="submit" value="Salva" /></td>
	</tr>
</table>