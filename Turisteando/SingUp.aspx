<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SingUp.aspx.cs" Inherits="Turisteando.SingUp" %>



<!DOCTYPE html>

<html>
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title></title>
        <link rel="stylesheet" href="css/normalize.css">
        <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="main.css">
        <style type="text/css">
            .button {}
        </style>
    </head>
<body>
    <form id="form1" runat="server">
    

        
        <h1>Sign Up</h1>
        
        <fieldset>
          <legend>Your basic info</legend>
          <label for="name">Name:<asp:TextBox ID="Nombre" runat="server"></asp:TextBox>
            </label>
          &nbsp;Email:
            <label for="name"><asp:TextBox ID="Correo" runat="server"></asp:TextBox>
            Password:<asp:TextBox ID="Contrasena" runat="server" TextMode="Password" ViewStateMode="Enabled"></asp:TextBox>
          &nbsp;Password:<br />
            <asp:TextBox ID="Contrasena0" runat="server" TextMode="Password" ViewStateMode="Enabled"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" CssClass="button" OnClick="Button1_Click" Text="Registrarse" />
            </label>
          
         
        </fieldset>
        
        
        
      
            <p>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </p>
     

    </form>
</body>
</html>
