using System;
using System.Web;
 

namespace GaleriaDeArte
{
    public partial class Comprar : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {


                    CargarImagenes();

                }
                catch (Exception err)
                {

                    Helper.RegistrarEvento("Cargando pagina comprar .aspx " + err.Message);
                }

          

            }

           
        }

        private void CargarImagenes()
        {


            string http = "";
            string archivo ="";
            string loader = PathMap.Loader();
            for (int i = 1; i < 78; i++)
            {
                http = PathMap.HostNameImagesPath() +  i.ToString() + ".bmp";
                archivo = PathMap.ServerPath() + @"GaleriaDeArte" + i.ToString() + ".bmp";

                if (!System.IO.File.Exists(archivo))
                {
                   ClientScript.RegisterStartupScript(this.GetType(), "I" + i.ToString(), "document.getElementById('I" + i.ToString() + "').src = '"+ PathMap.ImagePath() +"/SoldOut.bmp';", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "I" + i.ToString(), "document.getElementById('I" + i.ToString() + "').src = '" + http + "';", true);
                }

 
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (txtCorreo.Text == "" || txtCorreo.Text.ToString().IndexOf("@") == -1)
            {
                this.lblMsg.Text = "Ingrese su correo nuevamente'";
                return;
            }
            string para = "";
            para = this.txtCorreo.Text;
            if (para.IndexOf("@") == -1)
            {
                this.lblMsg0.Text = "Debes ingresar un correo valido.";
                return;
            }

            string CodigoPedido = Proceso.CodigoPedido(txtCorreo.Text);
            bool pedido = false;

            try
            {
                if (this.CantidadGaleriaDeArte1.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte1.SelectedValue, "GaleriaDeArte1", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte2.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte2.SelectedValue, "GaleriaDeArte2", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte3.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte3.SelectedValue, "GaleriaDeArte3", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte4.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte4.SelectedValue, "GaleriaDeArte4", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte5.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte5.SelectedValue, "GaleriaDeArte5", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte6.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte6.SelectedValue, "GaleriaDeArte6", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte8.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte8.SelectedValue, "GaleriaDeArte7", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte8.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte8.SelectedValue, "GaleriaDeArte8", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte9.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte9.SelectedValue, "GaleriaDeArte9", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte10.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte10.SelectedValue, "GaleriaDeArte10", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte11.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte11.SelectedValue, "GaleriaDeArte11", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte12.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte12.SelectedValue, "GaleriaDeArte12", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte13.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte13.SelectedValue, "GaleriaDeArte13", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte14.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte14.SelectedValue, "GaleriaDeArte14", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte15.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte15.SelectedValue, "GaleriaDeArte15", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte16.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte16.SelectedValue, "GaleriaDeArte16", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte17.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte17.SelectedValue, "GaleriaDeArte17", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte18.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte18.SelectedValue, "GaleriaDeArte18", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte19.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte19.SelectedValue, "GaleriaDeArte19", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte20.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte20.SelectedValue, "GaleriaDeArte20", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte21.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte21.SelectedValue, "GaleriaDeArte21", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte22.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte22.SelectedValue, "GaleriaDeArte22", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte23.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte23.SelectedValue, "GaleriaDeArte23", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte24.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte24.SelectedValue, "GaleriaDeArte24", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte25.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte25.SelectedValue, "GaleriaDeArte25", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte26.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte26.SelectedValue, "GaleriaDeArte26", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte27.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte27.SelectedValue, "GaleriaDeArte27", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte28.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte28.SelectedValue, "GaleriaDeArte28", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte29.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte29.SelectedValue, "GaleriaDeArte29", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte30.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte30.SelectedValue, "GaleriaDeArte30", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte31.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte31.SelectedValue, "GaleriaDeArte31", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte32.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte32.SelectedValue, "GaleriaDeArte32", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte33.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte33.SelectedValue, "GaleriaDeArte33", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte34.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte34.SelectedValue, "GaleriaDeArte34", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte35.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte35.SelectedValue, "GaleriaDeArte35", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte36.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte36.SelectedValue, "GaleriaDeArte36", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte37.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte37.SelectedValue, "GaleriaDeArte37", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte38.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte38.SelectedValue, "GaleriaDeArte38", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte39.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte39.SelectedValue, "GaleriaDeArte39", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte40.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte40.SelectedValue, "GaleriaDeArte40", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte41.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte41.SelectedValue, "GaleriaDeArte41", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte42.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte42.SelectedValue, "GaleriaDeArte42", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte43.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte43.SelectedValue, "GaleriaDeArte43", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte44.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte44.SelectedValue, "GaleriaDeArte44", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte45.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte45.SelectedValue, "GaleriaDeArte45", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte46.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte46.SelectedValue, "GaleriaDeArte46", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte47.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte47.SelectedValue, "GaleriaDeArte47", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte48.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte48.SelectedValue, "GaleriaDeArte48", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte49.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte49.SelectedValue, "GaleriaDeArte49", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte50.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte50.SelectedValue, "GaleriaDeArte50", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte51.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte51.SelectedValue, "GaleriaDeArte51", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte52.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte52.SelectedValue, "GaleriaDeArte52", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte53.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte53.SelectedValue, "GaleriaDeArte53", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte54.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte54.SelectedValue, "GaleriaDeArte54", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte55.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte55.SelectedValue, "GaleriaDeArte55", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte56.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte56.SelectedValue, "GaleriaDeArte56", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte57.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte57.SelectedValue, "GaleriaDeArte57", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte58.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte58.SelectedValue, "GaleriaDeArte58", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte59.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte59.SelectedValue, "GaleriaDeArte59", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte60.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte60.SelectedValue, "GaleriaDeArte60", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte61.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte61.SelectedValue, "GaleriaDeArte61", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte62.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte62.SelectedValue, "GaleriaDeArte62", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte63.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte63.SelectedValue, "GaleriaDeArte63", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte64.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte64.SelectedValue, "GaleriaDeArte64", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte65.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte65.SelectedValue, "GaleriaDeArte65", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte66.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte66.SelectedValue, "GaleriaDeArte66", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte67.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte67.SelectedValue, "GaleriaDeArte67", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte68.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte68.SelectedValue, "GaleriaDeArte68", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte69.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte69.SelectedValue, "GaleriaDeArte69", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte70.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte70.SelectedValue, "GaleriaDeArte70", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte71.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte71.SelectedValue, "GaleriaDeArte71", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte72.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte72.SelectedValue, "GaleriaDeArte72", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte73.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte73.SelectedValue, "GaleriaDeArte73", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte74.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte74.SelectedValue, "GaleriaDeArte74", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte75.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte75.SelectedValue, "GaleriaDeArte75", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte76.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte76.SelectedValue, "GaleriaDeArte76", "", this.txtCorreo.Text, "", "", CodigoPedido); };
                if (this.CantidadGaleriaDeArte77.SelectedValue != "0") { pedido = true; Proceso.GuardaPedido(this.CantidadGaleriaDeArte77.SelectedValue, "GaleriaDeArte77", "", this.txtCorreo.Text, "", "", CodigoPedido); };

            }
            catch (Exception es)
            {

                Helper.RegistrarEvento("Guardando Pedido pagina principal " + " "  + es.Message);
                this.lblMsg0.Text = es.Message;
            }
            if (pedido == false)
            {
                this.lblMsg0.Text = "Select an item./Escoja un articulo.";
                return;
            }

            try
            {
                string sql = "Select getdate() as FechaEntrega,  Codigo, Cantidad, Presentacion, Producto,  Precio, Total from PedidosGaleriaDeArte where Correo = '" + this.txtCorreo.Text.Trim() + "' and CodigoPedido = '" + CodigoPedido + "'";
                EnviandoCorreo.EnviarCorreo(para, "Confirmación de Compra", CodigoPedido, sql);
                this.lblMsg.Text = "Confirmacion enviada a tu correo ";
                this.lblMsg0.Text = "";
            }
            catch (Exception es)
            {
                Helper.RegistrarEvento("Correo pagina principal" +" " + es.Message);
                this.lblMsg.Text = "No hemos podido enviar la confirmacion, por favor revise que su correo este bien escrito.";
            }

            Session["Autorizado"] = "Autorizado";
            Session["codigo"] = CodigoPedido;
            Session["correo"] = this.txtCorreo.Text;
 
            Response.Redirect("Pagar.aspx");
        }






    }
}