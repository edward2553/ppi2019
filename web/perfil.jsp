<%-- 
    Document   : perfil
    Created on : 25/05/2019, 02:39:14 PM
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi perfil</title>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="resources/css/style.css">
    </head>
    <body>
        <jsp:include page="menuMaterialize.jsp"></jsp:include>
        <br>
        <br>
    <center>
        <div class="content">
            <div class="container-fluid"> 
                <div class="row ">
                    <div class="col-sm-12 col-md-12 col lg-12 text-center profile-box ">
                        <br>
                        <i class="material-icons">account_circle</i>
                        <p>foto de perfil</p>
                    </div>
                </div>
                <br>
                <label title="Toda la informacion relacionada con el usuario">Sección del usuario</label>
                <hr>
                <section>
                    <form action="#" method="post" class="row">
                        <div class="col-sm-12 col-md-4 col-lg-4 ">
                            <div class="input-field">
                                <i class="material-icons prefix">account_box</i>
                                <input id="userName" type="text" class="validate" value="" name="userName">
                                <label for="userName">Nombre de usuario</label> 
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-4 col-lg-4">
                            <div class="input-field">
                                <i class="material-icons prefix">lock</i>
                                <input id="oldPass" type="password" class="validate" value="" name="userName">
                                <label for="oldPass">Contraseña actual</label> 
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-4 col-lg-4">
                            <div class="input-field">
                                <input id="newPass" type="password" class="validate" value="" name="newPass">
                                <label for="newPass">Nueva contraseña</label> 
                            </div>
                        </div>
                    </form>
                </section>
                <br>
                <label title="Toda la informacion relacionada con los datos personales">
                    Datos personales
                </label>
                <hr>
                <section>
                    <form action="#" method="post">
                        <div class="row">
                            <div class="col-sm-12 col-md-6 col-lg-6">
                                <div class="input-field">
                                    <i class="material-icons prefix">perm_identity</i>
                                    <input id="fullname" type="text" class="validate" value="" name="fullname">
                                    <label for="fullname">Nombre completo</label> 
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-6 col-lg-6">
                                <div class="input-field">
                                    <input id="fullLastName" type="text" class="validate" value="" name="fullLastName">
                                    <label for="fullLastName">Apellido completo</label> 
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 col-md-4 col-lg-4">
                                <div class="input-field">
                                    <i class="material-icons prefix">call</i>
                                    <input id="tel" type="text" class="validate" value="" name="tel">
                                    <label for="tel">Teléfono</label> 
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-4 col-lg-4">
                                <div class="input-field">
                                    <input id="tel2" type="text" class="validate" value="" name="tel2">
                                    <label for="tel2">Teléfono 2</label> 
                                </div>
                            </div>    
                            <div class="col-sm-12 col-md-4 col-lg-4">
                                <div class="input-field">
                                    <i class="material-icons prefix">mail</i>
                                    <input id="oldPass" type="email" class="validate" value="" name="mail">
                                    <label for="oldPass">Correo</label> 
                                </div>
                            </div>
                        </div>
                    </form>
                </section>
                <br>
                <label title="Toda la informacion académica">
                    Información académica
                </label>
                <hr>
                <section>
                    <div class="row">
                        <div class="col-sm-12 col-md-4 col-lg-4">
                            <div class="input-field">
                                <label>Educación formal</label>
                                <br>
                                <br>
                                <br>
                                <input type="button" class="btn" value="Agregar">
                            </div>
                        </div>    
                        <div class="col-sm-12 col-md-4 col-lg-4">
                            <div class="input-field">
                                <label>Educación informal</label>
                                <br>
                                <br>
                                <br>
                                <input type="button" class="btn" value="Agregar">
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-4 col-lg-4">
                            <div class="input-field ">
                                <textarea id="textarea1" class="materialize-textarea"></textarea>
                                <label for="textarea1">Descripción de su ser</label>
                            </div>
                        </div>
                        </div>
                </section>
            </div>
        </div>
    </center>

    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script>
        $(document).ready(function () {
            $(".sidenav").sidenav();
        });
    </script> 
    <br>
    <br>
</body>
</html>
