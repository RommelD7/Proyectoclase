<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>

<head>

    <meta charset="ISO-8859-1">

    <title>Eliminar Libros</title>

    <style>

        body {

            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;

            background-color: #e9ecef;

            display: flex;

            justify-content: center;

            align-items: center;

            height: 100vh;

            margin: 0;

            flex-direction: column; /* Cambiado para centrar verticalmente */

        }

        h1 {

            color: #343a40;

            text-align: center;

            margin-bottom: 20px;

            position: absolute; /* Posiciona el título en la parte superior */

            top: 20px; /* Ajusta la distancia desde la parte superior */

            width: 100%; /* Asegura que el título esté centrado */

        }

        form {

            background: white;

            padding: 30px;

            border-radius: 10px;

            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);

            width: 300px;

            text-align: center;

            margin-top: 60px; /* Añade espacio para que el formulario no esté pegado al título */

        }

        button {

            background-color: #007bff;

            color: white;

            border: none;

            padding: 10px 15px;

            border-radius: 5px;

            cursor: pointer;

            margin: 10px 0;

            width: 100%;

            transition: background-color 0.3s;

        }

        button:hover {

            background-color: #0056b3;

        }

        .cancel-button {

            background-color: #dc3545;

        }

        .cancel-button:hover {

            background-color: #c82333;

        }

        strong {

            display: block;

            margin-bottom: 15px;

            font-size: 1.1em;

        }

    </style>

</head>

<body>

    <h1>Eliminar libros</h1>

    <form action="del" method="get">

        <input type="hidden" id="idLibro" name="idLibro" value="${libro.idLibro}" />

        <strong>¿Desea Eliminar el dato?</strong>

        <button type="submit">Guardar</button>

        <button type="button" class="cancel-button" onclick="window.location.href='/ismac-libreria-web-matutino/libros/findAll'; return false;">Cancelar</button>   

    </form>

</body>

</html>

 