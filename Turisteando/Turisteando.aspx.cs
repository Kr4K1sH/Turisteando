using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Turisteando.BD;

namespace Turisteando
{
    public partial class Turisteando : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Informacion inf = new Informacion();
            List<Informacion> lista = inf.SeleccionarTodos();

            foreach (Informacion i in lista)
            {
                if (i.lugar.ToString().Equals("Bosque del niño"))
                {
                    this.r.Text = i.lugar.ToString();
                   

                    //los de arriba son los de los articulos los de
                    // abajo son los del aside
                 
                  
                }
                if(i.lugar.ToString().Equals("isla del coco"))
                {
                    this.isladelcoco.Text = i.lugar.ToString();
                  
                    //los de arriba son los de los articulos los de
                    // abajo son los del aside
                   
                   

                }
                if (i.lugar.ToString().Equals("manuel antonio"))
                {
                    this.manuelantonio.Text = i.lugar.ToString();
                   
                    //los de arriba son los de los articulos los de
                    // abajo son los del aside
                  

                }
                if (i.lugar.ToString().Equals("tortuguero"))
                {
                    this.tortuguero.Text = i.lugar.ToString();
                   
                    //los de arriba son los de los articulos los de
                    // abajo son los del aside
                 
                }
            }
            Imagenes img = new Imagenes();

            List<Imagenes> listaImg = img.SeleccionarTodos();
            foreach (Imagenes o in listaImg)
            {
                if ((o.Lugar.ToString().Equals("Bosque del niño") && o.nombre.ToString().Equals("imagen")))
                {
                    Image.ImageUrl = o.URL(o.img);
                    //los de arriba son los de los articulos los de
                    // abajo son los del aside
                  
                }
                if (o.Lugar.ToString().Equals("isla del coco") && o.nombre.ToString().Equals("buseo"))
                {
                    isladelcoco1img.ImageUrl = o.URL(o.img);
                    //los de arriba son los de los articulos los de
                    // abajo son los del aside
                   
                }
                if (o.Lugar.ToString().Equals("manuel antonio") && o.nombre.ToString().Equals("scuba"))
                {
                    manuelantonioimg.ImageUrl = o.URL(o.img);
                    //los de arriba son los de los articulos los de
                    // abajo son los del aside
                  
                }
                if (o.Lugar.ToString().Equals("tortuguero") && o.nombre.ToString().Equals("pacuare"))
                {
                    tortugueroimg.ImageUrl = o.URL(o.img);
                    //los de arriba son los de los articulos los de
                    // abajo son los del aside
                    
                }
            }

        }
    }
}