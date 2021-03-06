<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jaco.aspx.cs" Inherits="Turisteando.jaco" %>

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













 
    




     <div class="row">
           
       
              <div class="col-sm-5"  >
                  <h1 class="mb-0" style=" font-family: 'Times New Roman',serif;color:antiquewhite; text-align:center;">
                <asp:Label id="prueba" runat="server" ForeColor="#FFFFCC"  />
   </h1>
               <div class="mb-5" style="text-align:center;">
              <div  id="TextBox1" runat="server" style="font-family: 'Times New Roman',serif; font-weight:400; font-size: 15px;line-height: 1.8; color:#b3b3b3;"></div>
               <div  id="TextBox2" runat="server" style="font-family: 'Times New Roman',serif; font-weight:400; font-size: 15px;line-height: 1.8; color:#b3b3b3;"></div>
               <div  id="TextBox3" runat="server" style="font-family: 'Times New Roman',serif; font-weight:400; font-size: 15px;line-height: 1.8; color:#b3b3b3;"></div>
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

