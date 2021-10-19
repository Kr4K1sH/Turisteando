﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Turisteando.BD;

namespace Turisteando
{
    public partial class Tortuguero : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Informacion inf = new Informacion();
            List<Informacion> lista = inf.SeleccionarTodos();

            foreach (Informacion i in lista)
            {
                if (i.lugar.ToString().Equals("tortuguero"))
                {
                    this.prueba.Text = i.lugar.ToUpper() + "\n";
                    this.TextBox1.InnerText = i.informacion.ToString() + "\n";
                    this.TextBox2.InnerText = "\n PRECIO:" + i.Precio.ToString()  + "\n";
                    this.TextBox3.InnerText = "TELEFONO: " +  i.Telefono.ToString() + "\n";
                }
            }

            Imagenes img = new Imagenes();

            List<Imagenes> listaImg = img.SeleccionarTodos();
            foreach (Imagenes o in listaImg)
            {
                if ((o.Lugar.ToString().Equals("tortuguero")))
                {
                    if (o.nombre.ToString().Equals("canales"))
                    {
                        this.Image1.ImageUrl = o.URL(o.img);

                    }
                    if (o.nombre.ToString().Equals("pacuare"))
                    {
                        this.Image2.ImageUrl = o.URL(o.img);
                    }
                    if (o.nombre.ToString().Equals("tortugas"))
                    {
                        this.Image3.ImageUrl = o.URL(o.img);
                    }
                }
            }


        }
    }
}