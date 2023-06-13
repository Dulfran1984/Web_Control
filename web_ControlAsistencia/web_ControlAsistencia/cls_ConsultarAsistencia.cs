using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace web_ControlAsistencia
{
    public class cls_ConsultarAsistencia
    {
        SqlCommand con; SqlDataReader Lectura;
        cls_Conexion objconexion = new cls_Conexion();
        private DataTable dt;
        private int int_asistencia;
        public void fnt_Consultar()
        {
            try
            {
                con = new SqlCommand("SP_ConsultarAsistencia", objconexion.connection);
                con.CommandType = CommandType.StoredProcedure;
                objconexion.connection.Open();
                Lectura = con.ExecuteReader();
                if (Lectura.Read() == true)
                {
                    int_asistencia = Convert.ToInt16(Lectura[0]);
                    objconexion.connection.Close();
                }
            }
            catch (Exception) { }
        }
        public void fnt_CargarReporte()
        {
            SqlDataAdapter da = new SqlDataAdapter("SP_ReporteAsistencia", objconexion.connection);
            dt = new DataTable();
            objconexion.connection.Open();
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            //da.SelectCommand.Parameters.AddWithValue("@ot_cliente", txtot.Text);
            da.Fill(dt);
            objconexion.connection.Close();
        }
        public int getAsistencia() { return this.int_asistencia; }
        public DataTable getReporte() { return this.dt; }
    }
}