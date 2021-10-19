
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Turisteando</title>
    <script src="scripts/jquery-3.0.0.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Estilo.css" rel="stylesheet" />
</head>
<body>

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

    <div class='slider'style="height:320px">
        <ul>
            <li><a href='#'>
                <img src='./imagenestodas/imagenes/1.jpg' alt='' width="500" height="500" /></a></li>
            <li><a href='#'>
                <img src='./imagenestodas/imagenes/2.jpg' alt='' width="500" height="500" /></a></li>
            <li><a href='#'>
                <img src='./imagenestodas/imagenes/3.jpg' alt='' width="500" height="500" /></a></li>
            <li><a href='#'>
                <img src='./imagenestodas/imagenes/4.jpg' alt='' width="500" height="500" /></a></li>
        </ul>

    </div>
    <!--FIN SLIDER-->

    <!----ASIDE---->
    
    <aside  id="li1">
         <div class="card mb-3" style="display: inline-flex;width:100%; text-align:center; top:-37px;">
        <div class="card-header bg-dark text-white">¡CURIOSIDADES!</div>
        </div>
        <div class="card mb-3" style="max-width: 23rem; max-height: 23rem;">
            <div class="card-header">
                <asp:Label runat="server" ID="r1"></asp:Label>
            </div>
            <div class="card-body">
                <div class="card-title">
                    <asp:Image ID="Image1" runat="server" Style="margin-top: 10px; height: 100px; width: 100%; display: inline-block" />
                </div>
                <p class="card-text">
                    <div class="col-md-5" id="txt1" runat="server" style="margin-top: 20px;" />
                </p>
            </div>
        </div>

        <div class="card mb-3" style="max-width: 23rem; max-height: 23rem;">
            <div class="card-header">
                <asp:Label runat="server" ID="isladelcoco1"></asp:Label>
            </div>
            <div class="card-body">
                <div class="card-title">
                    <asp:Image ID="isladelcoco1img" runat="server" Style="margin-top: 10px; height: 100px; width: 100%; display: inline-block" />
                </div>
                <p class="card-text">
                    <div class="col-md-5" id="isladelcocotxt1" runat="server" style="margin-top: 20px;" />
                </p>
            </div>
        </div>

        <div class="card mb-3" style="max-width: 23rem; max-height: 23rem;">
            <div class="card-header">
                <asp:Label runat="server" ID="manuelantonio1"></asp:Label>
            </div>
            <div class="card-body">
                <div class="card-title">
                    <asp:Image ID="manuelantonioimg1" runat="server" Style="margin-top: 10px; height: 100px; width: 100%; display: inline-block" />
                </div>
                <p class="card-text">
                    <div class="col-md-5" id="manuelantoniotxt1" runat="server" style="margin-top: 20px;" />
                </p>
            </div>
        </div>

        <div class="card mb-3" style="max-width: 23rem; max-height: 23rem;">
            <div class="card-header">
                <asp:Label runat="server" ID="tortuguero1"></asp:Label>
            </div>
            <div class="card-body">
                <div class="card-title">
                    <asp:Image ID="tortugueroimg1" runat="server" Style="margin-top: 10px; height: 100px; width: 100%; display: inline-block" />
                </div>
                <p class="card-text">
                    <div class="col-md-5" id="tortuguerotxt1" runat="server" style="margin-top: 20px;" />
                </p>
            </div>
        </div>

    </aside>

    <!---FIN ASIDE-->


    <!-- articulos -->
    <div class="card mb-3" style="width: 65%; display: inline-flex; top: 64px; margin-left: 2%">
        <div class="card-header bg-dark text-white" style="text-align:center">¡NOVEDADES!</div>
        </div>
    <div class="card mb-3" style="width: 65%; display: inline-flex; top: 100px; margin-left: 2%">
        
        <h3 class="card-header" >
             <asp:Label runat="server" ID="r"></asp:Label>
        </h3>
        <div class="row">
            <div class="col-md-5 " style="display: inline-flex;">
                <div>
                    <asp:Image ID="Image" runat="server" Style="height: 200px; width: 100%; display: inline-block" />
                </div>
            </div>
    </div>
        </div>

    <div class="card mb-3" style="width: 65%; display: inline-flex; top: 100px; margin-left: 2%">
        <h3 class="card-header">
            <asp:Label runat="server" ID="isladelcoco"></asp:Label>
        </h3>
        <div class="row">
            <div class="col-md-5" style="display: inline-flex;">
                <div>
                    <asp:Image ID="isladelcocoimg" runat="server" Style="height: 200px; width: 100%; display: inline-block" />
                </div>
            </div>
    </div>
        </div>

    <div class="card mb-3" style="width: 65%; display: inline-flex; top: 100px; margin-left: 2%">
        <h3 class="card-header">
            <asp:Label runat="server" ID="manuelantonio"></asp:Label>
        </h3>
        <div class="row">
            <div class="col-md-5" style="display: inline-flex;">
                <div>
                    <asp:Image ID="manuelantonioimg" runat="server" Style="height: 200px; width: 100%; display: inline-block" />
                </div>
            </div>
    </div>
        </div>

    <div class="card mb-3" style="width: 65%; display: inline-flex; top: 100px; margin-left: 2%">
        <h3 class="card-header">
            <asp:Label runat="server" ID="tortuguero"></asp:Label>
        </h3>
        <div class="row">
            <div class="col-md-5" style="display: inline-flex;">
                <div>
                    <asp:Image ID="tortugueroimg" runat="server" Style="height: 200px; width: 100%; display: inline-block" />
                </div>
            </div>
    </div>
        </div>

    <!--FOOTER-->

    <footer id="footer" style="background-color: black;">
        <p style="margin-left:37%;">
            <a href="index.aspx">Homea> | <a href="QuienesSomos.aspx">Nosotros</a> | <a href="#">Catálogo</a> | <a href="#">Servicios</a> | <a href="Contactenos.aspx">Contáctenos</a><br />
            Copyright &copy; J & A company
        </p>
    </footer>

    <!---FIN FOOTER-->

</body>
</html>
