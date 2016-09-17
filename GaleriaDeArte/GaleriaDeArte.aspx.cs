using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GaleriaDeArte
{
    public partial class GaleriaDeArte : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["CodigoCompra"] = "0D836D29C0325FE965EEAF94143109C3=>2016-09-16 21:45";

              Response.Redirect("FormulariosGaleriaDeArte/Rpt1.aspx");
          
        }
    }
}