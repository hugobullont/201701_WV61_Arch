<%-- 
    Document   : listObjects
    Created on : 19-jun-2017, 19:21:00
    Author     : Hugo
--%>

<%@page import="Entities.*"%>
<%@page import="BusinessLogic.Mockups.*"%>
<%@page import="BusinessLogic.Photos.*"%>
<%@page import="BusinessLogic.Blueprints.*"%>
<%@page import="BusinessLogic.Score.*"%>
<%@page import="BusinessLogic.Users.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%  
    HttpSession httpSession = request.getSession(false);
    String pageTitle = (String) httpSession.getAttribute("pageTitle");
    User objUser = (User) httpSession.getAttribute("objUser");
    IUserService userService = new UserService();
    IBlueprintsService blueprintService = new BlueprintsService();
    IMockupsService mockupService = new MockupsService();
    IPhotosService photoService = new PhotosService();
    IScoreService scoreService = new ScoreService();
    
    String uid = (String) httpSession.getAttribute("uid");
    String accessToken = (String) httpSession.getAttribute("accessToken");
    String name = (String) httpSession.getAttribute("name");
    String imgurl = userService.GetProfilePictureUrlByFBId(uid);
    String listAction = (String) httpSession.getAttribute("listAction");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>arch - <%=pageTitle%></title>
        <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
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
            <li><a class="waves-effect" href=""><i class="material-icons">dns</i>Mis Planos</a></li>
            <li><a class="subheader">Maquetas</a></li>
            <li><a class="waves-effect" href=""><i class="material-icons">find_in_page</i>Buscar Maqueta</a></li>
            <li><a class="waves-effect" href="AgregarMaqueta"><i class="material-icons">add_to_photos</i>Agregar Maqueta</a></li>
            <li><a class="waves-effect" href=""><i class="material-icons">photo_library</i>Mis Maquetas</a></li>
        </ul>
        
        <main>
            <div class="row">
                <%if(listAction=="Search"){%>
                <div class="col s12 m12">
                  <div class="card white">
                    <div class="card-content black-text">
                      <span class="card-title"><%=pageTitle%></span>
                    </div>
                  </div>
                </div>
                <%}%>
            </div>
        </main>
            
        <script src="js/materialize.js"></script>
        <script src="js/init.js"></script>
    </body>
</html>
