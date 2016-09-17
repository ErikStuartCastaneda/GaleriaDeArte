using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace GaleriaDeArte
{
    public partial class Factura : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string aut = Session["Autorizado"].ToString();

                if (aut != "Autorizado")
                {
                  //   Response.Redirect("http://localhost:8080/FormulariosGaleriaDeArte/Validar.aspx");
                   Response.Redirect("Validar.aspx");
                }
            }
            catch (Exception)
            {

                //   Response.Redirect("http://localhost:8080/FormulariosGaleriaDeArte/Validar.aspx");
                Response.Redirect("Validar.aspx");
            }

            CargarGrid();

        }
        public void CargarGrid()
        {

            GridView1.DataSource = Proceso.ReturnDataTable("Select producto, facturadescripcion, '' as Guardar from FacturaGaleriaDeArte");
            GridView1.DataBind();

        }

        protected void UploadFile(object sender, EventArgs e)
        {
            string img = (sender as LinkButton).CommandArgument;
            this.HiddenField1.Value = img;
            var enviar = "GuardarImagen('" + img + "')";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "GuardarImagen", enviar, true);
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            { ClientScript.RegisterStartupScript(this.GetType(), "Alert", "Debe llenar la informacion para poder guardar.", true); }
            else {
                string producto = this.HiddenField1.Value;
                string descripcion = this.TextBox1.Text;

                Proceso.GuardarDescripcionFactura(descripcion, producto);
                Response.Redirect(Request.Url.AbsoluteUri);
            }
        }

  

    

 
 

    
 
    }
}