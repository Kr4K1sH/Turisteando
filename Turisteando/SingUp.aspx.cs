using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using Turisteando.BD;

namespace Turisteando
{
    public partial class SingUp : System.Web.UI.Page
    {
        Database db = DataBaseFactory.CreateDatabase("ProyectoConnectionString");
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.Label1.Visible = false;
           
            string conf = this.Contrasena0.Text;


            if (conf == this.Contrasena.Text &&
                !string.IsNullOrEmpty(this.Correo.Text) &&
                !string.IsNullOrEmpty(this.Contrasena.Text)
                && !string.IsNullOrEmpty(this.Nombre.Text))
            {

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = db.Conexion;
                cmd.CommandText = "RegistrarUsuario";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Correo", this.Correo.Text);
                cmd.Parameters.AddWithValue("@Contrasena", this.Contrasena.Text);
                cmd.Parameters.AddWithValue("@Nombre", this.Nombre.Text);
                cmd.ExecuteNonQuery();
                cmd.Parameters.Clear();
                

                MailMessage msj = new MailMessage();
                SmtpClient cli = new SmtpClient();


                String mail = this.Correo.Text.ToString();
                string name = this.Nombre.Text.ToString();

                msj.From = new MailAddress("turistaturisteando@gmail.com");
                msj.To.Add(new MailAddress(mail));
                msj.Subject = "Bienvenido";
                msj.Body = " Hola " + name + " Bienvenido a turisteando";
                msj.IsBodyHtml = false;

                cli.Host = "smtp.gmail.com";
                cli.Port = 587;
                cli.Credentials = new NetworkCredential("turistaturisteando@gmail.com", "Turisteando123");
                cli.EnableSsl = true;
                cli.Send(msj);




                Response.Redirect("Turisteando.aspx");



            }
            else
            {


                Label1.Text = "Las contrasenas no coinciden o hay Campos en blanco ";
                Label1.Visible = true;
                Nombre.Text = "";
                Correo.Text = "";

            }





        }
    }
}