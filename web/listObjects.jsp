<%-- 
    Document   : listObjects
    Created on : 19-jun-2017, 19:21:00
    Author     : Hugo
--%>

<%@page import="java.util.List"%>
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
    String object = (String) httpSession.getAttribute("object");
    List<Blueprint> blueprints = null;
    List<Mockup> mockups = null;
    if(object == "Plano")
    {
        blueprints = (List<Blueprint>) httpSession.getAttribute("listObjects");
    }
    if(object == "Maqueta")
    {
        mockups = (List<Mockup>) httpSession.getAttribute("listObjects");
    }
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
        <nav class="cyan darken-1 hide-on-large-only" role="navigation" >        
            <a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">menu</i></a>
        </nav>
        <main>
            <div class="row">
                <%if(listAction=="Search"){%>
                <div class="col s12 m12">
                  <div class="card white">
                    <div class="card-content black-text">
                      <span class="card-title"><%=pageTitle%></span>
                      <form action="Buscar_<%=object%>" method="POST">
                          <div class="row center-align">
                            <div class="input-field col s8">
                              <i class="material-icons prefix">search</i>
                              <input id="searchBar" name="searchBar" type="text" class="validate">
                            </div>
                            <div class="input-field col s4">
                                <button class="btn waves-effect waves-light cyan darken-1" type="submit" name="action">Buscar</button>
                            </div>
                          </div>
                      </form>
                    </div>
                  </div>
                </div>
                <%}%>
                <%if(object == "Plano"){
                    for(Blueprint bp: blueprints)
                    {%>
                <div class="col s12 m12">
                    <div class="card white">
                        <div class="card-content black-text row">
                            <span class="card-title"><%= bp.getName()%></span>
                            <%String userImgUrl = userService.GetProfilePictureUrlByFBId(bp.getUser().getFbId()); %>
                            
                        </div>
                    </div>
                </div><%}}%>
                
                <%if(object == "Maqueta"){
                    for(Mockup mk: mockups)
                    {%>
                <div class="col s12 m12">
                </div><%}}%>
            </div>
        </main>
            
        <script src="js/materialize.js"></script>
        <script src="js/init.js"></script>
    </body>
</html>
