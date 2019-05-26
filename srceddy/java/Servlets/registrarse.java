/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Controlador.Consultas;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Rxnan
 */
@WebServlet(name = "registrarse", urlPatterns = {"/registrarse"})
public class registrarse extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        /* TODO output your page here. You may use following sample code. */
        PrintWriter out = response.getWriter();

        String usuario = request.getParameter("nombreUsuarioARegistrar");
        String contraseña = request.getParameter("contrasenaARegistrar");
        String botton1 = request.getParameter("btn1");
        String botton2 = request.getParameter("btn2");
        String botton3 = request.getParameter("btn3");

        Consultas co = new Consultas();
        if (botton1 != null || botton2 != null || botton3 != null) {

            if (usuario.equals("") || usuario == null || contraseña.equals("") || contraseña == null  ) {
                
                  out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
                    out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script> ");
                    out.println("<script>");
                    out.println("$(document).ready(function (){");
                    out.println("swal({\n"
                            + "                    type: \"error\",\n"
                            + "                    title: 'Usuario y contraseña son obligatorios',\n"
                            + "                    timer: 4000\n"
                            + "                });");
                    out.println("});");
                    out.println("</script>");

                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    rd.include(request, response);
                
                
            } else {

                if (co.registrarse(usuario, contraseña)) {

                     out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
                    out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script> ");
                    out.println("<script>");
                    out.println("$(document).ready(function (){");
                    out.println("swal({\n"
                            + "                    type: \"success\",\n"
                            + "                    title: 'Registrado correctamente',\n"
                            + "                    timer: 4000\n"
                            + "                });");
                    out.println("});");
                    out.println("</script>");

                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    rd.include(request, response);

                } else {

                    out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
                    out.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script> ");
                    out.println("<script>");
                    out.println("$(document).ready(function (){");
                    out.println("swal({\n"
                            + "                    type: \"error\",\n"
                            + "                    title: 'Registro incorrecto',\n"
                            + "                    timer: 4000\n"
                            + "                });");
                    out.println("});");
                    out.println("</script>");

                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    rd.include(request, response);

                }

            }
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
