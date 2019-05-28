<%-- 
    Document   : TarjetasGuardadas
    Created on : 22/05/2019, 04:26:12 PM
    Author     : gemelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="materialize-v1.0.0/materialize/css/materialize.css" rel="stylesheet" type="text/css"/>
        <link href="materialize-v1.0.0/materialize/css/materialize.min.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <title>Tarjetas Guardadas</title>
    </head>
    <body>


        <div class="navbar-fixed">
            <nav class="blue-grey darken-3">
                <div class="nav-wrapper">
                    <a href="#!" class="brand-logo "><i class="material-icons">all_inclusive</i>Talentos</a> 

                    <ul class="right hide-on-med-and-down">

                        <li>
                            <a class="waves-effect waves-light btn light-green accent-4">Inicio</a>
                        </li>
                        <li>
                            <a href="#">gemelo</a>
                        </li>
                        <li>
                            <a class="dropdown-trigger" href="#" data-target="opciones">opciones
                                <i class="material-icons right">arrow_drop_down</i>
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>


        <ul id="opciones" class="dropdown-content">
            <li><a href="#">Perfil</a></li>
            <li><a href="index.jsp">Mis Tarjetas</a></li>
            <li><a href="#">Tarjetas Guardadas</a></li>
            <li class="divider"></li>
            <li><a href="#">Salir</a></li>
        </ul>


        <div class="container">       
            <div class="row">
                <div class="col s12 m4">
                    <div class="card Medium">
                        <div class="card-image">
                            <div class="card-panel white-text   blue-grey darken-4">ciencias</div>
                            <a class="btn-floating halfway-fab waves-effect waves-light red tooltipped"
                               data-position="bottom" data-tooltip="quitar tarjeta"><i class="material-icons">cancel</i></a>
                        </div>
                        <div class="card-content">
                            <p>I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.</p>                         
                        </div>


                        <div class="card-action center">
                            <p class="center">Precio : 400$</p>
                            <p class="center">contacto : 4745874</p>
                            <a class="waves-effect waves-light btn    light-green accent-4" onclick="return confirm('deseas ver el perfil del creador?')">Perfil</a>

                        </div>
                    </div>
                </div>

                <div class="col s12 m4">
                    <div class="card Medium">
                        <div class="card-image">
                            <div class="card-panel white-text   blue-grey darken-4">Español</div>
                            <a class="btn-floating halfway-fab waves-effect waves-light red tooltipped"
                               data-position="bottom" data-tooltip="quitar tarjeta"><i class="material-icons">cancel</i></a>
                        </div>
                        <div class="card-content">
                            <p>I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.</p>

                        </div>


                        <div class="card-action center">
                            <p class="center">Precio : 200$</p>
                            <p class="center">contacto : 1475547</p>
                            <a class="waves-effect waves-light btn    light-green accent-4" onclick="return confirm('deseas ver el perfil del creador?')">Perfil</a>

                        </div>
                    </div>
                </div>


                <div class="col s12 m4">
                    <div class="card Medium">
                        <div class="card-image">
                            <div class="card-panel white-text   blue-grey darken-4">Matematicas</div>
                            <a class="btn-floating halfway-fab waves-effect waves-light red tooltipped"
                               data-position="bottom" data-tooltip="quitar tarjeta"><i class="material-icons">cancel</i></a>
                        </div>
                        <div class="card-content">
                            <p>I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.</p>

                        </div>


                        <div class="card-action center">
                            <p class="center">Precio : 550$</p>
                            <p class="center">contacto : 1475547</p>
                            <a class="waves-effect waves-light btn    light-green accent-4" onclick="return confirm('deseas ver el perfil del creador?')">Perfil</a>

                        </div>
                    </div>
                </div>




                <div id="modal" class="modal modal-fixed-footer">
                    <div class="modal-content">
                        <h4 class="blue-grey-text grey-text text-darken-3 flow-text">Informacion tarjeta</h4>

                        <div class="row">

                            <div class="input-field col s12">
                                <i class="material-icons prefix">title</i>
                                <input  id="titulo" type="text" class="validate">
                                <label class="active" for="titulo">Titulo Tarjeta</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix">create</i>
                                <textarea id="descripcion" class="materialize-textarea" data-length="120"></textarea>
                                <label for="descripcion">Descripcion</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix">attach_money</i>
                                <textarea id="precio" type="number" class="materialize-textarea" data-length="120"></textarea>
                                <label for="precio">Precio</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix">contact_phone</i>
                                <textarea id="contacto" class="materialize-textarea" data-length="120"></textarea>
                                <label for="contacto">Contacto</label>
                            </div>
                        </div>


                    </div>
                    <div class="modal-footer  blue-grey darken-3">
                        <button class=" modal-close btn waves-effect waves-light red darken-3" type="button" name="action">cerrar
                            <i class="material-icons right">close</i>
                        </button>
                        <button class=" modal-close btn waves-effect waves-light" type="submit" name="action">enviar
                            <i class="material-icons right">send</i>
                        </button>
                    </div>

                </div>

            </div>


        </div>

        <script src="materialize-v1.0.0/materialize/js/materialize.js" type="text/javascript"></script>
        <script src="materialize-v1.0.0/materialize/js/materialize.min.js" type="text/javascript"></script>
        <script>
                                document.addEventListener('DOMContentLoaded', function () {
                                    var elems = document.querySelectorAll('.modal');
                                    var instances = M.Modal.init(elems);

                                    var elems = document.querySelectorAll('.sidenav');
                                    var instances = M.Sidenav.init(elems);

                                    var elems = document.querySelectorAll('.tooltipped');
                                    var instances = M.Tooltip.init(elems);

                                    var elems = document.querySelectorAll('.tap-target');
                                    var instances = M.TapTarget.init(elems);

                                    var elems = document.querySelectorAll('.sidenav');
                                    var instances = M.Sidenav.init(elems);

                                    var elems = document.querySelectorAll('.dropdown-trigger');
                                    var instances = M.Dropdown.init(elems);

                                    var elems = document.querySelectorAll('.fixed-action-btn');
                                    var instances = M.FloatingActionButton.init(elems, {
                                        direction: 'left',
                                        hoverEnabled: false
                                    });

                                });


        </script>
    </body>
</html>
