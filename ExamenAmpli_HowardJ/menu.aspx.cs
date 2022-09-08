using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenAmpli_HowardJ
{
    public partial class menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BMenu1_Click(object sender, EventArgs e)
        {
            Response.Redirect("placas.aspx");
        }

        protected void BMenu2_Click(object sender, EventArgs e)
        {
            Response.Redirect("dias.aspx");
        }

        protected void BMenu3_Click(object sender, EventArgs e)
        {
            Response.Redirect("restriccion.aspx");
        }

        protected void BMenu4_Click(object sender, EventArgs e)
        {
            Response.Redirect("bitacora.aspx");
        }
        protected void BMenu5_Click(object sender, EventArgs e)
        {
            Response.Redirect("reporte.aspx");
        }
    }
}