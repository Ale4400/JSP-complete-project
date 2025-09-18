package com.moody.servlets;

import com.moody.dao.UsuarioDAO;
import com.moody.model.Usuario;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegistroServlet")
public class RegistroServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
      
        request.getRequestDispatcher("registro.jsp").forward(request, response);
    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String nombre = request.getParameter("nombre");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String fechaNacStr = request.getParameter("fecha_nacimiento");
        
     
        Date fechaNacimiento;
        fechaNacimiento = null;
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            fechaNacimiento = sdf.parse(fechaNacStr);
        } catch (ParseException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Formato de fecha incorrecto");
            request.getRequestDispatcher("registro.jsp").forward(request, response);
            return;
        }
        
       
        Usuario usuario = new Usuario(nombre, email, password, fechaNacimiento);
        
        
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        boolean exito = usuarioDAO.insertarUsuario(usuario);
        
        if (exito) {
            request.setAttribute("successMessage", "Usuario registrado exitosamente");
            response.sendRedirect("login.jsp");
        } else {
            request.setAttribute("errorMessage", "Error al registrar usuario. El email puede estar en uso.");
            request.getRequestDispatcher("registro.jsp").forward(request, response);
        }
    }
}