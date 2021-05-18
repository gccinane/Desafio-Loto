<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<meta charset="ISO-8859-1">
	<title>Listagem de carros</title>
</head>
	<body>
		<header style="width:100%;height:200px;background-color:black;text-align:center;">
		<img src="https://www.intersena.com.br/_common/img/artigos/Banner%20-%20Quina_Prancheta%201.png" width="100%" height="100%"/>
	</header>
	
	<div style="justify-content: space-between;display:flex; margin: 50px;">
	 <a  href="index.jsp">NOVO JOGO</a>
	 <a href="BetController">MEUS JOGOS</a>
	 <a href="about.jsp">SOBRE</a>
	</div>
		<div>
			<table class="table">
			<thead>
			 <tr>
			    <th scope="col">First name</th>
			    <th scope="col">Last Name</th>
			    <th scope="col" colspan=1></th>
			  </tr>
			</thead>
			<tbody>
				<c:forEach items = "${list}" var = "bet">
					
				    <tr>
				      <td>${bet.name}</td>
				      <td>${bet.content}</td>
				      <td scope="row">
				      	<a href="BetController?action=delete&betId=<c:out
							value="${bet.id}"/>"
							>Excluir</a>
					  </td>
				    </tr>
			  	</c:forEach>
			</tbody>			  
			</table>
		</div>
	</body>
</html>