using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Turisteando.BD;

namespace Turisteando
{
    public partial class Login : System.Web.UI.Page
    {
        Database db = DataBaseFactory.CreateDatabase("ProyectoConnectionString");

        protected void Page_Load(object sender, EventArgs e)
        {
            this.Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.Label1.Visible = false;
          



            SqlDataAdapter lee = new SqlDataAdapter();
            DataSet da = new DataSet();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = db.Conexion;
            cmd.CommandText = "Select Nombre from Usuarios where Email='" + this.Correo.Text + "'and Contraseña='" + this.Contrasena.Text + "'";
            lee.SelectCommand = cmd;
            lee.Fill(da, "Usuarios");
            if (da.Tables[0].Rows.Count > 0)
            {
                Session["Usuario"] = this.Correo.Text;
                Response.Redirect("Turisteando.aspx");

            }
            else
            {
                if ((this.Correo.Text != null && this.Contrasena.Text != null && this.Nombre.Text != null))
                {
                    Label1.Text = "Usuario o Contrasena Incorrectos";
                    this.Label1.Visible = true;
                }
                else
                {
                    Label1.Text = "Usuario no Registrado";
                    this.Label1.Visible = true;
                }
            }
            Nombre.Text = "";
            Correo.Text = "";


        }
    }
}