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
<title>Confie em si mesmo, APOSTE.</title>
</head>


<body style="width:100%;">
	<header style="width:100%;height:60px;background-color:black;text-align:center;">
		<label style="font-size:20px;color:white;">BANNER</label>
	</header>
	
	<div class="topnav">
	 <a  href="index.jsp">Novo Jogo</a>
	 <a href="BetController">Meus Jogos</a>
	 <a href="about.jsp">Sobre</a>
	</div>
	
	
	<div class="containerProduto" style="width:100%;">
		<form action="BetController" method="post">
			<div>
			<label>JOGOS</label>
			<label>QUANTIDADE</label>
			</div>
			<div style="display: flex;flex-direction: row; width:100%;">
		
				<div style="display: flex;flex-direction: column;">
					<input type="checkbox" id="megaSena" name="aposta" value="megaSena">
					<input type="checkbox" id="loto" name="aposta" value="loto">
					<input type="checkbox" id="quina" name="aposta" value="quina">
				</div>
				
			
				<div style="display: flex;flex-direction: column;">
					<label for="megaSena">MEGA-SENA </label>
					<label for="loto"> LOTO </label>
					<label for="quina"> QUINA </label>
				</div>
				
				<div>
					<input value=0 type="number" id="quina" name="quina"
						class="form-control" style="width: 40px;"
					/>
					<input value=0
						type="number" id="megaSena" name="megaSena" class="form-control"
						style="width: 40px;"
					 />
					<input value=0 type="number" id="loto"
						name="loto" class="form-control" style="width:40px;"
					/>
				</div>
			</div>
			
			<button type="submit" class="btn btn-primary"
				name="ACTION_CREATE_CAR">Gerar aposta</button>
		</form>
	</div>
</body>


</html>