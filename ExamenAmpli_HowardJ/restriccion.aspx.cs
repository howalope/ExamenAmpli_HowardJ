using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenAmpli_HowardJ
{
    public partial class restriccion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BAgregarR_Click(object sender, EventArgs e)
        {

            ClsRestriccion.setIdP(Int32.Parse(TidP.Text));
            ClsRestriccion.setIdD(Int32.Parse(TidD.Text));

            int resultado = ClsRestriccion.AgregarRestriccion();

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

        protected void BEliminarR_Click(object sender, EventArgs e)
        {
            ClsRestriccion.setIdR(Int32.Parse(TidR.Text));

            int resultado = ClsRestriccion.EliminarRestriccion();

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