using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script;

namespace GaleriaDeArte.FormulariosGaleriaDeArte
{
    public partial class Desbloqueo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Codigo = "";

            try
            {
                Codigo = Request.QueryString["codigo"].ToString();
                string valida = Proceso.RegresaCadena_1_Resultado("Select count(*) from MaestroEmpresas where Codigo = '" + Codigo + "'");
                if (valida != "0")
                {
                    Proceso.DesBloquearCuenta("GaleriaDeArte", Codigo);
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script type='text/javascript'>alert('Cuenta Desbloqueada')<script>", true);
                    Response.Redirect("../GaleriaDeArte.aspx");

                }
                else {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script type='text/javascript'>alert('El codigo no corresponde o la cuenta ya esta desbloqueada.')<script>", true);
                }

            }
            catch (Exception)
            {

                Response.Redirect("https://www.grupo-hesse.com/GaleriaDeArte.aspx");
            }



        }
    }
}