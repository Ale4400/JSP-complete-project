<%-- 
    Document   : login
    Created on : 16/09/2025, 11:03:22 p. m.
    Author     : alexj
--%>
<<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Moody - Login</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap" rel="stylesheet" />
  <style>
   
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

    .login-section {
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 60px 40px;
      gap: 60px;
      flex-wrap: wrap;
    }

    .login-form {
      background-color: white;
      padding: 30px 25px;
      border-radius: 15px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      width: 300px;
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

  <section class="login-section">
    <div class="login-form">
      <h1>Iniciar Sesión</h1>
      
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

      <form action="LoginServlet" method="post">
        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" id="email" name="email" placeholder="Tu email" required />
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" id="password" name="password" placeholder="Tu contraseña" required />
        </div>
        <button type="submit">Iniciar Sesión</button>
      </form>
      
      <p style="text-align: center; margin-top: 20px;">
        ¿No tienes cuenta? <a href="registro.jsp">Regístrate aquí</a>
      </p>
    </div>

    <div class="login-image">
      <img src="flowerindex.png" alt="flores" />
    </div>
  </section>
</body>
</html>