<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página do Administrador</title>
    </head>
    <body>
     <h1>Página do Administrador</h1>
     <p>Olá ${sessionScope.usuarioLogado.nome}</p>

	    <ul>
	    	<li>
	        	<a href="hoteis/">Gerenciamento de Hotéis</a>
	        </li>
	        
	        <li>
	        	<a href="reservas/">Gerenciamento de Sites de Reserva</a>
	        </li>
	        
        </ul>

        <a href="${pageContext.request.contextPath}/logout.jsp">Sair</a>

    </body>
</html>
