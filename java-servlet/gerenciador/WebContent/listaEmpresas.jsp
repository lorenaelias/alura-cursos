<%@page import="gerenciador.servlet.Empresa"%>
<%@page import="java.util.List"%>
<%
	List<Empresa> lista = (List<Empresa>)request.getAttribute("listaEmpresas");
%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista Empresas</title>
</head>
<body>
	<ul>
	<% 
		for(Empresa empresa : lista) {
	%>
		<li> <%= empresa.getNome() %> </li>
	<%
		}
	%>
	</ul>
</body>
</html>