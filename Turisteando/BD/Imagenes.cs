using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Turisteando.BD
{
    public class Imagenes
    {
        public int idIma { set; get; }
        public string Lugar { set; get; }

        public string nombre { set; get; }

        public byte[] img { set; get; }

        public List<Imagenes> SeleccionarTodos()
        {

            Database db = DataBaseFactory.CreateDatabase("ProyectoConnectionString");

            SqlCommand comando = new SqlCommand("Select * from Imagenes");
            comando.CommandType = CommandType.Text;
            comando.Connection = db.Conexion;
            List<Imagenes> imagens = new List<Imagenes>();
            SqlDataReader lee = comando.ExecuteReader();
            while (lee.Read())
            {
                Imagenes v = new Imagenes();
                v.idIma = Convert.ToInt32(lee["ID"].ToString());
                v.Lugar = (lee["Lugar"].ToString());
                v.nombre = (lee["NombreImagen"].ToString());
                v.img = (byte[])lee["Imagen"];
                imagens.Add(v);
            }

            return imagens;
        }
        public string URL(byte[] bytes)
        {
            string URL = "";
            string base64 = "";
            base64 = Convert.ToBase64String(bytes);
            URL += "data:Image/jpg;base64," + base64;
            return URL;
        }
    }

}