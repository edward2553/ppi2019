<%-- 
    Document   : sidebar
    Created on : 7/11/2018, 05:20:30 AM
    Author     : Rxnan
--%>

<%@page import="Controlador.Consultas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    HttpSession objsesion = request.getSession(false);
    Consultas co = new Consultas();

    String SideBarAbierto = request.getParameter("ParaElSideBar");
    if (SideBarAbierto.equals("index")) {
%>
<!DOCTYPE html>
<html class="fontawesome-i2svg-active fontawesome-i2svg-complete">

    <head>

    </head>

    <body>

        <!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <center>
                    <img class="navbar_title" src="imagenes/talentos.png" id="imagenMedio" height="50">
                    <h3 class="tipo-usuario"> Tus Habilidades</h3>
                    <h3 class="usuario-header"> Nombre del usuario</h3>
                </center>
            </div>

            <ul class="list-unstyled components">


                
                <li>
                    <a href="perfil.jsp" id="PerfilAdmins">
                        <i class="fas fa-dollar-sign"></i>
                        <span class="icon-child icono-sidebar"></span>Aca irian 
                    </a>
                </li>
                <li>
                    <a href="perfil.jsp" id="PerfilAdmins">
                        <i class="fas fa-dollar-sign"></i>
                        <span class="icon-child icono-sidebar"></span>todos los
                    </a>
                </li>
                <li>
                    <a href="perfil.jsp" id="PerfilAdmins">
                        <i class="fas fa-dollar-sign"></i>
                        <span class="icon-child icono-sidebar"></span>filtarar
                    </a>
                </li>
                
                

            </ul>

        </nav>
    </body>

</html>
<%}%>