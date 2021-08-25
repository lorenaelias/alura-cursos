<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:url value="/alteraEmpresa" var="linkServletAlteraEmpresa"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edita Empresa</title>
</head>
<body>

	<form action="${linkServletAlteraEmpresa}" method="POST">
		Nome: <input type="text" id="nome" name="nome" value="${empresa.nome}">
		Data abertura: <input type="text" id="data" name="data" value="<fmt:formatDate value="${empresa.dataAbertura }" pattern="dd/MM/yyyy"/>">
		<input type="text" name="id" value="${empresa.id}" readonly>
		<input type="submit" value="Alterar">
	</form>
</body>
</html> 