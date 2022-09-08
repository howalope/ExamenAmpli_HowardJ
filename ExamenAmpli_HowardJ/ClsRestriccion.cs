using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ExamenAmpli_HowardJ
{
    public class ClsRestriccion
    {
        private static int idPlaca { get; set; }
        private static int idDia { get; set; }

        private static int idRestriccion { get; set; }

        //constructor
        public ClsRestriccion (int idP, int idD, int idR)
        {
            idPlaca = idP;
            idDia = idD;
            idRestriccion = idR;
        }

        //atributos

        public static void setIdP(int idP)
        {
            idPlaca = idP;
        }

        public static int GetIdP()
        {
            return idPlaca;
        }

        public static void setIdD(int idD)
        {
            idDia = idD;
        }

        public static int GetIdD()
        {
            return idDia;
        }
        public static void setIdR (int idR)
        {
            idRestriccion = idR;
        }
        public static int GetIdR()
        {
            return idRestriccion;
        }

        //Stored Procedure Agregar Restriccion
        public static int AgregarRestriccion()
        {
            int retorno = 0;
            int tipo = 0;
            SqlConnection Conn = new SqlConnection();

            try
            {
                using (Conn = Clases.DBConnections.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("AGREGAR_RESTRICCION", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@IDP", idPlaca));
                    cmd.Parameters.Add(new SqlParameter("@IDDI", idDia));
                    

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
        public static int EliminarRestriccion()
        {
            int retorno = 0;
            int tipo = 0;
            SqlConnection Conn = new SqlConnection();

            try
            {
                using (Conn = Clases.DBConnections.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("ELIMINAR_RESTRICCION", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@IDR", idRestriccion));

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