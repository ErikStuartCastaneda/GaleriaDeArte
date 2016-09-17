using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;


namespace GaleriaDeArte
{
    public partial class Precios : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string aut = Session["Autorizado"].ToString();

                if (aut != "Autorizado")
                {
                    Response.Redirect("https://www.grupo-hesse.com/FormulariosGaleriaDeArte/Validar.aspx");
                }
            }
            catch (Exception)
            {

                Response.Redirect("https://www.grupo-hesse.com/FormulariosGaleriaDeArte/Validar.aspx");
            }


            if (!IsPostBack)
            {
                gvbind();
            }
        }
        protected void gvbind()
        {
            DataTable content = new DataTable();
            content = Proceso.ReturnDataTable("Select *   from PreciosGaleriaDeArte order by indice");
      
            if (content.Rows.Count > 0)
            {
                GridView1.DataSource = content;
                GridView1.DataBind();
            }
            else
            {

                GridView1.DataSource = null;
                GridView1.DataBind();
                int columncount = GridView1.Rows[0].Cells.Count;
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
                GridView1.Rows[0].Cells[0].Text = "No Records Found";
            }

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //GridView1.EditIndex = e.NewEditIndex;
            //gvbind();
            string fila, indice, articulo ;
            fila = e.NewEditIndex.ToString();
            indice = GridView1.Rows[e.NewEditIndex].Cells[0].Text.ToString();
            articulo = GridView1.Rows[e.NewEditIndex].Cells[2].Text.ToString();
            this.lblArticulo.Text = articulo;
            this.lblFila.Text = fila;
            this.lblIndice.Text = indice;
            this.lblNombreArticulo.Text = GridView1.Rows[e.NewEditIndex].Cells[1].Text.ToString();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fila = this.lblFila.Text;
            string indice = this.lblIndice.Text;
            string precio = this.txtPrecio.Text;



            if (precio == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", "alert('Tiene que indicar un monto para el precio.');", true);
                return;
            }

            try
            {
                decimal ver = decimal.Parse(precio);
            }
            catch (Exception)
            {

                ClientScript.RegisterStartupScript(this.GetType(), "Alert", "alert('Ingrese solo numeros.');", true);

                return;
            }

            if (precio == "")
            { precio = "0"; }


            Proceso.UpdateProducts("update PreciosGaleriaDeArte set Precio = " + precio + "   where indice = " + indice);

            Response.Redirect(Request.Url.AbsoluteUri);
        }
    }
}