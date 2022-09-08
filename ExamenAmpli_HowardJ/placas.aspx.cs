using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenAmpli_HowardJ
{
    public partial class placas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BAgregarP_Click(object sender, EventArgs e)
        {
           
            ClsPlaca.setTerminacion(Int32.Parse(TTerminacion.Text));

            int resultado = ClsPlaca.AgregarPlaca();

            if (resultado > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification: Usuario no ha sido Registrado');", true);
                Response.Redirect("menu.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification: Usuario ha sido Registrado');", true);
                Response.Redirect("notificacionC.aspx");
            }
            return;
        }

        protected void BEliminarP_Click(object sender, EventArgs e)
        {
            ClsPlaca.setPlaca(Int32.Parse(TPlaca.Text));

            int resultado = ClsPlaca.EliminarPlaca();

            if (resultado > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification: Usuario no ha sido Registrado');", true);
                Response.Redirect("menu.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Notify", "alert('Notification: Usuario ha sido Registrado');", true);
                Response.Redirect("notificacionE.aspx");
            }
            return;
        }
    }
}