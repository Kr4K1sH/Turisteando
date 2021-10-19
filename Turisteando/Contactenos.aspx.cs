using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Turisteando
{
    public partial class Contactenos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MailMessage msj = new MailMessage();
            SmtpClient cli = new SmtpClient();


            String mail = this.txtCorreo.Text;
            string name = this.txtnombre.Text;
            string apellidos = this.txtApellidos.Text;

            msj.From = new MailAddress("turistaturisteando@gmail.com");
            msj.To.Add(new MailAddress(mail));
            msj.Subject = "Hemos Recivido su correo!";
            msj.Body = " Hola " + name + " " + apellidos + ", pronto alguno de nuestros agentes estara en contacto con usted y respondera su mensaje Gracias! ";
            msj.IsBodyHtml = false;

            cli.Host = "smtp.gmail.com";
            cli.Port = 587;
            cli.Credentials = new NetworkCredential("turistaturisteando@gmail.com", "Turisteando123");
            cli.EnableSsl = true;
            cli.Send(msj);

            Response.Redirect("Turisteando.aspx");
        }
    }
}