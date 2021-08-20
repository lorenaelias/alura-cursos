<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/novaEmpresa" var="linkServletNovaEmpresa"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nova Empresa</title>
</head>
<body>

	<form action="${linkServletNovaEmpresa}" method="POST">
		Nome: <input type="text" id="nome" name="nome">
		Data abertura: <input type="text" id="data" name="data">
		<input type="submit" value="Cadastrar">
	</form>
</body>
</html> 