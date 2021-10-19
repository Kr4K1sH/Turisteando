using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using Turisteando.BD;

namespace Turisteando.BD
{

    public class Informacion
    {
        public int ID { set; get; }
        public string lugar { set; get; }
        public string Telefono { set; get; }

        public string Precio { set; get; }
        public string informacion { set; get; }

        public List<Informacion> SeleccionarTodos()
        {

            Database db = DataBaseFactory.CreateDatabase("ProyectoConnectionString");

            SqlCommand comando = new SqlCommand("Select * from Informacion");
            comando.CommandType = CommandType.Text;
            comando.Connection = db.Conexion;
            List<Informacion> Info = new List<Informacion>();
            SqlDataReader lee = comando.ExecuteReader();
            while (lee.Read())
            {
                Informacion v = new Informacion();
                v.ID = Convert.ToInt32(lee["ID"].ToString());
                v.lugar = lee["Lugar"].ToString();
                v.Telefono = lee["Telefonos"].ToString();
                v.Precio = lee["Precio"].ToString();
                v.informacion = lee["Informacion"].ToString();
                Info.Add(v);
            }

            return Info;
        }
    }
}