<%-- 
    Document   : objectInformation
    Created on : 23-jun-2017, 23:25:02
    Author     : Hugo
--%>

<%@page import="BusinessLogic.Score.*"%>
<%@page import="Entities.Mockup"%>
<%@page import="Entities.Blueprint"%>
<%@page import="BusinessLogic.Users.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession httpsession = request.getSession(false);
    IUserService userService = new UserService();
    IScoreService scoreService = new ScoreService();
    
    String uid = (String) httpsession.getAttribute("uid");
    String accessToken = (String) httpsession.getAttribute("accessToken");
    String name = (String) httpsession.getAttribute("name");
    String imgurl = userService.GetProfilePictureUrlByFBId(uid);
    String objType = (String) session.getAttribute("informationObjectType");
    Blueprint objectBlueprint = new Blueprint();
    Mockup objectMockup = new Mockup();
    
    if(objType.contains("P"))
    {
        objectBlueprint = (Blueprint)session.getAttribute("informationObject");
    }
    if(objType.contains("M"))
    {
         objectMockup = (Mockup)session.getAttribute("informationObject");
    }
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>arch - Informacion</title>
        <!-- CSS  -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
        <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link href="css/padding.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    </head>
    <body background="resources/trama.jpg">
        <ul id="slide-out" class="side-nav fixed">
            <li>
                <div class="userView">
                    <div class="background">
                        <img width="500px" src="resources/background2.jpg">
                    </div>
                    <img class="circle" src="<%out.println(imgurl);%>">
                    <span class="white-text name"><%out.println(name);%></span>
                    <span class="white-text email"></span>
                </div>
            </li>
            <li><a class="subheader">Planos</a></li>
            <li><a class="waves-effect" href="BuscarPlanos"><i class="material-icons">find_in_page</i>Buscar Plano</a></li>
            <li><a class="waves-effect" href="AgregarPlano"><i class="material-icons">add_circle</i>Agregar Plano</a></li>
            <li><a class="waves-effect" href="MisPlanos"><i class="material-icons">dns</i>Mis Planos</a></li>
            <li><a class="subheader">Maquetas</a></li>
            <li><a class="waves-effect" href="BuscarMaquetas"><i class="material-icons">find_in_page</i>Buscar Maqueta</a></li>
            <li><a class="waves-effect" href="AgregarMaqueta"><i class="material-icons">add_to_photos</i>Agregar Maqueta</a></li>
            <li><a class="waves-effect" href="MisMaquetas"><i class="material-icons">photo_library</i>Mis Maquetas</a></li>
        </ul>
        <nav class="cyan darken-1 hide-on-large-only" role="navigation" >        
            <a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">menu</i></a>
        </nav>
        <main class="row">
            <div class="col s12 m12">
                    <div class="card white">
                        <div class="card-content black-text row">
                            <%if(objType.contains("P")){%>
                            <span class="card-title col s12 m12"><%=objectBlueprint.getName()%></span>
                            <div class="col s6 m6 l6">
                                <h6 class="grey-text text-lighten-1">Descripción</h6>
                                <h6 class="grey-text"><%=objectBlueprint.getDescription()%></h6>
                                <h6 class="grey-text text-lighten-1">Tipo de Archivo</h6>
                                <h6 class="grey-text"><%=objectBlueprint.getFileType().toLowerCase()%></h6>
                                <h6 class="grey-text text-lighten-1">Valoración</h6>
                                <%float score = Float.valueOf(scoreService.GetPromObject("P", objectBlueprint.getIdBlueprint())); %>
                                <h6 class="grey-text"><%if(score>-1){ out.print(score);} else{out.print("No hay Valoraciones");} %></h6>
                                <form action="Descargar" method="POST">
                                    <div class="input-field">
                                        <button class="btn waves-effect waves-light cyan darken-1" type="submit" name="btnDownload">Descargar</button>
                                        <input type="hidden" id="objectId" name="objectId" value="<%= objectBlueprint.getIdBlueprint()%>">
                                        <input type="hidden" id="objectType" name="objectType" value="P">
                                    </div>
                                </form>
                            </div>
                            <%}%>
                            <%if(objType.contains("M")){%>
                            <span class="card-title col s12 m12"></span>
                            <div class="col s6 m6 l6">
                                <h6 class="grey-text text-lighten-1"></h6>
                                <h6 class="grey-text text-lighten-1"></h6>
                            </div>
                            <%}%>
                        </div>
                    </div>
            </div>
        </main>
        <script src="js/materialize.js"></script>
        <script src="js/init.js"></script>
    </body>
</html>
