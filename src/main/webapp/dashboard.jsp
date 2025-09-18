<%-- 
    Document   : dashboard
    Created on : 16/09/2025, 11:03:56 p. m.
    Author     : alexj
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Moody - Dashboard</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap" rel="stylesheet" />
  <style>
    /* Estilos para el dashboard */
    .dashboard-container {
      max-width: 1000px;
      margin: 0 auto;
      padding: 20px;
    }
    
    .user-info {
      background-color: white;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 2px 10px rgba(0,0,0,0.1);
      margin-bottom: 20px;
    }
    
    .users-table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }
    
    .users-table th, .users-table td {
      padding: 12px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }
    
    .users-table th {
      background-color: #f4caff;
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
      <button class="btn" onclick="location.href='LogoutServlet'">Cerrar Sesión</button>
    </div>
  </header>

  <div class="dashboard-container">
    <h1>Dashboard</h1>
    
    <div class="user-info">
      <h2>Bienvenido, ${sessionScope.usuario.nombre}</h2>
      <p>Email: ${sessionScope.usuario.email}</p>
      <p>Fecha de registro: ${sessionScope.usuario.fechaRegistro}</p>
    </div>
    
    <h2>Usuarios Registrados</h2>
    <table class="users-table">
      <thead>
        <tr>
          <th>ID</th>
          <th>Nombre</th>
          <th>Email</th>
          <th>Fecha de Registro</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="usuario" items="${usuarios}">
          <tr>
            <td>${usuario.id}</td>
            <td>${usuario.nombre}</td>
            <td>${usuario.email}</td>
            <td>${usuario.fechaRegistro}</td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
</body>
