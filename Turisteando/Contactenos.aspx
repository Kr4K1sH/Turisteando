<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contactenos.aspx.cs" Inherits="Turisteando.Contactenos" %>


<html>
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Contactenos</title>
        <link rel="stylesheet" href="css/normalize.css">
        <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="main.css">
        <style type="text/css">
           
        </style>
    </head>
<body>
    <form id="form1" runat="server">
   
      
        <h1>Contact us</h1>
            <p>&nbsp;</p>
        
        <fieldset>
          <label for="name">Name:</label><label for="name"><asp:TextBox ID="txtnombre" runat="server" ViewStateMode="Enabled"></asp:TextBox>
            Apellidos<asp:TextBox ID="txtApellidos" runat="server" ViewStateMode="Enabled"></asp:TextBox>
                </label>
          &nbsp;Correo:<label for="name"><asp:TextBox ID="txtCorreo" runat="server" ViewStateMode="Enabled"></asp:TextBox>
                </label>
          &nbsp;
          
            <label for="telefono">Telefono:<label for="name">
                <asp:TextBox ID="Contrasena" runat="server" ViewStateMode="Enabled"></asp:TextBox>
            &nbsp; Asunto:<br />
                </label>
                </label>
            <asp:TextBox ID="txtAsunto" runat="server" ViewStateMode="Enabled"></asp:TextBox>
            <textarea id="txtArMensaje" cols="20" name="S1" rows="2"></textarea>
            <asp:Button ID="Button1" runat="server" CssClass="button" OnClick="Button1_Click" Text="Enviar" />
&nbsp;</fieldset>
        
        
        
          
       
           
     


    </form>
</body>
</html>
