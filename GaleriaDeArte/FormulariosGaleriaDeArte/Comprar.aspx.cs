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

                Panel1.Attributes.Add("style", "display:none");
                Panel2.Attributes.Add("style", "display:none");
                Panel3.Attributes.Add("style", "display:none");
                Panel4.Attributes.Add("style", "display:none");
                Panel5.Attributes.Add("style", "display:none");
                Panel6.Attributes.Add("style", "display:none");
                Panel7.Attributes.Add("style", "display:none");
                Panel8.Attributes.Add("style", "display:none");
                Panel9.Attributes.Add("style", "display:none");
                Panel10.Attributes.Add("style", "display:none");
                Panel11.Attributes.Add("style", "display:none");
                Panel12.Attributes.Add("style", "display:none");
                Panel13.Attributes.Add("style", "display:none");
                Panel14.Attributes.Add("style", "display:none");
                Panel15.Attributes.Add("style", "display:none");
                Panel16.Attributes.Add("style", "display:none");
                Panel17.Attributes.Add("style", "display:none");
                Panel18.Attributes.Add("style", "display:none");
                Panel19.Attributes.Add("style", "display:none");
                Panel20.Attributes.Add("style", "display:none");
                Panel21.Attributes.Add("style", "display:none");
                Panel22.Attributes.Add("style", "display:none");
                Panel23.Attributes.Add("style", "display:none");
                Panel24.Attributes.Add("style", "display:none");
                Panel25.Attributes.Add("style", "display:none");
                Panel26.Attributes.Add("style", "display:none");
                Panel27.Attributes.Add("style", "display:none");
                Panel28.Attributes.Add("style", "display:none");
                Panel29.Attributes.Add("style", "display:none");
                Panel30.Attributes.Add("style", "display:none");
                Panel31.Attributes.Add("style", "display:none");
                Panel32.Attributes.Add("style", "display:none");
                Panel33.Attributes.Add("style", "display:none");
                Panel34.Attributes.Add("style", "display:none");
                Panel35.Attributes.Add("style", "display:none");
                Panel36.Attributes.Add("style", "display:none");
                Panel37.Attributes.Add("style", "display:none");
                Panel38.Attributes.Add("style", "display:none");
                Panel39.Attributes.Add("style", "display:none");
                Panel40.Attributes.Add("style", "display:none");
                Panel41.Attributes.Add("style", "display:none");
                Panel42.Attributes.Add("style", "display:none");
                Panel43.Attributes.Add("style", "display:none");
                Panel44.Attributes.Add("style", "display:none");
                Panel45.Attributes.Add("style", "display:none");
                Panel46.Attributes.Add("style", "display:none");
                Panel47.Attributes.Add("style", "display:none");
                Panel48.Attributes.Add("style", "display:none");
                Panel49.Attributes.Add("style", "display:none");
                Panel50.Attributes.Add("style", "display:none");
                Panel51.Attributes.Add("style", "display:none");
                Panel52.Attributes.Add("style", "display:none");
                Panel53.Attributes.Add("style", "display:none");
                Panel54.Attributes.Add("style", "display:none");
                Panel55.Attributes.Add("style", "display:none");
                Panel56.Attributes.Add("style", "display:none");
                Panel57.Attributes.Add("style", "display:none");
                Panel58.Attributes.Add("style", "display:none");
                Panel59.Attributes.Add("style", "display:none");
                Panel60.Attributes.Add("style", "display:none");
                Panel61.Attributes.Add("style", "display:none");
                Panel62.Attributes.Add("style", "display:none");
                Panel63.Attributes.Add("style", "display:none");
                Panel64.Attributes.Add("style", "display:none");
                Panel65.Attributes.Add("style", "display:none");
                Panel66.Attributes.Add("style", "display:none");
                Panel67.Attributes.Add("style", "display:none");
                Panel68.Attributes.Add("style", "display:none");
                Panel69.Attributes.Add("style", "display:none");
                Panel70.Attributes.Add("style", "display:none");
                Panel71.Attributes.Add("style", "display:none");
                Panel72.Attributes.Add("style", "display:none");
                Panel73.Attributes.Add("style", "display:none");
                Panel74.Attributes.Add("style", "display:none");
                Panel75.Attributes.Add("style", "display:none");
                Panel76.Attributes.Add("style", "display:none");
                Panel77.Attributes.Add("style", "display:none");
                Panel78.Attributes.Add("style", "display:none");
          

            }

            CargarImagenes();
        }

        private void CargarImagenes()
        {


            string address = PathMap.ServerPath();

            string archivo = "";
            string http = "";


            for (int i = 1; i < 78; i++)
            {
                archivo = address + "GaleriaDeArte" + i.ToString() + ".bmp";
                if (!System.IO.File.Exists(archivo))
                {
                   ClientScript.RegisterStartupScript(this.GetType(), "Img" + i.ToString(), "document.getElementById('I" + i.ToString() + "').src = '"+ PathMap.ImagePath() +"/SoldOut.bmp';", true);

                }
                else
                {
                    http = PathMap.HostNameImagesPath() + i.ToString() + ".bmp";
                    ClientScript.RegisterStartupScript(this.GetType(), "Img" + i.ToString(), "document.getElementById('I" + i.ToString() + "').src = '" + http + "';", true);
                    ClientScript.RegisterStartupScript(this.GetType(), "ImgA" + i.ToString(), "  this." + "Img" + i.ToString() + ".Attributes.Add('onclick', LoadDiv('" + PathMap.HostNameImagesPath() + i.ToString() + ".bmp" + "');");
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

        protected void CalidadAceituna_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte1.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte1.SelectedValue, "GaleriaDeArte1", "");
            Panel1.Attributes.Add("style", "display:none");
        

        }

        protected void CantidadGaleriaDeArte1_SelectedIndexChanged(object sender, EventArgs e)
        {

            PrecioGaleriaDeArte1.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte1.SelectedValue, "GaleriaDeArte1", "");
            Panel1.Attributes.Add("style", "display:none");
    

        }

        protected void SelectGaleriaDeArte1_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte1.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte1.SelectedValue, "GaleriaDeArte1", "");
            Panel1.Attributes.Add("style", "display:none");
     

        }

        protected void SelectGaleriaDeArte2_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte2.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte2.SelectedValue, "GaleriaDeArte2", "");
            Panel2.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte2_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte2.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte2.SelectedValue, "GaleriaDeArte2", "");
            Panel2.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte2_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte2.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte2.SelectedValue, "GaleriaDeArte2", "");
            Panel2.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte3_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte3.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte3.SelectedValue, "GaleriaDeArte3", "");
            Panel3.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte3_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte3.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte3.SelectedValue, "GaleriaDeArte3", "");
            Panel3.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte3_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte3.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte3.SelectedValue, "GaleriaDeArte3", "");
            Panel3.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte4_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte4.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte4.SelectedValue, "GaleriaDeArte4", "");
            Panel4.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte4_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte4.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte4.SelectedValue, "GaleriaDeArte4", "");
            Panel4.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte4_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte4.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte4.SelectedValue, "GaleriaDeArte4", "");
            Panel4.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte5_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte5.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte5.SelectedValue, "GaleriaDeArte5", "");
            Panel5.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte5_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte5.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte5.SelectedValue, "GaleriaDeArte5", "");
            Panel5.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte5_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte5.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte5.SelectedValue, "GaleriaDeArte5", "");
            Panel5.Attributes.Add("style", "display:none");
        }
        protected void SelectGaleriaDeArte6_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte6.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte6.SelectedValue, "GaleriaDeArte6", "");
            Panel6.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte6_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte6.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte6.SelectedValue, "GaleriaDeArte6", "");
            Panel6.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte6_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte6.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte6.SelectedValue, "GaleriaDeArte6", "");
            Panel6.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte8_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte8.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte8.SelectedValue, "GaleriaDeArte8", "");
            Panel8.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte8_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte8.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte8.SelectedValue, "GaleriaDeArte8", "");
            Panel8.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte8_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte8.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte8.SelectedValue, "GaleriaDeArte8", "");
            Panel8.Attributes.Add("style", "display:none");
        }



        protected void SelectGaleriaDeArte9_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte9.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte9.SelectedValue, "GaleriaDeArte9", "");
            Panel9.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte9_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte9.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte9.SelectedValue, "GaleriaDeArte9", "");
            Panel9.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte9_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte9.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte9.SelectedValue, "GaleriaDeArte9", "");
            Panel9.Attributes.Add("style", "display:none");
        }
        protected void SelectGaleriaDeArte10_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte10.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte10.SelectedValue, "GaleriaDeArte10", "");
            Panel10.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte10_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte10.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte10.SelectedValue, "GaleriaDeArte10", "");
            Panel10.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte10_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte10.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte10.SelectedValue, "GaleriaDeArte10", "");
            Panel10.Attributes.Add("style", "display:none");
        }


        protected void SelectGaleriaDeArte12_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte12.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte12.SelectedValue, "GaleriaDeArte12", "");
            Panel12.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte12_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte12.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte12.SelectedValue, "GaleriaDeArte12", "");
            Panel12.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte12_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte12.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte12.SelectedValue, "GaleriaDeArte12", "");
            Panel12.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte13_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte13.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte13.SelectedValue, "GaleriaDeArte13", "");
            Panel13.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte13_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte13.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte13.SelectedValue, "GaleriaDeArte13", "");
            Panel13.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte13_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte13.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte13.SelectedValue, "GaleriaDeArte13", "");
            Panel13.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte14_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte14.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte14.SelectedValue, "GaleriaDeArte14", "");
            Panel14.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte14_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte14.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte14.SelectedValue, "GaleriaDeArte14", "");
            Panel14.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte14_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte14.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte14.SelectedValue, "GaleriaDeArte14", "");
            Panel14.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte15_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte15.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte15.SelectedValue, "GaleriaDeArte15", "");
            Panel15.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte15_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte15.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte15.SelectedValue, "GaleriaDeArte15", "");
            Panel15.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte15_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte15.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte15.SelectedValue, "GaleriaDeArte15", "");
            Panel15.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte16_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte16.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte16.SelectedValue, "GaleriaDeArte16", "");
            Panel16.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte16_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte16.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte16.SelectedValue, "GaleriaDeArte16", "");
            Panel16.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte16_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte16.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte16.SelectedValue, "GaleriaDeArte16", "");
            Panel16.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte17_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte17.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte17.SelectedValue, "GaleriaDeArte17", "");
            Panel17.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte17_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte17.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte17.SelectedValue, "GaleriaDeArte17", "");
            Panel17.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte17_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte17.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte17.SelectedValue, "GaleriaDeArte17", "");
            Panel17.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte18_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte18.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte18.SelectedValue, "GaleriaDeArte18", "");
            Panel18.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte18_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte18.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte18.SelectedValue, "GaleriaDeArte18", "");
            Panel18.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte18_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte18.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte18.SelectedValue, "GaleriaDeArte18", "");
            Panel18.Attributes.Add("style", "display:none");
        }


        protected void SelectGaleriaDeArte19_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte19.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte19.SelectedValue, "GaleriaDeArte19", "");
            Panel19.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte19_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte19.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte19.SelectedValue, "GaleriaDeArte19", "");
            Panel19.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte19_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte19.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte19.SelectedValue, "GaleriaDeArte19", "");
            Panel19.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte20_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte20.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte20.SelectedValue, "GaleriaDeArte20", "");
            Panel20.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte20_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte20.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte20.SelectedValue, "GaleriaDeArte20", "");
            Panel20.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte20_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte20.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte20.SelectedValue, "GaleriaDeArte20", "");
            Panel20.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte21_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte21.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte21.SelectedValue, "GaleriaDeArte21", "");
            Panel21.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte21_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte21.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte21.SelectedValue, "GaleriaDeArte21", "");
            Panel21.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte21_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte21.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte21.SelectedValue, "GaleriaDeArte21", "");
            Panel21.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte22_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte22.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte22.SelectedValue, "GaleriaDeArte22", "");
            Panel22.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte22_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte22.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte22.SelectedValue, "GaleriaDeArte22", "");
            Panel22.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte22_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte22.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte22.SelectedValue, "GaleriaDeArte22", "");
            Panel22.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte24_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte24.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte24.SelectedValue, "GaleriaDeArte24", "");
            Panel24.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte24_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte24.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte24.SelectedValue, "GaleriaDeArte24", "");
            Panel24.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte24_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte24.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte24.SelectedValue, "GaleriaDeArte24", "");
            Panel24.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte25_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte25.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte25.SelectedValue, "GaleriaDeArte25", "");
            Panel25.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte25_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte25.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte25.SelectedValue, "GaleriaDeArte25", "");
            Panel25.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte25_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte25.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte25.SelectedValue, "GaleriaDeArte25", "");
            Panel25.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte26_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte26.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte26.SelectedValue, "GaleriaDeArte26", "");
            Panel26.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte26_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte26.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte26.SelectedValue, "GaleriaDeArte26", "");
            Panel26.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte26_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte26.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte26.SelectedValue, "GaleriaDeArte26", "");
            Panel26.Attributes.Add("style", "display:none");
        }
        protected void SelectGaleriaDeArte27_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte27.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte27.SelectedValue, "GaleriaDeArte27", "");
            Panel27.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte27_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte27.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte27.SelectedValue, "GaleriaDeArte27", "");
            Panel27.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte27_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte27.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte27.SelectedValue, "GaleriaDeArte27", "");
            Panel27.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte28_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte28.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte28.SelectedValue, "GaleriaDeArte28", "");
            Panel28.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte28_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte28.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte28.SelectedValue, "GaleriaDeArte28", "");
            Panel28.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte28_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte28.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte28.SelectedValue, "GaleriaDeArte28", "");
            Panel28.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte29_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte29.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte29.SelectedValue, "GaleriaDeArte29", "");
            Panel29.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte29_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte29.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte29.SelectedValue, "GaleriaDeArte29", "");
            Panel29.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte29_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte29.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte29.SelectedValue, "GaleriaDeArte29", "");
            Panel29.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte30_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte30.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte30.SelectedValue, "GaleriaDeArte30", "");
            Panel30.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte30_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte30.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte30.SelectedValue, "GaleriaDeArte30", "");
            Panel30.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte30_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte30.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte30.SelectedValue, "GaleriaDeArte30", "");
            Panel30.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte31_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte31.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte31.SelectedValue, "GaleriaDeArte31", "");
            Panel31.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte31_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte31.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte31.SelectedValue, "GaleriaDeArte31", "");
            Panel31.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte31_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte31.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte31.SelectedValue, "GaleriaDeArte31", "");
            Panel31.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte32_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte32.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte32.SelectedValue, "GaleriaDeArte32", "");
            Panel32.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte32_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte32.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte32.SelectedValue, "GaleriaDeArte32", "");
            Panel32.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte32_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte32.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte32.SelectedValue, "GaleriaDeArte32", "");
            Panel32.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte33_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte33.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte33.SelectedValue, "GaleriaDeArte33", "");
            Panel33.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte33_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte33.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte33.SelectedValue, "GaleriaDeArte33", "");
            Panel33.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte33_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte33.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte33.SelectedValue, "GaleriaDeArte33", "");
            Panel33.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte34_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte34.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte34.SelectedValue, "GaleriaDeArte34", "");
            Panel34.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte34_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte34.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte34.SelectedValue, "GaleriaDeArte34", "");
            Panel34.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte34_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte34.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte34.SelectedValue, "GaleriaDeArte34", "");
            Panel34.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte35_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte35.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte35.SelectedValue, "GaleriaDeArte35", "");
            Panel35.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte35_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte35.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte35.SelectedValue, "GaleriaDeArte35", "");
            Panel35.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte35_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte35.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte35.SelectedValue, "GaleriaDeArte35", "");
            Panel35.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte36_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte36.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte36.SelectedValue, "GaleriaDeArte36", "");
            Panel36.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte36_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte36.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte36.SelectedValue, "GaleriaDeArte36", "");
            Panel36.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte36_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte36.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte36.SelectedValue, "GaleriaDeArte36", "");
            Panel36.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte37_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte37.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte37.SelectedValue, "GaleriaDeArte37", "");
            Panel37.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte37_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte37.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte37.SelectedValue, "GaleriaDeArte37", "");
            Panel37.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte37_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte37.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte37.SelectedValue, "GaleriaDeArte37", "");
            Panel37.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte38_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte38.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte38.SelectedValue, "GaleriaDeArte38", "");
            Panel38.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte38_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte38.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte38.SelectedValue, "GaleriaDeArte38", "");
            Panel38.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte38_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte38.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte38.SelectedValue, "GaleriaDeArte38", "");
            Panel38.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte39_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte39.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte39.SelectedValue, "GaleriaDeArte39", "");
            Panel39.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte39_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte39.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte39.SelectedValue, "GaleriaDeArte39", "");
            Panel39.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte39_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte39.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte39.SelectedValue, "GaleriaDeArte39", "");
            Panel39.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte40_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte40.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte40.SelectedValue, "GaleriaDeArte40", "");
            Panel40.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte40_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte40.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte40.SelectedValue, "GaleriaDeArte40", "");
            Panel40.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte40_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte40.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte40.SelectedValue, "GaleriaDeArte40", "");
            Panel40.Attributes.Add("style", "display:none");
        }
        protected void SelectGaleriaDeArte41_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte41.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte41.SelectedValue, "GaleriaDeArte41", "");
            Panel41.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte41_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte41.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte41.SelectedValue, "GaleriaDeArte41", "");
            Panel41.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte41_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte41.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte41.SelectedValue, "GaleriaDeArte41", "");
            Panel41.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte42_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte42.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte42.SelectedValue, "GaleriaDeArte42", "");
            Panel42.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte42_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte42.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte42.SelectedValue, "GaleriaDeArte42", "");
            Panel42.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte42_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte42.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte42.SelectedValue, "GaleriaDeArte42", "");
            Panel42.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte43_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte43.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte43.SelectedValue, "GaleriaDeArte43", "");
            Panel43.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte43_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte43.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte43.SelectedValue, "GaleriaDeArte43", "");
            Panel43.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte43_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte43.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte43.SelectedValue, "GaleriaDeArte43", "");
            Panel43.Attributes.Add("style", "display:none");
        }
        protected void SelectGaleriaDeArte44_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte44.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte44.SelectedValue, "GaleriaDeArte44", "");
            Panel44.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte44_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte44.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte44.SelectedValue, "GaleriaDeArte44", "");
            Panel44.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte44_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte44.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte44.SelectedValue, "GaleriaDeArte44", "");
            Panel44.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte45_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte45.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte45.SelectedValue, "GaleriaDeArte45", "");
            Panel45.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte45_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte45.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte45.SelectedValue, "GaleriaDeArte45", "");
            Panel45.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte45_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte45.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte45.SelectedValue, "GaleriaDeArte45", "");
            Panel45.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte46_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte46.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte46.SelectedValue, "GaleriaDeArte46", "");
            Panel46.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte46_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte46.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte46.SelectedValue, "GaleriaDeArte46", "");
            Panel46.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte46_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte46.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte46.SelectedValue, "GaleriaDeArte46", "");
            Panel46.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte47_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte47.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte47.SelectedValue, "GaleriaDeArte47", "");
            Panel47.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte47_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte47.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte47.SelectedValue, "GaleriaDeArte47", "");
            Panel47.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte47_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte47.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte47.SelectedValue, "GaleriaDeArte47", "");
            Panel47.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte48_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte48.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte48.SelectedValue, "GaleriaDeArte48", "");
            Panel48.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte48_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte48.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte48.SelectedValue, "GaleriaDeArte48", "");
            Panel48.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte48_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte48.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte48.SelectedValue, "GaleriaDeArte48", "");
            Panel48.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte49_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte49.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte49.SelectedValue, "GaleriaDeArte49", "");
            Panel49.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte49_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte49.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte49.SelectedValue, "GaleriaDeArte49", "");
            Panel49.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte49_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte49.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte49.SelectedValue, "GaleriaDeArte49", "");
            Panel49.Attributes.Add("style", "display:none");
        }


        protected void SelectGaleriaDeArte50_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte50.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte50.SelectedValue, "GaleriaDeArte50", "");
            Panel50.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte50_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte50.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte50.SelectedValue, "GaleriaDeArte50", "");
            Panel50.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte50_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte50.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte50.SelectedValue, "GaleriaDeArte50", "");
            Panel50.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte51_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte51.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte51.SelectedValue, "GaleriaDeArte51", "");
            Panel51.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte51_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte51.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte51.SelectedValue, "GaleriaDeArte51", "");
            Panel51.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte51_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte51.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte51.SelectedValue, "GaleriaDeArte51", "");
            Panel51.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte52_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte52.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte52.SelectedValue, "GaleriaDeArte52", "");
            Panel52.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte52_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte52.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte52.SelectedValue, "GaleriaDeArte52", "");
            Panel52.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte52_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte52.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte52.SelectedValue, "GaleriaDeArte52", "");
            Panel52.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte53_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte53.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte53.SelectedValue, "GaleriaDeArte53", "");
            Panel53.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte53_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte53.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte53.SelectedValue, "GaleriaDeArte53", "");
            Panel53.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte53_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte53.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte53.SelectedValue, "GaleriaDeArte53", "");
            Panel53.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte54_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte54.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte54.SelectedValue, "GaleriaDeArte54", "");
            Panel54.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte54_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte54.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte54.SelectedValue, "GaleriaDeArte54", "");
            Panel54.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte54_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte54.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte54.SelectedValue, "GaleriaDeArte54", "");
            Panel54.Attributes.Add("style", "display:none");
        }


        protected void SelectGaleriaDeArte55_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte55.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte55.SelectedValue, "GaleriaDeArte55", "");
            Panel55.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte55_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte55.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte55.SelectedValue, "GaleriaDeArte55", "");
            Panel55.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte55_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte55.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte55.SelectedValue, this.SelectGaleriaDeArte55.SelectedValue, "");
            Panel55.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte56_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte56.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte56.SelectedValue, "GaleriaDeArte56", "");
            Panel56.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte56_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte56.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte56.SelectedValue, "GaleriaDeArte56", "");
            Panel56.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte56_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte56.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte56.SelectedValue, "GaleriaDeArte56", "");
            Panel56.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte57_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte57.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte57.SelectedValue, "GaleriaDeArte57", "");
            Panel57.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte57_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte57.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte57.SelectedValue, "GaleriaDeArte57", "");
            Panel57.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte57_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte57.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte57.SelectedValue, "GaleriaDeArte57", "");
            Panel57.Attributes.Add("style", "display:none");
        }
        protected void SelectGaleriaDeArte58_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte58.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte58.SelectedValue, "GaleriaDeArte58", "");
            Panel58.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte58_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte58.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte58.SelectedValue, "GaleriaDeArte58", "");
            Panel58.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte58_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte58.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte58.SelectedValue, "GaleriaDeArte58", "");
            Panel58.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte59_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte59.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte59.SelectedValue, "GaleriaDeArte59", "");
            Panel59.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte59_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte59.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte59.SelectedValue, "GaleriaDeArte59", "");
            Panel59.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte59_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte59.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte59.SelectedValue, "GaleriaDeArte59", "");
            Panel59.Attributes.Add("style", "display:none");
        }


        protected void SelectGaleriaDeArte60_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte60.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte60.SelectedValue, "GaleriaDeArte60", "");
            Panel60.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte60_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte60.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte60.SelectedValue, "GaleriaDeArte60", "");
            Panel60.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte60_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte60.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte60.SelectedValue, "GaleriaDeArte60", "");
            Panel60.Attributes.Add("style", "display:none");
        }


        protected void SelectGaleriaDeArte61_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte61.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte61.SelectedValue, "GaleriaDeArte61", "");
            Panel61.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte61_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte61.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte61.SelectedValue, "GaleriaDeArte61", "");
            Panel61.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte61_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte61.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte61.SelectedValue, "GaleriaDeArte61", "");
            Panel61.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte62_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte62.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte62.SelectedValue, "GaleriaDeArte62", "");
            Panel62.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte62_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte62.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte62.SelectedValue, "GaleriaDeArte62", "");
            Panel62.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte62_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte62.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte62.SelectedValue, "GaleriaDeArte62", "");
            Panel62.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte63_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte63.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte63.SelectedValue, "GaleriaDeArte63", "");
            Panel63.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte63_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte63.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte63.SelectedValue, "GaleriaDeArte63", "");
            Panel63.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte63_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte63.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte63.SelectedValue, "GaleriaDeArte63", "");
            Panel63.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte64_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte64.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte64.SelectedValue, "GaleriaDeArte64", "");
            Panel64.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte64_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte64.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte64.SelectedValue, "GaleriaDeArte64", "");
            Panel64.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte64_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte64.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte64.SelectedValue, "GaleriaDeArte64", "");
            Panel64.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte65_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte65.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte65.SelectedValue, "GaleriaDeArte65", "");
            Panel65.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte65_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte65.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte65.SelectedValue, "GaleriaDeArte65", "");
            Panel65.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte65_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte65.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte65.SelectedValue, "GaleriaDeArte65", "");
            Panel65.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte66_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte66.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte66.SelectedValue, "GaleriaDeArte66", "");
            Panel66.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte66_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte66.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte66.SelectedValue, "GaleriaDeArte66", "");
            Panel66.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte66_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte66.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte66.SelectedValue, "GaleriaDeArte66", "");
            Panel66.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte67_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte67.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte67.SelectedValue, "GaleriaDeArte67", "");
            Panel67.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte67_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte67.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte67.SelectedValue, "GaleriaDeArte67", "");
            Panel67.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte67_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte67.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte67.SelectedValue, "GaleriaDeArte67", "");
            Panel67.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte68_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte68.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte68.SelectedValue, "GaleriaDeArte68", "");
            Panel68.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte68_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte68.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte68.SelectedValue, "GaleriaDeArte68", "");
            Panel68.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte68_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte68.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte68.SelectedValue, "GaleriaDeArte68", "");
            Panel68.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte69_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte69.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte69.SelectedValue, "GaleriaDeArte69", "");
            Panel69.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte69_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte69.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte69.SelectedValue, "GaleriaDeArte69", "");
            Panel69.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte69_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte69.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte69.SelectedValue, "GaleriaDeArte69", "");
            Panel69.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte70_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte70.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte70.SelectedValue, "GaleriaDeArte70", "");
            Panel70.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte70_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte70.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte70.SelectedValue, "GaleriaDeArte70", "");
            Panel70.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte70_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte70.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte70.SelectedValue, "GaleriaDeArte70", "");
            Panel70.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte71_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte71.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte71.SelectedValue, "GaleriaDeArte71", "");
            Panel71.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte71_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte71.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte71.SelectedValue, "GaleriaDeArte71", "");
            Panel71.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte71_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte71.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte71.SelectedValue, "GaleriaDeArte71", "");
            Panel71.Attributes.Add("style", "display:none");
        }
        protected void SelectGaleriaDeArte72_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte72.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte72.SelectedValue, "GaleriaDeArte72", "");
            Panel72.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte72_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte72.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte72.SelectedValue, "GaleriaDeArte72", "");
            Panel72.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte72_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte72.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte72.SelectedValue, "GaleriaDeArte72", "");
            Panel72.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte73_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte73.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte73.SelectedValue, "GaleriaDeArte73", "");
            Panel73.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte73_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte73.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte73.SelectedValue, "GaleriaDeArte73", "");
            Panel73.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte73_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte73.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte73.SelectedValue, "GaleriaDeArte73", "");
            Panel73.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte74_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte74.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte74.SelectedValue, "GaleriaDeArte74", "");
            Panel74.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte74_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte74.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte74.SelectedValue, "GaleriaDeArte74", "");
            Panel74.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte74_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte74.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte74.SelectedValue, "GaleriaDeArte74", "");
            Panel74.Attributes.Add("style", "display:none");
        }
        protected void SelectGaleriaDeArte75_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte75.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte75.SelectedValue, "GaleriaDeArte75", "");
            Panel75.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte75_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte75.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte75.SelectedValue, "GaleriaDeArte75", "");
            Panel75.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte75_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte75.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte75.SelectedValue, "GaleriaDeArte75", "");
            Panel75.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte76_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte76.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte76.SelectedValue, "GaleriaDeArte76", "");
            Panel76.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte76_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte76.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte76.SelectedValue, "GaleriaDeArte76", "");
            Panel76.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte76_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte76.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte76.SelectedValue, "GaleriaDeArte76", "");
            Panel76.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte77_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte77.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte77.SelectedValue, "GaleriaDeArte77", "");
            Panel77.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte77_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte77.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte77.SelectedValue, "GaleriaDeArte77", "");
            Panel77.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte77_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte77.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte77.SelectedValue, "GaleriaDeArte77", "");
            Panel77.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte11_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte11.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte11.SelectedValue, "GaleriaDeArte11", "");
            Panel11.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte11_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte11.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte11.SelectedValue, "GaleriaDeArte11", "");
            Panel11.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte5_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte5.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte5.SelectedValue, "GaleriaDeArte5", "");
            Panel5.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte11_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte11.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte11.SelectedValue, "GaleriaDeArte11", "");
            Panel11.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte4_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte4.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte4.SelectedValue, "GaleriaDeArte4", "");
            Panel4.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte4_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte4.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte4.SelectedValue, "GaleriaDeArte4", "");
            Panel4.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte4_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte4.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte4.SelectedValue, "GaleriaDeArte4", "");
            Panel4.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte6_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte6.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte6.SelectedValue, "GaleriaDeArte6", "");
            Panel6.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte6_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte6.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte6.SelectedValue, "GaleriaDeArte6", "");
            Panel6.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte6_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte6.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte6.SelectedValue, "GaleriaDeArte6", "");
            Panel6.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte5_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte5.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte5.SelectedValue, "GaleriaDeArte5", "");
            Panel5.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte8_SelectedIndexChanged2(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte8.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte8.SelectedValue, "GaleriaDeArte8", "");
            Panel8.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte8_SelectedIndexChanged2(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte8.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte8.SelectedValue, "GaleriaDeArte8", "");
            Panel8.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte8_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte8.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte8.SelectedValue, "GaleriaDeArte8", "");
            Panel8.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte7_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte7.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte7.SelectedValue, "GaleriaDeArte7", "");
            Panel7.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte7_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte7.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte7.SelectedValue, "GaleriaDeArte7", "");
            Panel7.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte7_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte7.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte7.SelectedValue, "GaleriaDeArte7", "");
            Panel7.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte9_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte9.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte9.SelectedValue, "GaleriaDeArte9", "");
            Panel9.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte9_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte9.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte9.SelectedValue, "GaleriaDeArte9", "");
            Panel9.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte9_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte9.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte9.SelectedValue, "GaleriaDeArte9", "");
            Panel9.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte10_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte10.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte10.SelectedValue, "GaleriaDeArte10", "");
            Panel10.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte10_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte10.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte10.SelectedValue, "GaleriaDeArte10", "");
            Panel10.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte10_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte10.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte10.SelectedValue, "GaleriaDeArte10", "");
            Panel10.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte12_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte12.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte12.SelectedValue, "GaleriaDeArte12", "");
            Panel12.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte12_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte12.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte12.SelectedValue, "GaleriaDeArte12", "");
            Panel12.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte12_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte12.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte12.SelectedValue, "GaleriaDeArte12", "");
            Panel12.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte13_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte13.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte13.SelectedValue, "GaleriaDeArte13", "");
            Panel13.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte14_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte14.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte14.SelectedValue, "GaleriaDeArte14", "");
            Panel14.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte14_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte14.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte14.SelectedValue, "GaleriaDeArte14", "");
            Panel14.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte14_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte14.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte14.SelectedValue, "GaleriaDeArte14", "");
            Panel14.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte15_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte15.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte15.SelectedValue, "GaleriaDeArte15", "");
            Panel15.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte15_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte15.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte15.SelectedValue, "GaleriaDeArte15", "");
            Panel15.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte16_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte16.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte16.SelectedValue, "GaleriaDeArte16", "");
            Panel16.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte16_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte16.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte16.SelectedValue, "GaleriaDeArte16", "");
            Panel16.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte17_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte17.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte17.SelectedValue, "GaleriaDeArte17", "");
            Panel17.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte17_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte17.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte17.SelectedValue, "GaleriaDeArte17", "");
            Panel17.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte17_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte17.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte17.SelectedValue, "GaleriaDeArte17", "");
            Panel17.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte18_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte18.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte18.SelectedValue, "GaleriaDeArte18", "");
            Panel18.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte20_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte20.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte20.SelectedValue, "GaleriaDeArte20", "");
            Panel20.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte20_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte20.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte20.SelectedValue, "GaleriaDeArte20", "");
            Panel20.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte21_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte21.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte21.SelectedValue, "GaleriaDeArte21", "");
            Panel21.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte21_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte21.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte21.SelectedValue, "GaleriaDeArte21", "");
            Panel21.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte21_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte21.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte21.SelectedValue, "GaleriaDeArte21", "");
            Panel21.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte22_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte22.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte22.SelectedValue, "GaleriaDeArte22", "");
            Panel22.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte22_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte22.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte22.SelectedValue, "GaleriaDeArte22", "");
            Panel22.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte22_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte22.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte22.SelectedValue, "GaleriaDeArte22", "");
            Panel22.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte23_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte23.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte23.SelectedValue, "GaleriaDeArte23", "");
            Panel23.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte23_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte23.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte23.SelectedValue, "GaleriaDeArte23", "");
            Panel23.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte23_SelectedIndexChanged(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte23.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte23.SelectedValue, "GaleriaDeArte23", "");
            Panel23.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte24_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte24.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte24.SelectedValue, "GaleriaDeArte24", "");
            Panel24.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte24_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte24.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte24.SelectedValue, "GaleriaDeArte24", "");
            Panel24.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte24_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte24.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte24.SelectedValue, "GaleriaDeArte24", "");
            Panel24.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte25_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte25.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte25.SelectedValue, "GaleriaDeArte25", "");
            Panel25.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte25_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte25.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte25.SelectedValue, "GaleriaDeArte25", "");
            Panel25.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte25_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte25.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte25.SelectedValue, "GaleriaDeArte25", "");
            Panel25.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte26_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte26.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte26.SelectedValue, "GaleriaDeArte26", "");
            Panel26.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte26_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte26.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte26.SelectedValue, "GaleriaDeArte26", "");
            Panel26.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte27_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte27.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte27.SelectedValue, "GaleriaDeArte27", "");
            Panel27.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte27_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte27.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte27.SelectedValue, "GaleriaDeArte27", "");
            Panel27.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte27_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte27.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte27.SelectedValue, "GaleriaDeArte27", "");
            Panel27.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte28_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte28.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte28.SelectedValue, "GaleriaDeArte28", "");
            Panel28.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte28_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte28.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte28.SelectedValue, "GaleriaDeArte28", "");
            Panel28.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte28_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte28.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte28.SelectedValue, "GaleriaDeArte28", "");
            Panel28.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte29_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte29.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte29.SelectedValue, "GaleriaDeArte29", "");
            Panel29.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte29_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte29.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte29.SelectedValue, "GaleriaDeArte29", "");
            Panel29.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte29_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte29.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte29.SelectedValue, "GaleriaDeArte29", "");
            Panel29.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte30_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte30.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte30.SelectedValue, "GaleriaDeArte30", "");
            Panel30.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte30_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte30.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte30.SelectedValue, "GaleriaDeArte30", "");
            Panel30.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte30_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte30.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte30.SelectedValue, "GaleriaDeArte30", "");
            Panel30.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte31_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte31.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte31.SelectedValue, "GaleriaDeArte31", "");
            Panel31.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte31_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte31.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte31.SelectedValue, "GaleriaDeArte31", "");
            Panel31.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte31_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte31.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte31.SelectedValue, "GaleriaDeArte31", "");
            Panel31.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte32_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte32.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte32.SelectedValue, "GaleriaDeArte32", "");
            Panel32.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte32_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte32.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte32.SelectedValue, "GaleriaDeArte32", "");
            Panel32.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte32_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte32.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte32.SelectedValue, "GaleriaDeArte32", "");
            Panel32.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte33_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte33.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte33.SelectedValue, "GaleriaDeArte33", "");
            Panel33.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte33_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte33.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte33.SelectedValue, "GaleriaDeArte33", "");
            Panel33.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte33_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte33.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte33.SelectedValue, "GaleriaDeArte33", "");
            Panel33.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte34_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte34.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte34.SelectedValue, "GaleriaDeArte34", "");
            Panel34.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte34_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte34.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte34.SelectedValue, "GaleriaDeArte34", "");
            Panel34.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte34_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte34.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte34.SelectedValue, "GaleriaDeArte34", "");
            Panel34.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte35_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte35.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte35.SelectedValue, "GaleriaDeArte35", "");
            Panel35.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte35_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte35.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte35.SelectedValue, "GaleriaDeArte35", "");
            Panel35.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte35_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte35.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte35.SelectedValue, "GaleriaDeArte35", "");
            Panel35.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte36_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte36.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte36.SelectedValue, "GaleriaDeArte36", "");
            Panel36.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte36_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte36.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte36.SelectedValue, "GaleriaDeArte36", "");
            Panel36.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte36_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte36.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte36.SelectedValue, "GaleriaDeArte36", "");
            Panel36.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte37_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte37.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte37.SelectedValue, "GaleriaDeArte37", "");
            Panel37.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte37_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte37.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte37.SelectedValue, "GaleriaDeArte37", "");
            Panel37.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte37_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte37.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte37.SelectedValue, "GaleriaDeArte37", "");
            Panel37.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte38_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte38.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte38.SelectedValue, "GaleriaDeArte38", "");
            Panel38.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte38_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte38.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte38.SelectedValue, "GaleriaDeArte38", "");
            Panel38.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte38_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte38.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte38.SelectedValue, "GaleriaDeArte38", "");
            Panel38.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte39_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte39.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte39.SelectedValue, "GaleriaDeArte39", "");
            Panel39.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte39_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte39.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte39.SelectedValue, "GaleriaDeArte39", "");
            Panel39.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte39_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte39.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte39.SelectedValue, "GaleriaDeArte39", "");
            Panel39.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte40_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte40.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte40.SelectedValue, "GaleriaDeArte40", "");
            Panel40.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte40_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte40.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte40.SelectedValue, "GaleriaDeArte40", "");
            Panel40.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte40_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte40.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte40.SelectedValue, "GaleriaDeArte40", "");
            Panel40.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte41_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte41.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte41.SelectedValue, "GaleriaDeArte41", "");
            Panel41.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte41_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte41.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte41.SelectedValue, "GaleriaDeArte41", "");
            Panel41.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte41_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte41.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte41.SelectedValue, "GaleriaDeArte41", "");
            Panel41.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte42_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte42.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte42.SelectedValue, "GaleriaDeArte42", "");
            Panel42.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte42_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte42.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte42.SelectedValue, "GaleriaDeArte42", "");
            Panel42.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte42_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte42.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte42.SelectedValue, "GaleriaDeArte42", "");
            Panel42.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte43_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte43.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte43.SelectedValue, "GaleriaDeArte43", "");
            Panel43.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte43_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte43.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte43.SelectedValue, "GaleriaDeArte43", "");
            Panel43.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte43_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte43.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte43.SelectedValue, "GaleriaDeArte43", "");
            Panel43.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte44_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte44.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte44.SelectedValue, "GaleriaDeArte44", "");
            Panel44.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte44_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte44.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte44.SelectedValue, "GaleriaDeArte44", "");
            Panel44.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte44_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte44.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte44.SelectedValue, "GaleriaDeArte44", "");
            Panel44.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte45_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte45.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte45.SelectedValue, "GaleriaDeArte45", "");
            Panel45.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte45_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte45.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte45.SelectedValue, "GaleriaDeArte45", "");
            Panel45.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte45_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte45.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte45.SelectedValue, "GaleriaDeArte45", "");
            Panel45.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte46_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte46.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte46.SelectedValue, "GaleriaDeArte46", "");
            Panel46.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte46_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte46.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte46.SelectedValue, "GaleriaDeArte46", "");
            Panel46.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte46_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte46.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte46.SelectedValue, "GaleriaDeArte46", "");
            Panel46.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte47_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte47.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte47.SelectedValue, "GaleriaDeArte47", "");
            Panel47.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte47_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte47.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte47.SelectedValue, "GaleriaDeArte47", "");
            Panel47.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte47_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte47.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte47.SelectedValue, "GaleriaDeArte47", "");
            Panel47.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte48_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte48.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte48.SelectedValue, "GaleriaDeArte48", "");
            Panel48.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte48_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte48.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte48.SelectedValue, "GaleriaDeArte48", "");
            Panel48.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte48_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte48.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte48.SelectedValue, "GaleriaDeArte48", "");
            Panel48.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte49_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte49.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte49.SelectedValue, "GaleriaDeArte49", "");
            Panel49.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte49_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte49.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte49.SelectedValue, "GaleriaDeArte49", "");
            Panel49.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte49_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte49.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte49.SelectedValue, "GaleriaDeArte49", "");
            Panel49.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte50_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte50.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte50.SelectedValue, "GaleriaDeArte50", "");
            Panel50.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte50_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte50.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte50.SelectedValue, "GaleriaDeArte51", "");
            Panel50.Attributes.Add("style", "display:none");
        }


        protected void CalidadGaleriaDeArte50_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte50.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte50.SelectedValue, "GaleriaDeArte50", "");
            Panel50.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte51_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte51.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte51.SelectedValue, "GaleriaDeArte51", "");
            Panel51.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte51_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte51.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte51.SelectedValue, "GaleriaDeArte51", "");
            Panel51.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte51_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte51.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte51.SelectedValue, "GaleriaDeArte51", "");
            Panel51.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte52_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte52.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte52.SelectedValue, "GaleriaDeArte52", "");
            Panel52.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte52_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte52.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte52.SelectedValue, "GaleriaDeArte52", "");
            Panel52.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte52_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte52.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte52.SelectedValue, "GaleriaDeArte52", "");
            Panel52.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte53_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte53.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte53.SelectedValue, "GaleriaDeArte53", "");
            Panel53.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte53_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte53.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte53.SelectedValue, "GaleriaDeArte53", "");
            Panel53.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte53_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte53.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte53.SelectedValue, "GaleriaDeArte53", "");
            Panel53.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte54_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte54.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte54.SelectedValue, "GaleriaDeArte54", "");
            Panel54.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte54_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte54.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte54.SelectedValue, "GaleriaDeArte54", "");
            Panel54.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte54_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte54.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte54.SelectedValue, "GaleriaDeArte54", "");
            Panel54.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte55_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte55.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte55.SelectedValue, "GaleriaDeArte55", "");
            Panel55.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte55_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte55.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte55.SelectedValue, "GaleriaDeArte55", "");
            Panel55.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte55_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte55.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte55.SelectedValue, "GaleriaDeArte55", "");
            Panel55.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte56_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte56.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte56.SelectedValue, "GaleriaDeArte56", "");
            Panel56.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte56_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte56.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte56.SelectedValue, "GaleriaDeArte56", "");
            Panel56.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte56_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte56.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte56.SelectedValue, "GaleriaDeArte56", "");
            Panel56.Attributes.Add("style", "display:none");
        }


        protected void CantidadGaleriaDeArte57_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte57.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte57.SelectedValue, "GaleriaDeArte57", "");
            Panel57.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte57_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte57.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte57.SelectedValue, "GaleriaDeArte57", "");
            Panel57.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte58_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte58.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte58.SelectedValue, "GaleriaDeArte58", "");
            Panel58.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte58_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte58.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte58.SelectedValue, "GaleriaDeArte58", "");
            Panel58.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte58_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte58.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte58.SelectedValue, "GaleriaDeArte58", "");
            Panel58.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte59_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte59.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte59.SelectedValue, "GaleriaDeArte59", "");
            Panel59.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte59_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte59.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte59.SelectedValue, "GaleriaDeArte59", "");
            Panel59.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte59_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte59.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte59.SelectedValue, "GaleriaDeArte59", "");
            Panel59.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte60_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte60.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte60.SelectedValue, "GaleriaDeArte60", "");
            Panel60.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte60_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte60.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte60.SelectedValue, "GaleriaDeArte60", "");
            Panel60.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte60_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte60.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte60.SelectedValue, "GaleriaDeArte60", "");
            Panel60.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte61_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte61.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte61.SelectedValue, "GaleriaDeArte61", "");
            Panel61.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte61_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte61.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte61.SelectedValue, "GaleriaDeArte61", "");
            Panel61.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte61_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte61.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte61.SelectedValue, "GaleriaDeArte61", "");
            Panel61.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte62_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte62.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte62.SelectedValue, "GaleriaDeArte62", "");
            Panel62.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte62_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte62.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte62.SelectedValue, "GaleriaDeArte62", "");
            Panel62.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte62_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte62.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte62.SelectedValue, "GaleriaDeArte62", "");
            Panel62.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte63_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte63.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte63.SelectedValue, "GaleriaDeArte63", "");
            Panel63.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte63_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte63.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte63.SelectedValue, "GaleriaDeArte63", "");
            Panel63.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte63_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte63.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte63.SelectedValue, "GaleriaDeArte63", "");
            Panel63.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte64_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte64.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte64.SelectedValue, "GaleriaDeArte64", "");
            Panel64.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte64_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte64.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte64.SelectedValue, "GaleriaDeArte64", "");
            Panel64.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte64_SelectedIndexChanged1(object sender, EventArgs e)
        {

            PrecioGaleriaDeArte64.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte64.SelectedValue, "GaleriaDeArte64", "");
            Panel64.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte65_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte65.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte65.SelectedValue, "GaleriaDeArte65", "");
            Panel65.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte65_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte65.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte65.SelectedValue, "GaleriaDeArte65", "");
            Panel65.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte65_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte65.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte65.SelectedValue, "GaleriaDeArte65", "");
            Panel65.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte66_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte66.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte66.SelectedValue, "GaleriaDeArte66", "");
            Panel66.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte66_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte66.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte66.SelectedValue, "GaleriaDeArte66", "");
            Panel66.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte66_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte66.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte66.SelectedValue, "GaleriaDeArte66", "");
            Panel66.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte67_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte67.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte67.SelectedValue, "GaleriaDeArte67", "");
            Panel67.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte67_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte67.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte67.SelectedValue, "GaleriaDeArte67", "");
            Panel67.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte67_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte67.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte67.SelectedValue, "GaleriaDeArte67", "");
            Panel67.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte68_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte68.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte68.SelectedValue, "GaleriaDeArte68", "");
            Panel68.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte68_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte68.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte68.SelectedValue, "GaleriaDeArte68", "");
            Panel68.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte68_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte68.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte68.SelectedValue, "GaleriaDeArte68", "");
            Panel68.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte69_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte69.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte69.SelectedValue, "GaleriaDeArte69", "");
            Panel69.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte69_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte69.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte69.SelectedValue, "GaleriaDeArte69", "");
            Panel69.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte69_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte69.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte69.SelectedValue, "GaleriaDeArte69", "");
            Panel69.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte70_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte70.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte70.SelectedValue, "GaleriaDeArte70", "");
            Panel70.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte70_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte70.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte70.SelectedValue, "GaleriaDeArte70", "");
            Panel70.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte70_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte70.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte70.SelectedValue, "GaleriaDeArte70", "");
            Panel70.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte71_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte71.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte71.SelectedValue, "GaleriaDeArte71", "");
            Panel71.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte71_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte71.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte71.SelectedValue, "GaleriaDeArte71", "");
            Panel71.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte71_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte71.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte71.SelectedValue, "GaleriaDeArte71", "");
            Panel71.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte72_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte72.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte72.SelectedValue, "GaleriaDeArte72", "");
            Panel72.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte72_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte72.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte72.SelectedValue, "GaleriaDeArte72", "");
            Panel72.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte72_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte72.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte72.SelectedValue, "GaleriaDeArte72", "");
            Panel72.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte73_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte73.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte73.SelectedValue, "GaleriaDeArte73", "");
            Panel73.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte74_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte74.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte74.SelectedValue, "GaleriaDeArte74", "");
            Panel74.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte74_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte74.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte74.SelectedValue, "GaleriaDeArte74", "");
            Panel74.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte74_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte74.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte74.SelectedValue, "GaleriaDeArte74", "");
            Panel74.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte75_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte75.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte75.SelectedValue, "GaleriaDeArte75", "");
            Panel75.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte75_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte75.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte75.SelectedValue, "GaleriaDeArte75", "");
            Panel75.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte75_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte75.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte75.SelectedValue, "GaleriaDeArte75", "");
            Panel75.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte76_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte76.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte76.SelectedValue, "GaleriaDeArte76", "");
            Panel76.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte76_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte76.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte76.SelectedValue, "GaleriaDeArte76", "");
            Panel76.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte76_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte76.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte76.SelectedValue, "GaleriaDeArte76", "");
            Panel76.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte77_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte77.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte77.SelectedValue, "GaleriaDeArte77", "");
            Panel77.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte77_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte77.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte77.SelectedValue, "GaleriaDeArte77", "");
            Panel77.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte77_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte77.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte77.SelectedValue, "GaleriaDeArte77", "");
            Panel77.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte5_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte5.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte5.SelectedValue, "GaleriaDeArte5", "");
            Panel5.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte13_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte13.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte13.SelectedValue, "GaleriaDeArte13", "");
            Panel13.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte13_SelectedIndexChanged2(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte13.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte13.SelectedValue, "GaleriaDeArte13", "");
            Panel13.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte13_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte13.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte13.SelectedValue, "GaleriaDeArte13", "");
            Panel13.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte15_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte15.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte15.SelectedValue, "GaleriaDeArte15", "");
            Panel15.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte18_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte18.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte18.SelectedValue, "GaleriaDeArte18", "");
            Panel18.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte18_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte18.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte18.SelectedValue, "GaleriaDeArte18", "");
            Panel18.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte19_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte19.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte19.SelectedValue, "GaleriaDeArte19", "");
            Panel19.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte19_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte19.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte19.SelectedValue, "GaleriaDeArte19", "");
            Panel19.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte19_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte19.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte19.SelectedValue, "GaleriaDeArte19", "");
            Panel19.Attributes.Add("style", "display:none");
        }

        protected void SelectGaleriaDeArte20_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte20.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte20.SelectedValue, "GaleriaDeArte20", "");
            Panel20.Attributes.Add("style", "display:none");
        }

        protected void CantidadGaleriaDeArte73_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte73.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte73.SelectedValue, "GaleriaDeArte73", "");
            Panel73.Attributes.Add("style", "display:none");
        }

        protected void CalidadGaleriaDeArte73_SelectedIndexChanged1(object sender, EventArgs e)
        {
            PrecioGaleriaDeArte73.Text = Proceso.TraePrecio(this.CantidadGaleriaDeArte73.SelectedValue, "GaleriaDeArte73", "");
            Panel73.Attributes.Add("style", "display:none");
        }







    }
}