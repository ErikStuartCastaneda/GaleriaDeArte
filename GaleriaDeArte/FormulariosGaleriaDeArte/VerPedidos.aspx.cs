using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GaleriaDeArte.FormulariosGaleriaDeArte
{
    public partial class VerPedidos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string aut = Session["Autorizado"].ToString();

                if (aut != "Autorizado")
                {
                   // Response.Redirect("http://localhost:8080/FormulariosGaleriaDeArte/Validar.aspx");
                    Response.Redirect("Validar.aspx");
                }
            }
            catch (Exception)
            {

                // Response.Redirect("http://localhost:8080/FormulariosGaleriaDeArte/Validar.aspx");
               Response.Redirect("Validar.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (this.txtPedidos.Text != "")
            {
                string sql = "Select   FechaConfirmado,Fecha as FechaPedido, TotalCompra ,CodigoPedido, Facturado,case when Confirmado != 1 then 'No' else 'Si' end as Pagado, case when Entregado != 1 then 'No' else 'Si' end as Entregado  from PedidosGaleriaDeArte where Correo = '" + this.txtPedidos.Text.Trim() + "' and Entregado != 1  group by  Confirmado,  FechaConfirmado,Fecha , TotalCompra ,CodigoPedido, Facturado, Entregado ";
                EnviandoCorreo.EnviarCorreo(txtPedidos.Text.ToString(), "Pedidos Pendientes de Entrega", "Pedido", sql);
                this.lblMsg.Text = "Informacion enviada a su correo ";
            }
            else { this.lblMsg.Text = "Indique su correo"; }
        }
    }
}