<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tortuguero.aspx.cs" Inherits="Turisteando.Tortuguero" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title> 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


 <script src="scripts/jquery-3.0.0.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
     <link href="Content/bootstrap.css" rel="stylesheet" />
  
    <link href="Estilo.css" rel="stylesheet" />
</head>
<body style="background-color:#212f3d;" >

    <form id="form1" runat="server">
    
 
   					<!--Barra de Navegación-->
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="width: 100%; height: 50%;">
        <a class="navbar-brand" href="Turisteando.aspx">Turisteando</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarColor01">
                  <ul class="navbar-nav mr-auto">

              <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
       Montañas
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="corcovado.aspx">Cerro Corcovado</a>
        <a class="dropdown-item" href="RioCeleste.aspx">Bosque Rio Celeste</a>
        <a class="dropdown-item" href="Tortuguero.aspx">Parque Tortuguero</a>
      </div>
    </li>
                  <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
       Playas
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="Cahuita.aspx">Playa Cahuita</a>
        <a class="dropdown-item" href="IslaDelCoco.aspx">Isla del Coco</a>
        <a class="dropdown-item" href="ManuelAntonio.aspx">Playa Manuel Antonio</a>
      </div>
    </li>
  </ul>
            <form class="form-inline my-2 my-lg-0">
                <ul class="navbar-nav mr-auto">

                    <li>
                        <div class="btn-group" role="group">
                      
    <input class="form-control mr-sm-2" type="text" placeholder="Search"/>
    <button class="btn btn-secondary" type="submit">Search</button>

                            </div>
                    </li>
                    <li>
           
                        <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
                            <button type="button" class="btn btn-dark" onclick="location.href='SingUp.aspx' ">Sing Up</button>
                            <div class="btn-group" role="group">
                                <button id="btnGroupDrop5" type="button" class="btn btn-dark dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
                                <div class="dropdown-menu" aria-labelledby="btnGroupDrop1" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: -140px; right: 90px; transform: translate3d(0px, 38px, 0px);">
                                    <a class="dropdown-item" href="Login.aspx">Log-In</a>
                                    <a class="dropdown-item" href="#">Log-Out</a>
                                </div>
                            </div>
                        </div>
                    </li>
                     
                </ul>
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













 
    




     <div class="row">
           
       
              <div class="col-sm-5"  >
                  <h1 class="mb-0" style=" text-align:center;">
                <asp:Label id="prueba" runat="server" ForeColor="#FFFFCC" />
   </h1>
               <div class="mb-5" style="text-align:center;">
              <div  id="TextBox1" runat="server" style=" color:#b3b3b3;"></div>
               <div  id="TextBox2" runat="server" style="color:#b3b3b3;"></div>
               <div  id="TextBox3" runat="server" style="color:#b3b3b3;"></div>
              </div>

              </div>
           <div class="col-sm-1"></div>
         
     <div class="col-sm-5" >
                 
      <div class="container">

  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
          <asp:Image ID ="Image1" runat="server" style="width:600px; height:500px;" />
       
       

      </div>

      <div class="item">
        
  <asp:Image ID ="Image2" runat="server"  style="width:600px; height:500px;"/>
  
      </div>
    
      <div class="item">
       <asp:Image ID ="Image3" runat="server" style="width:600px; height:500px;" />
  


      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div> </div>


           </div>
  

 <footer id="footer" style="background-color:black;"   >
 <p>
<a href="index.aspx">Home</a> | <a href="QuienesSomos.aspx">Nosotros</a> | <a href="#">Catálogo</a> | <a href="#">Servicios</a> | <a href="Contactenos.aspx">Contáctenos</a><br />
Copyright &copy; J & A company</p>
</footer>

    <!---FIN FOOTER-->
    
    </form>
</body>
</html>


