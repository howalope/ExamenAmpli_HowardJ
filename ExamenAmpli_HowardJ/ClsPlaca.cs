using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ExamenAmpli_HowardJ
{
    public class ClsPlaca
    {

        private static int idPlaca { get; set; }
        private static int terminacion { get; set; }

        //constructor
        public ClsPlaca(int placa, int term)
        {
            idPlaca = placa;
            terminacion = term;
        }

        //atributos
        public static void setPlaca (int placa)
        {
            idPlaca = placa;
        }
        public static int GetPlaca()
        {
            return idPlaca;
        }

        public static void setTerminacion (int term)
        {
            terminacion = term;
        }

        public static int GetTerminacion()
        {
            return terminacion;
        }

        //Stored Procedure AgregarPlaca
        public static int AgregarPlaca ()
        {
            int retorno = 0;
            int tipo = 0;
            SqlConnection Conn = new SqlConnection();

            try
            {
                using (Conn = Clases.DBConnections.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("AGREGRAR_PLACA", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };                   
                    cmd.Parameters.Add(new SqlParameter("@TERMINACION", terminacion));                    

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
        public static int EliminarPlaca()
        {
            int retorno = 0;
            int tipo = 0;
            SqlConnection Conn = new SqlConnection();

            try
            {
                using (Conn = Clases.DBConnections.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("ELIMINAR_PLACA", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@ID", idPlaca));                   

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