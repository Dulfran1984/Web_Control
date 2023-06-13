using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace web_ControlAsistencia
{
    public class cls_RegistrarAsistencia
    {
        private string str_mensaje;
        cls_Conexion objConexion = new cls_Conexion();
        public void fnt_Crear(string n, string edad, string comida)
        {
            try
            {
                SqlCommand con = new SqlCommand("SP_AgregarAsistencia", objConexion.connection);
                con.CommandType = CommandType.StoredProcedure;
                con.Parameters.AddWithValue("@nombre", n);
                con.Parameters.AddWithValue("@edad", edad);
                con.Parameters.AddWithValue("@comida", comida);
                objConexion.connection.Open();
                con.ExecuteNonQuery();
                objConexion.connection.Close();
                str_mensaje = "Se ha registrado la asistencia con éxito";
            }
            catch (Exception) { str_mensaje = "Error al registrar los datos"; }
        }
        public string getMensaje() { return this.str_mensaje; }
    }
}