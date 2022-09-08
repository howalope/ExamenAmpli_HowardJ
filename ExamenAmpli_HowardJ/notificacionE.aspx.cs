using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenAmpli_HowardJ
{
    public partial class notificacionE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BRegresarM_Click(object sender, EventArgs e)
        {
            Response.Redirect("menu.aspx");
        }
    }
}