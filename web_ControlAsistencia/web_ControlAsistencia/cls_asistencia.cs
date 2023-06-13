using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace web_ControlAsistencia
{
    public class cls_asistencia
    {
        private string str_nombre;
        private string str_edad;
        private string str_comida;
        private string str_mensaje;
        cls_RegistrarAsistencia objRegistrar = new cls_RegistrarAsistencia();
        public void fnt_agregar(string str_nombre, string str_edad, string str_comida)
        {
            if (Convert.ToInt16(str_edad) >= 18)
            {

                if (str_nombre != "" && str_comida != "")
                {
                    objRegistrar.fnt_Crear(str_nombre, str_edad, str_comida);
                    str_mensaje = objRegistrar.getMensaje();
                }
                else
                {
                    str_mensaje = "Debe ingresar todos los datos de registro";
                }
            }
            else {
                str_mensaje = "No cumples con la edad adecuada para asistir";
            }
        }
        public string getNombre() { return this.str_nombre; }
        public string getEdad() { return this.str_edad; }
        public string getComida() { return this.str_comida; }
        public string getMensaje() { return this.str_mensaje; }
    }
}