<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-BR" style="width:100%;">

<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>APOSTE.</title>
</head>


<body style="width:100%;">

	<header style="width:100%;height:200px;background-color:black;text-align:center;">
		<img src="https://www.intersena.com.br/_common/img/artigos/Banner%20-%20Quina_Prancheta%201.png" width="100%" height="100%"/>
	</header>
	
	<div style="justify-content: space-between;display:flex; margin: 50px;">
	 <a  href="index.jsp">NOVO JOGO</a>
	 <a href="BetController">MEUS JOGOS</a>
	 <a href="about.jsp">SOBRE</a>
	</div>
	
	
	<div class="containerProduto" style="width:100%;">
		<form action="BetController" method="post">
			<div style="display:flex;flex-direction:row;justify-content: space-evenly; ">
				<label style="">JOGOS</label>
				<label style="">QUANTIDADE</label>
			</div>
			
			<div style="display:flex;flex-direction:row; width:100%;">
		
				<div style="display: flex;flex-direction: column; margin: 0 8px 16px 410px">
					<input type="checkbox" id="megaSena" name="aposta" value="megaSena" style="margin: 8px 0">
					<input type="checkbox" id="loto" name="aposta" value="loto" style="margin:  8px 0">
					<input type="checkbox" id="quina" name="aposta" value="quina" style="margin:  8px 0">
				</div>
				
			
				<div style="display: flex;flex-direction: column;margin: 6px 180px 0 12px ">
					<label for="megaSena">MEGA-SENA </label>
					<label for="loto"> LOTO </label>
					<label for="quina"> QUINA </label>
				</div>
				
				<div style="margin: 0 0 0 200px">
					<input value=0 type="number" id="quina" name="quina"
						class="form-control" style="width: 80px;"
					/>
					<input value=0
						type="number" id="megaSena" name="megaSena" class="form-control"
						style="width: 80px;"
					 />
					<input value=0 type="number" id="loto"
						name="loto" class="form-control" style="width:80px;"
					/>
				</div>
				
			</div>
			
			<button type="submit" class="btn btn-primary" style="margin-left: 600px"
				name="ACTION_CREATE_CAR">Gerar aposta</button>
		</form>
	</div>
</body>


</html>