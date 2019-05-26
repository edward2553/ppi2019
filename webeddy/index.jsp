<%-- 
    Document   : index
    Created on : 19/05/2019, 11:45:21 AM
    Author     : Rxnan
--%>
<%@page import="Controlador.Consultas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="fontawesome-i2svg-active fontawesome-i2svg-complete">
    <head>

        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <link href="css/navbar.css" rel="stylesheet" type="text/css"/>
        <link href="css/ingreso.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilossidebar.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="css/carusel.css">
        <script defer src="https://use.fontawesome.com/releases/v5.8.2/js/all.js" integrity="sha384-DJ25uNYET2XCl5ZF++U8eNxPWqcKohUUBUpKGlNLMchM7q4Wjg2CUpjHLaL8yYPH" crossorigin="anonymous"></script>
        <title>PoliTalentos</title> <!--titulo-->
    </head>
    <body>
        <!--navbar-->

        <%

            HttpSession objsesion = request.getSession(false);

            Consultas co = new Consultas();
            String usuario = (String) objsesion.getAttribute("usuario");

            if (usuario != null) {
        %>
        <!--Navbar-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <div class="navbar-header">
                    <img class="navbar_title" src="imagenes/talentos.png" id="imagenMedio" height="50">
                    <a class="navbar_title " href=""><span class="icon-home icono-navbar"></span>PoliTalentos</a>
                </div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent2" aria-controls="navbarSupportedContent2" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent2">
                    <ul class="nav  mr-auto">
                    </ul> 

                    <ul class="nav">

                        <li class="active"><a class="navbar_item usuario_nav" href="#"><span class="icon-user"></span><%out.print(usuario);%></a>
                        </li>
                        <span class="linea-vertical"></span>
                        <li class="nav-item dropdown">
                            <a class=" navbar_item" id="OptionMenuPrincipal" href="#" id="navbarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Opciones ▼
                            </a>
                            <!-- deplegable de opciones -->
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <button 
                                    class="dropdown-item" name="PerfilMenuPr" onclick="location.href =
                                                    'perfil.jsp'">Perfil</button>
                                <div class="dropdown-divider"></div>
                                <button 
                                    class="dropdown-item" name="Mis_Tarjetas"onclick="location.href =
                                                    'index.jsp?cerrar=true'">Mis Tarjetas</button>

                                <button 
                                    class="dropdown-item" name="Mis_Favoritas" onclick="location.href =
                                                    'index.jsp?cerrar=true'">Mis Favoritas</button>

                                <div class="dropdown-divider"></div>
                                <button 
                                    class="dropdown-item" name="salirMenuPr" onclick="location.href =
                                                    'index.jsp?cerrar=true'">Salir</button>

                            </div>

                        </li>


                    </ul> 

                </div>
            </div>
        </nav>




        <%

        } else {

        %>
        <!--Navbar-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <div class="navbar-header">
                    <img class="navbar_title" src="imagenes/talentos.png" id="imagenMedio" height="50">
                    <a class="navbar_title " href=""><span class="icon-home icono-navbar"></span>PoliTalentos</a>
                </div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="nav  mr-auto">
                    </ul> 
                    <form class="form-inline my-2 my-lg-0">

                        <button class="btn btn-outline-success my-2 my-sm-0" data-toggle="modal" 
                                data-target="#iniciarSesion" name="btn_iniciar_sesion" type="button">Iniciar Sesión</button>


                        <span class="linea-vertical"></span>
                        <button class="btn btn-outline-success my-2 my-sm-0" data-toggle="modal"  data-target="#registrarse" name="btn_registrarse"   type="button">Registrarse</button>
                    </form>
                </div>
            </div>
        </nav>
        <%}%>

        <div class="wrapper">    
            <!-- Sidebar  -->
<!--                        <nav id="sidebar">
                            <div class="sidebar-header">
                                <center>
                                    <img src="imagenes/imagen-usuario.png" class="imagen-usuario" alt="">
                                </center>
                            </div>
                            <ul class="list-unstyled components">
                                <li>
                                    <a href="" id="precio">
                                        <i class="fas fa-dollar-sign"></i>
                                        <span class="icon-child icono-sidebar"></span>Precio 
                                    </a>
            
                                    <a>
                                        <div class="row">
                                            <div class="col-6">
                                                <input type="number" class="form-control"  id="precio_min" maxlength="10" placeholder="min">
                                            </div>
                                            <div class="col-6">
                                                <input type="number" class="form-control"  id="precio_max" maxlength="10" placeholder="min">
                                            </div>
            
                                        </div>
                                    </a>
                                </li>
            
                                <li>
                                    <a href="" id="precio">
                                        <i class="far fa-calendar-alt"></i>
                                        <span class="icon-child icono-sidebar"></span>Fecha 
                                    </a>
                                    <a>
                                        <div class="row">
                                            <div class="col-6">
                                                <input type="date" class="form-control"  id="fecha_desde" >
                                            </div>
                                            <div class="col-6">
                                                <input type="date" class="form-control"  id="fecha_hasta" >
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="" id="precio">
                                        <i class="fas fa-map-marker-alt"></i>
                                        <span class="icon-child icono-sidebar"></span>Ubicaciòn 
                                    </a>
                                    <a>
                                        <div class="row">
                                            <div class="col-12">
            
                                                <select class="custom-select" id="inputGroupSelect01">
                                                    <option selected>Seleccione...</option>
                                                    <option>Medellin</option>
                                                    <option>Bogota</option>
                                                    <option>Cali</option>
                                                    <option>Barranquilla</option>
                                                    <option>Santa Marta</option>
                                                    <option>Cartagena</option>
                                                </select>
                                            </div>
            
                                        </div>
                                    </a>
                                </li>
            
            
            
            
                                <center>
                                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
                                </center>    
            
            
            
            
            
                            </ul>
                        </nav>-->

            <nav id="sidebar">
                <div class="sidebar-header">
                    <center>
                        <img src="imagenes/imagen-usuario.png" class="imagen-usuario" alt="">
                    </center>
                </div>
                <ul class="list-unstyled components">
                    <li>
                        <a href="#" id="precio">
                            <i class="fas fa-dollar-sign"></i>
                            <span class="icon-child icono-sidebar"></span>Precio 


                            <div class="col-12">
                                <input type="number" class="form-control"  id="precio_min" maxlength="10" placeholder="Min">
                            </div>
                            <div class="col-12">
                                <input type="number" class="form-control"  id="precio_max" maxlength="10" placeholder="Max">
                            </div>


                        </a>
                    </li>

                    <li>
                        <a href="#" id="fecha">
                            <i class="far fa-calendar-alt"></i>
                            <span class="icon-child icono-sidebar"></span>Fecha 


                            <div class="col-12">
                                <input type="date" class="form-control" placeholder="desde" id="fecha_desde" >
                            </div>
                            <div class="col-12">
                                <input type="date" class="form-control" placeholder="hasta"  id="fecha_hasta" >
                            </div>

                        </a>
                    </li>
                    <li>
                        <a  id="precio">
                            <i class="fas fa-map-marker-alt"></i>
                            <span class="icon-child icono-sidebar"></span>Ubicaciòn 

                            <div class="row">
                                <div class="col-12">

                                    <select class="custom-select" id="inputGroupSelect01">
                                        <option selected>Seleccione...</option>
                                        <option>Barranquilla</option>
                                        <option>Bogota</option>
                                        <option>Cali</option>
                                        <option>Cartagena</option>
                                        <option>Medellin</option>
                                        <option>Santa Marta</option>

                                    </select>
                                </div>

                            </div>
                        </a>
                    </li>




                    <center>
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
                    </center>    





                </ul>
            </nav>


            <!-- Modal Iniciar-->
            <form action="iniciarSesion" method="post" onsubmit="">
                <div id="iniciarSesion" class="modal fade" role="dialog">
                    <br>
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Iniciar Sesion</h4>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class=" col-xs-12 col-sm-12 col-md-12 col-lg-12">

                                        <center>
                                            <i class="fas fa-user"></i>
                                            <label class="text-center">Usuario</label>
                                        </center>                                                                  
                                    </div>                  
                                </div>
                                <div class="row">
                                    <div class=" col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <center>
                                            <input type="text" class="form-control" name="usuario_iniciar" id="txtusuario" required="" placeholder="Ingrese su usuario">
                                        </center>

                                    </div>

                                </div>
                                <div class="row mt-3">
                                    <div class=" col-xs-12 col-sm-12 col-md-12 col-lg-12">

                                        <center>
                                            <i class="fas fa-unlock"></i>
                                            <label class="text-center" >Contraseña</label>
                                        </center>                                                                  
                                    </div>                  
                                </div>
                                <div class="row">
                                    <div class=" col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <center>
                                            <input type="password" class="form-control" name="contrasena_iniciar" id="txtcontraseña" required="" placeholder="Ingrese su contraseña">
                                        </center>

                                    </div>

                                </div>

                                <div class="row mt-5">

                                    <div class=" col-xs-12 col-sm-12 col-md-6 col-lg-6 ">
                                        <!--                                        <input type="submit" name="btnAgregarSiEmpresa" value="Iniciar Sesión"
                                                                                       class="form-control aceptar-modal" />-->
                                        <center>
                                            <button class="btn btn-outline-success my-2 my-sm-0 w-100" type="submit" name="btnIniciarSesion">Iniciar Sesión</button>  
                                        </center> 
                                    </div>
                                    <div class=" col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                        <!--                                        <button type="button" class="form-control btn btn-md aceptar-modal"
                                                                                        data-dismiss="modal">Cancelar</button>-->
                                        <center> 
                                            <button class="btn btn-outline-success my-2 my-sm-0 w-100 " type="submit" data-dismiss="modal">Cancelar</button>
                                        </center>
                                    </div>
                                    <a class="ml-auto mr-4" href="#">Olvisdaste tu contraseña</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

            <!--Modals registrarse -->


            <div id="registrarse" class="modal fade" role="dialog">
                <br>
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header ml-auto mr-auto">



                            <nav >
                                <div class="nav nav-tabs " id="nav-tab" role="tablist">
                                    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Usuario</a>
                                    <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Personal</a>
                                    <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Academico</a>
                                </div>
                            </nav>


                        </div>
                        
                            <div class="modal-body">
                                <div class="tab-content" id="nav-tabContent">
                                   
                                    <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                         <form action="registrarse" method="post">
                                    
                                        <div class="row">
                                            <div class=" col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                                <i class="fas fa-user"></i>
                                                <label>Usuario <span class="marca-obligatoriedad">*</span></label>
                                                <input type="text" id="primer_nombreArtista" name="nombreUsuarioARegistrar"
                                                       required="" class="form-control">
                                            </div>
                                            <div class=" col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                                <i class="fas fa-envelope"></i>
                                                <label>Correo electronico</label>

                                                <input type="text" name="segundo_nombreArtista" class="form-control">
                                            </div>

                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                                <i class="fas fa-unlock"></i>
                                                <label>Contraseña<span class="marca-obligatoriedad">*</span></label>
                                                <input type="text" id="primer_apellidoArtista" name="contrasenaARegistrar"
                                                       required="" class="form-control">
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                                <i class="fas fa-unlock"></i>
                                                <label>Repita contraseña</label>
                                                <input type="text" name="segundo_apellidoArtista" class="form-control">
                                            </div>
                                        </div>

                                        <div class="row mt-3">
                                            <div class=" col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                <span class="aviso-obligatoriedad">Todos los campos marcados con * son
                                                    obligatorios</span>
                                            </div>

                                            <div class=" col-xs-12 col-sm-12 col-md-6 col-lg-6">


                                                <button class="btn btn-outline-success my-2 my-sm-0 w-100" 
                                                        type="submit" name="btn1">Registarse</button>  


                                            </div>
                                            <div class=" col-xs-12 col-sm-12 col-md-6 col-lg-6">


                                                <button class="btn btn-outline-success my-2
                                                        my-sm-0 w-100 " type="submit" data-dismiss="modal">Cancelar</button>

                                            </div>
                                        </div>
                                             </form>
                                    </div>
                                    <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                                        <div class="row">
                                            <div class=" col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                                <i class="fas fa-user"></i>
                                                <label>Nombres <span class="marca-obligatoriedad">*</span></label>
                                                <input type="text" id="primer_nombreArtista" name="primer_nombreArtista"
                                                       required="" class="form-control">
                                            </div>
                                            <div class=" col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                                <i class="fas fa-user"></i>
                                                <label>Apellidos</label>

                                                <input type="text" name="segundo_nombreArtista" class="form-control">
                                            </div>

                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                                <i class="fas fa-phone"></i>
                                                <label>Telefono<span class="marca-obligatoriedad">*</span></label>
                                                <input type="text" id="primer_apellidoArtista" name="primer_apellidoArtista"
                                                       required="" class="form-control">
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                                <i class="fas fa-sort-numeric-up"></i>
                                                <label>Edad</label>
                                                <input type="text" name="segundo_apellidoArtista" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                                <i class="fas fa-venus-mars"></i>
                                                <label>Genero<span class="marca-obligatoriedad">*</span></label>
                                                <input type="text" id="primer_apellidoArtista" name="primer_apellidoArtista"
                                                       required="" class="form-control">
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                                <i class="far fa-building"></i>
                                                <label>Cuidad</label>
                                                <input type="text" name="segundo_apellidoArtista" class="form-control">
                                            </div>
                                        </div>

                                        <div class="row mt-3">
                                            <div class=" col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                <span class="aviso-obligatoriedad">Todos los campos marcados con * son
                                                    obligatorios</span>
                                            </div>

                                            <div class=" col-xs-12 col-sm-12 col-md-6 col-lg-6">


                                                <button class="btn btn-outline-success my-2 my-sm-0 w-100" 
                                                        type="submit" name="btn2">Registarse</button>  


                                            </div>
                                            <div class=" col-xs-12 col-sm-12 col-md-6 col-lg-6">


                                                <button class="btn btn-outline-success my-2
                                                        my-sm-0 w-100 " type="submit" data-dismiss="modal">Cancelar</button>

                                            </div>
                                        </div>


                                    </div>
                                    <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                                        <div class="row">
                                            <div class=" col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                                <i class="fas fa-user-tie"></i>
                                                <label>Carrera <span class="marca-obligatoriedad">*</span></label>
                                                <input type="text" id="primer_nombreArtista" name="primer_nombreArtista"
                                                       required="" class="form-control">
                                            </div>
                                            <div class=" col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                                <i class="fas fa-graduation-cap"></i>
                                                <label>Nivel de estudio</label>

                                                <input type="text" name="segundo_nombreArtista" class="form-control">
                                            </div>

                                        </div>
                                        <div class="row mt-3">
                                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                                <i class="fas fa-university"></i>
                                                <label>Instituciòn<span class="marca-obligatoriedad">*</span></label>
                                                <input type="text" id="primer_apellidoArtista" name="primer_apellidoArtista"
                                                       required="" class="form-control">
                                            </div>
                                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                                <i class="fas fa-place-of-worship"></i>
                                                <label>Lugar de estudio</label>
                                                <input type="text" name="segundo_apellidoArtista" class="form-control">
                                            </div>
                                        </div>

                                        <div class="row mt-3">
                                            <div class=" col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                <span class="aviso-obligatoriedad">Todos los campos marcados con * son
                                                    obligatorios</span>
                                            </div>

                                            <div class=" col-xs-12 col-sm-12 col-md-6 col-lg-6">


                                                <button class="btn btn-outline-success my-2 my-sm-0 w-100" 
                                                        type="submit" name="btn3">Registarse</button>  


                                            </div>
                                            <div class=" col-xs-12 col-sm-12 col-md-6 col-lg-6">


                                                <button class="btn btn-outline-success my-2
                                                        my-sm-0 w-100 " type="submit" data-dismiss="modal">Cancelar</button>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        
                    </div>
                </div>
            </div>




            <div class="container">
                <div class="col-12 mt-5">
                    <center><h1 class="titulo-principal"><span class="icon-home icono-titulo"></span>Bienvenido a PoliTalentos</h1>
                        <form>
                            <input class="campo-buscar" type="text" name="txtbuscar" placeholder="Buscar">
                            <input class="boton-buscar" type="submit" value="Buscar">
                        </form>
                    </center>
                </div>

                <hr>

            </div>
        </div>

        <%
            if (request.getParameter("cerrar") != null) {
                session.invalidate();
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.include(request, response);

            }
        %>


        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>