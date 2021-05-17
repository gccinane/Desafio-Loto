<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-BR">

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


<body>

<!-- 
			<div style="display: flex;flex-direction: column; width:'100%'">
				<input type="checkbox" id="megaSena" name="aposta" value="megaSena">
				<label for="megaSena"> MEGA-SENA </label>
				<input type="checkbox" id="loto" name="aposta" value="loto">
				<label for="loto"> LOTO </label>
				<input type="checkbox" id="quina" name="aposta" value="quina">
				<label for="quina"> QUINA </label>
			</div>
 -->
 
	<div class="containerProduto">
		<form action="BetController" method="post">
			<div>
				<input value=0 type="number" id="quina" name="quina"
					class="form-control" style="width: 5%"
				/>
				<input value=0
					type="number" id="megaSena" name="megaSena" class="form-control"
					style="width: 5%"
				 />
				<input value=0 type="number" id="loto"
					name="loto" class="form-control" style="width:5%"
				/>
			</div>
			
			<button type="submit" class="btn btn-primary"
				name="ACTION_CREATE_CAR">Gerar aposta</button>
		</form>

		<form action="BetController" method="get">
			<button type="submit" class="btn btn-primary">Listar apostas</button>
	
		</form>
		
	</div>
</body>


</html>