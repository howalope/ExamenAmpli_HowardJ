using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ExamenAmpli_HowardJ
{
    public class ClsDias
    {
        private static string descripcion { get; set; }

        //constructor
        public ClsDias (string desc)
        {
            descripcion = desc;
        }

        //atributos
        public static void setDescripcion (string desc)
        {
            descripcion = desc;
        }

        public static string GetDescripcion() { return descripcion; }

        //Stored Procedure Agregar Dia
        public static int AgregarDia()
        {
            int retorno = 0;
            int tipo = 0;
            SqlConnection Conn = new SqlConnection();

            try
            {
                using (Conn = Clases.DBConnections.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("AGREGRAR_DIAS", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@DESCRIPCION", descripcion));

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            retorno = 1;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
            }
            return retorno;
        }
        //Stored Procedure EliminarPlaca
        public static int EliminarDia()
        {
            int retorno = 0;
            int tipo = 0;
            SqlConnection Conn = new SqlConnection();

            try
            {
                using (Conn = Clases.DBConnections.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("ELIMINAR_DIAS", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@DESCRIPCION", descripcion));

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            retorno = 1;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
            }
            return retorno;
        }
    }
}