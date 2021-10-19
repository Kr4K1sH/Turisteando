using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Turisteando.BD;

namespace Turisteando
{
    public partial class IslaDelCoco : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Informacion inf = new Informacion();
            List<Informacion> lista = inf.SeleccionarTodos();

            foreach (Informacion i in lista)
            {
                if (i.lugar.ToString().Equals("isla del coco"))
                {
                    this.prueba.Text = i.lugar.ToUpper() + "\n";
                    this.TextBox1.InnerText = "\n" + i.informacion.ToString() + "\n";
                    this.TextBox2.InnerText = "\n PRECIO:" + i.Precio.ToString() + "\n";
                    this.TextBox3.InnerText = "TELEFONO: " + i.Telefono.ToString() + "\n";
                }
            }

            Imagenes img = new Imagenes();

            List<Imagenes> listaImg = img.SeleccionarTodos();
            foreach (Imagenes o in listaImg)
            {
                if ((o.Lugar.ToString().Equals("isla del coco")))
                {
                    if (o.nombre.ToString().Equals("buseo"))
                    {
                        this.Image1.ImageUrl = o.URL(o.img);

                    }
                    if (o.nombre.ToString().Equals("isla del coco"))
                    {
                        this.Image2.ImageUrl = o.URL(o.img);
                    }
                    if (o.nombre.ToString().Equals("rocas isla"))
                    {
                        this.Image3.ImageUrl = o.URL(o.img);
                    }
                }
            }



        }
    }
}