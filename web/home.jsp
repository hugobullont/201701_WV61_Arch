<%-- 
    Document   : home
    Created on : 02-may-2017, 16:48:31
    Author     : Hugo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession httpsession = request.getSession(false);
    String uid = (String) httpsession.getAttribute("uid");
    String accessToken = (String) httpsession.getAttribute("accessToken");
    String name = (String) httpsession.getAttribute("name");
    String imgurl = "https://graph.facebook.com/" + uid + "/picture?type=large";
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>arch - Home</title>
        <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
        <!-- CSS  -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
        <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    </head>
    <body>
        
        <nav class="cyan darken-1" role="navigation">
            <a id="logo-container" href="#" class="brand-logo"><img width="100px"src="resources/logo.png" class="responsive-img"></a>
            <div class="nav-wrapper container">
                <ul id="slide-out" class="side-nav fixed">
                    <li><div class="userView">
                      <div class="background">
                        <img width="500px" src="resources/background2.jpg">
                      </div>
                      <img class="circle" src="<%out.println(imgurl);%>">
                      <span class="white-text name"><%out.println(name);%></span>
                      <span class="white-text email"></span>
                    </div></li>
                    <li><a href="#!"><i class="material-icons">notifications</i>Notificaciones (1)</a></li>
                    <li><div class="divider"></div></li>
                    <li><a class="subheader">Planos</a></li>
                    <li><a class="waves-effect" href=""><i class="material-icons">find_in_page</i>Buscar Plano</a></li>
                    <li><a class="waves-effect" href=""><i class="material-icons">add_circle</i>Agregar Plano</a></li>
                    <li><a class="waves-effect" href=""><i class="material-icons">dns</i>Mis Planos</a></li>
                    <li><a class="subheader">Maquetas</a></li>
                    <li><a class="waves-effect" href=""><i class="material-icons">find_in_page</i>Buscar Maqueta</a></li>
                    <li><a class="waves-effect" href=""><i class="material-icons">add_to_photos</i>Agregar Maqueta</a></li>
                    <li><a class="waves-effect" href=""><i class="material-icons">photo_library</i>Mis Maquetas</a></li>
                </ul>
                <a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">menu</i></a>
            </div>
            
        </nav>
        <!--  Scripts-->
        <script src="js/materialize.js"></script>
        <script src="js/init.js"></script>
    </body>
</html>
