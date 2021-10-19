<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Turisteando.Login" %>

<!DOCTYPE html>

<html>
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Iniciar Sesion</title>
        <link rel="stylesheet" href="css/normalize.css">
        <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="main.css">
        <style type="text/css">
            .button {}
        </style>
    </head>
<body>
    <form id="form1" runat="server">
   
 
        <h1>Log In</h1>
        
        <fieldset>
          <legend></legend>
          <label for="name">Name:<asp:TextBox ID="Nombre" runat="server"></asp:TextBox>
            </label>
          &nbsp;
          
          <label for="mail">Email:<label for="name"><asp:TextBox ID="Correo" runat="server"></asp:TextBox>
            </label>
            </label>
          &nbsp;
          
          <label for="password">Password:<label for="name"><asp:TextBox ID="Contrasena" runat="server" TextMode="Password"></asp:TextBox>
            </label>
            </label>
          &nbsp;
          
         
            <asp:Button ID="Button1" runat="server" CssClass="button" Text="Iniciar Sesion" OnClick="Button1_Click" />
     
         
        </fieldset>
        
        
        
      
     
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
     


    </form>
</body>
</html>
