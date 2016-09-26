<%@ WebHandler Language="C#" Class="GaleriaDeArte.ProductList" %>

using System.Data;
using System.Web;
using System.Collections;
using System.Data.SqlClient;

namespace GaleriaDeArte
{
    public class ProductList : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            string _Nombre = HttpContext.Current.Request.QueryString["Nombre"];



            DataSet ds1 = new DataSet();
            DataTable respuesta = new DataTable ();

            respuesta = Proceso.RegresaTabla("select Precio as Valor from PreciosGaleriaDeArte where Nombre = '"+ _Nombre +"'");
            respuesta.TableName = "Precio";
            ds1.Tables.Add(respuesta);
            System.Xml.XmlDocument myXml = new System.Xml.XmlDocument();
            myXml.LoadXml(ds1.GetXml());
            AjaxPro.IJavaScriptObject x;

            x = AjaxPro.JavaScriptUtil.GetIJavaScriptObjectFromXmlNode(myXml);

            context.Response.AppendHeader("Cache-Control", "no-cache,must-revalidate");
            context.Response.AppendHeader("Pragma", "no-cache");
            context.Response.AppendHeader("Content-type", "text/x-json");
            context.Response.Write(AjaxPro.JavaScriptSerializer.Serialize(x));


        }

        // Override the IsReusable property.
        public bool IsReusable
        {
            get { return true; }
        }

    }

}
