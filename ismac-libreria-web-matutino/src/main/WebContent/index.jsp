<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Sistema de Librería</title>
    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #ffffff; /* Fondo blanco */
            color: black; /* Color de texto negro */
            flex-direction: column;
        }
        .intro-container {
            text-align: center;
            animation: fadeIn 2s ease-out;
        }
        h1 {
            font-size: 50px;
            margin: 0;
            animation: slideDown 1.5s ease-out;
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        @keyframes slideDown {
            from { transform: translateY(-100px); }
            to { transform: translateY(0); }
        }
        .button-container {
            margin-top: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .button-libros {
            padding: 10px 20px;
            font-size: 18px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            background-color: #4CAF50; /* Verde */
            color: white;
            transition: background-color 0.3s;
        }
        .button-libros:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="intro-container">
        <h1>¡Bienvenido al Sistema de Librería!</h1>
        <div class="button-container">
            <button class="button-libros" onclick="window.location.href='http://localhost:8080/ismac-libreria-web-matutino/libros/findAll'; return false;">
                Libros
            </button>
        </div>
    </div>
</body>
</html>
