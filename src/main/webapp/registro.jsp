<%-- 
    Document   : registro
    Created on : 16/09/2025, 11:03:38 p. m.
    Author     : alexj
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Moody - Registro</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap" rel="stylesheet" />
  <style>
    /* Estilos CSS del formulario original */
    body {
      margin: 0;
      font-family: 'Inter', sans-serif;
      background-color: #fff6fc;
      color: #2b2b2b;
    }

    header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 15px 30px;
      background-color: white;
      box-shadow: 0 1px 5px rgba(0, 0, 0, 0.05);
    }

    .logo {
      display: flex;
      align-items: center;
      font-weight: 700;
      font-size: 1.5rem;
    }

    .logo img {
      width: 30px;
      margin-right: 10px;
    }

    nav {
      display: flex;
      gap: 20px;
      align-items: center;
    }

    nav a {
      text-decoration: none;
      color: #333;
      font-weight: 500;
    }

    .buttons {
      display: flex;
      gap: 10px;
    }

    .btn {
      padding: 8px 16px;
      border-radius: 8px;
      border: 1px solid #ccc;
      background-color: white;
      cursor: pointer;
      font-weight: 500;
    }

    .btn-register {
      background-color: #f4caff;
      border: none;
      color: #fff;
    }

    .register-section {
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 60px 40px;
      gap: 60px;
      flex-wrap: wrap;
    }

    .register-form {
      background-color: white;
      padding: 30px 25px;
      border-radius: 15px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      width: 300px;
    }

    .register-form h1 {
      font-size: 2rem;
      margin-bottom: 20px;
    }

    .form-group {
      margin-bottom: 15px;
    }

    .form-group label {
      display: block;
      font-weight: 500;
      margin-bottom: 5px;
    }

    .form-group input {
      width: 100%;
      padding: 10px;
      border-radius: 8px;
      border: 1px solid #ccc;
    }

    .form-group input[type="checkbox"] {
      width: auto;
      margin-right: 8px;
    }

    .checkbox-label {
      display: flex;
      align-items: center;
      font-size: 0.95rem;
      color: #333;
    }

    .form-group small {
      display: block;
      font-size: 0.75rem;
      color: #666;
      margin-left: 25px;
    }

    .register-form button {
      width: 100%;
      background-color: #2b2b2b;
      color: white;
      padding: 12px;
      border: none;
      border-radius: 8px;
      font-weight: 600;
      font-size: 1rem;
      margin-top: 10px;
      cursor: pointer;
    }

    .register-image img {
      max-width: 350px;
      width: 100%;
    }

    @media (max-width: 768px) {
      .register-section {
        flex-direction: column;
        padding: 40px 20px;
        gap: 40px;
      }
    }

    .error-message {
      color: red;
      margin-bottom: 15px;
      padding: 10px;
      background-color: #ffeeee;
      border-radius: 5px;
      border: 1px solid #ffcccc;
    }

    .success-message {
      color: green;
      margin-bottom: 15px;
      padding: 10px;
      background-color: #eeffee;
      border-radius: 5px;
      border: 1px solid #ccffcc;
    }
  </style>
</head>
<body>
  <header>
    <div class="logo">
      <img src="https://cdn-icons-png.flaticon.com/512/168/168882.png" alt="logo" />
      Moody
    </div>
    <nav>
      <a href="index.jsp">Home</a>
      <a href="#">Resources</a>
      <a href="#">Terapy</a>
      <a href="#">My account</a>
    </nav>
    <div class="buttons">
      <button class="btn" onclick="location.href='login.jsp'">Sign in</button>
      <button class="btn btn-register" onclick="location.href='registro.jsp'">Register</button>
    </div>
  </header>

  <section class="register-section">
    <div class="register-form">
      <h1>Regístrate</h1>
      
      <!-- Mostrar mensajes de error o éxito -->
      <c:if test="${not empty errorMessage}">
        <div class="error-message">
          ${errorMessage}
        </div>
      </c:if>
      
      <c:if test="${not empty successMessage}">
        <div class="success-message">
          ${successMessage}
        </div>
      </c:if>

      <form action="RegistroServlet" method="post">
        <div class="form-group">
          <label for="nombre">Nombre completo</label>
          <input type="text" id="nombre" name="nombre" placeholder="Tu nombre completo" required />
        </div>
        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" id="email" name="email" placeholder="Tu email" required />
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" id="password" name="password" placeholder="Tu contraseña" required />
        </div>
        <div class="form-group">
          <label for="fecha_nacimiento">Fecha de nacimiento</label>
          <input type="date" id="fecha_nacimiento" name="fecha_nacimiento" required />
        </div>
        <div class="form-group">
          <label class="checkbox-label">
            <input type="checkbox" name="terminos" required />
            Acepto los términos y condiciones
          </label>
          <small>Al registrarte, aceptas nuestras condiciones de uso y política de privacidad</small>
        </div>
        <button type="submit">Register</button>
      </form>
    </div>

    <div class="register-image">
      <img src="flowerindex.png" alt="flores" />
    </div>
  </section>
</body>
