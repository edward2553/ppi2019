<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi perfil</title>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <link rel="stylesheet" href="resources/css/style.css">
    </head>
    <body>
        <nav class="nav-wraper indigo">
            <div class="container">
            	<a href="#" class="brand-logo">ElTalento</a>
                <a href="#" class="sidenav-trigger" data-target="mobile-links"><i class="material-icons">menu</i></a>
    	        <ul class="right hide-on-med-and-down">
                  <li><a href="#">Inicio</a></li>
                  <li><a href="#">Eddy</a></li>
                  <li><a href="#">Opciones</a></li>
                </ul>
            </div>
    	</nav>
        
        <ul class="sidenav" id="mobile-links">
            <li><a href="#">Inicio</a></li>
            <li><a href="#">Eddy</a></li>
            <li><a href="#">Opciones</a></li>
        </ul>
 
    	</div>
        
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"> </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <script>
            $(document).ready(function(){
                $(".sidenav").sidenav();
            });
        </script> 
    </body>
</html>
