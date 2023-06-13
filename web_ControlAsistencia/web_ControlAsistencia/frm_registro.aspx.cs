using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_ControlAsistencia
{
    public partial class frm_registro : System.Web.UI.Page
    {
        cls_ConsultarAsistencia objConsultar = new cls_ConsultarAsistencia();
        protected void Page_Load(object sender, EventArgs e)
        {
            fnt_Consultar();
            fnt_Reporte();
        }
        public void fnt_Reporte()
        {
            objConsultar.fnt_CargarReporte();
            dtg_Asisten.DataSource = objConsultar.getReporte();
            dtg_Asisten.DataBind();
        }
        public void fnt_Consultar()
        {
            objConsultar.fnt_Consultar();
            lbl_contador.Text = Convert.ToString(objConsultar.getAsistencia());
        }
        protected void btn_Registrar_Click(object sender, EventArgs e)
        {
            cls_asistencia objRegistro = new cls_asistencia();
            objRegistro.fnt_agregar(txt_Nombre.Text, txt_Edad.Text, Convert.ToString(cbx_Comida.SelectedIndex + 1));
            lbl_mensaje.Text = objRegistro.getMensaje();
            lbl_mensaje.Visible = true;
            fnt_Consultar();//Cargar contador
            fnt_Reporte();//Cargar datagrid
        }
    }
}