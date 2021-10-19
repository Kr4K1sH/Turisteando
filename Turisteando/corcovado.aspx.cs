using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Turisteando.BD;

namespace Turisteando
{
    public partial class Pags : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Informacion inf = new Informacion();
            List<Informacion> lista = inf.SeleccionarTodos();

            foreach (Informacion i in lista)
            {
                if (i.lugar.ToString().Equals("corcovado"))
                {
                   this.prueba.Text = i.lugar.ToUpper()+ "\n";
                    this.TextBox1.InnerText = "\n" +i.informacion.ToString()+ "\n";
                    this.TextBox2.InnerText = "\n PRECIO:"+ i.Precio.ToString()+ "\n";
                   this.TextBox3.InnerText ="TELEFONO: "+i.Telefono.ToString() + "\n";
                }
            }

            Imagenes img = new Imagenes();

            List<Imagenes> listaImg = img.SeleccionarTodos();
            foreach (Imagenes o in listaImg)
            {
                if ((o.Lugar.ToString().Equals("corcovado")) )
                {
                    if (o.nombre.ToString().Equals("cueva corcovado"))
                    {
                       this.Image1.ImageUrl = o.URL(o.img);
                    
                    }
                    if(o.nombre.ToString().Equals("corcovado"))
                    {
                        this.Image2.ImageUrl = o.URL(o.img);
                    }
                    if (o.nombre.ToString().Equals("cuevas"))
                    {
                       this.Image3.ImageUrl = o.URL(o.img);
                    }
                }
            }





                }//fin load
    }
}