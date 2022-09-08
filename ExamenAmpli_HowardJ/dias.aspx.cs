using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenAmpli_HowardJ
{
    public partial class dias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BAgregarD_Click(object sender, EventArgs e)
        {

            ClsDias.setDescripcion(TDia.Text);

            int resultado = ClsDias.AgregarDia();

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

        protected void BEliminarD_Click(object sender, EventArgs e)
        {
            ClsDias.setDescripcion(TDia.Text);

            int resultado = ClsDias.EliminarDia();

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