<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InterfazPlaya.aspx.cs" Inherits="Turisteando.InterfazPlaya" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Playa</title> 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


 <script src="scripts/jquery-3.0.0.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
     <link href="Content/bootstrap.css" rel="stylesheet" />
  
    <link href="Estilo.css" rel="stylesheet" />
</head>
<body style="background-color:#212f3d;">
    <form id="form1" runat="server">
    
   					<!--Barra de Navegación-->
     <nav class="navbar navbar-expand-lg navbar-dark bg-primary" style="width:100%; height:100%; left:55px; ">
  <a class="navbar-brand" href="#">Turisteando</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

     <div class="collapse navbar-collapse" id="navbarColor01">     
  <ul class="navbar-nav mr-auto">
  <li><button type="button" class="btn btn-primary">Montana</button>
  <div class="btn-group" role="group">
    <button id="btnGroupDrop1" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
    <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
      <a class="dropdown-item" href="#">Dropdown link</a>
      <a class="dropdown-item" href="#">Dropdown link</a>
    </div>
  </div>
      </li>
    <li> <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
 <button type="button" class="btn btn-primary">Playa</button>
  <div class="btn-group" role="group">
    <button id="btnGroupDrop2" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
    <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
      <a class="dropdown-item" href="#">Dropdown link</a>
      <a class="dropdown-item" href="#">Dropdown link</a>
    </div>
  </div>
     
</div>
        </li>
      </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" placeholder="Search" type="text"/>
      <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
     

        <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
          <button type="button" class="btn btn-primary" onclick="location.href='SingUp.aspx' " >Sing Up</button>
            <div class="btn-group" role="group">
            <button id="btnGroupDrop5" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
   <div class="dropdown-menu" aria-labelledby="btnGroupDrop1" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: -140px; right:90px; transform: translate3d(0px, 38px, 0px);">
   <a class="dropdown-item" href="Login.aspx">Log-In</a>
      <a class="dropdown-item" href="#">Log-Out</a>
      </div>
  </div>
     </div>    
    </form> 
       </div> 
      
</nav>

    <!---FIN BARRA NAVEGACION-->

    <!--SLIDER-->

    <div class='slider'>	
<ul>
<li><a href='#' ><img src='./imagenestodas/imagenes/1.jpg' alt='' width="500" height="500"/></a></li>
<li><a href='#' > <img src='./imagenestodas/imagenes/2.jpg' alt=''  width="500" height="500"/></a></li>
<li><a href='#'	><img src='./imagenestodas/imagenes/3.jpg' alt=''  width="500" height="500"/></a></li>
<li><a href='#'	><img src='./imagenestodas/imagenes/4.jpg' alt=''  width="500" height="500"/></a></li>
</ul>

</div>









        <main>
        <div class="container">
           
                <div class="row">
                    <div class="col-lg-8 ">
                        <fieldset>
                            <legend>Listado de Bicicletas</legend>
                            <asp:Repeater ID="RepeaterBicicletas" runat="server">
                                <HeaderTemplate>
                                    <div class="row">
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <div class="col-lg-6 ">
                                        <div class="card border-info mb-3" style="max-width: 20rem;">
                                            <div class="card-header"><%# Eval("Lugar") %></div>
                                            <div class="card-body">
                                                <p class="card-text"><%# Eval("Imagen") %></p>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </div> <%--cierre der div=row--%>
                                </FooterTemplate>
                            </asp:Repeater>

                        </fieldset>
                    </div>

                </div>
           

        </div>
    </main>
    </form>
</body>
</html>
