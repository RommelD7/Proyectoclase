<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Borrar tabla</h1>

	<form action="del" method="get">

		<input type="hidden" id="idLibro" name="idLibro"
			value="${libro.idLibro}" /> <strong>Eliminar </strong> <br />
		<button type="submit">Guardar</button>

		<button
			onclick="window.location.href='/ismac-libreria-web-matutino/libro/findAll';return false ;">
			Cancelar</button>
	</form>

</body>
</html>