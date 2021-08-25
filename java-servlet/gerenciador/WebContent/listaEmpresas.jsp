<%@page import="gerenciador.servlet.Empresa"%>
<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:url value="/removeEmpresa" var="linkServletRemoveEmpresa"/>
<c:url value="/mostraEmpresa" var="linkServletMostraEmpresa"/>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Standard Taglib</title>
</head>
<body>
	<h2>Lista Empresas</h2>
	<ul>
		<c:forEach items="${listaEmpresas}" var="empresa">
			<li> 
				${empresa.nome } - <fmt:formatDate value="${empresa.dataAbertura }" pattern="dd/MM/yyyy"/> 
				<a href="${linkServletMostraEmpresa}?id=${empresa.id}">editar</a>
				<a href="${linkServletRemoveEmpresa}?id=${empresa.id}">remover</a>
			</li>
		</c:forEach>
		
	</ul>
</body>
</html>