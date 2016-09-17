using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Drawing;
using System.Drawing.Drawing2D;

namespace GaleriaDeArte
{
    public partial class Imagenes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarGrid();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                if (FileUpload1.HasFile == false)
                {
                    this.lblMsg.Text = "Debe seleccionar una imagen.";
                    return;
                }
            }
            catch (Exception er)
            {

                Helper.RegistrarEvento("El uploadfile1  " + er.Message);
            }

            if (this.txtIdProducto.Text == "")
            {
                this.lblMsg.Text = "Debe indicar un id Unico.";
                return;
            }

            string validaexsitencia = Proceso.RegresaCadena_1_Resultado("select COUNT(*) from PreciosGaleriaDeArte where Producto = '" + this.txtIdProducto.Text.Trim() + "'");

            if (validaexsitencia != "0")
            {
                this.lblMsg.Text = "IdProducto ya existe.";
                return;
            }

            string validaexsitenciahistorico = Proceso.RegresaCadena_1_Resultado("select COUNT(*) from PedidosGaleriaDeArte where idProducto  = '" + this.txtIdProducto.Text.Trim() + "'");

            if (validaexsitenciahistorico != "0")
            {
                this.lblMsg.Text = "IdProducto ya existe.";
                return;
            }

            string fileName = this.HiddenField1.Value;
            string address = PathMap.ServerPath();
            address = address + fileName + ".bmp";
            Helper.RegistrarEvento("Verificando acceso a path :  " + address);
            var FileExtension = FileUpload1.PostedFile.FileName;
            FileInfo fi = new FileInfo(FileExtension);
            string ext = fi.Extension;
            Proceso.LimpiarArchivo(address);

            if (ext.ToLower() != ".bmp")
            {
                try
                {

                    System.Drawing.Image imageToBeResized = System.Drawing.Image.FromStream(FileUpload1.FileContent);
                    int imageHeight = imageToBeResized.Height;
                    int imageWidth = imageToBeResized.Width;
                    int maxHeight = 240;
                    int maxWidth = 140;
                    imageHeight = (imageHeight * maxWidth) / imageWidth;
                    imageWidth = maxWidth;

                    if (imageHeight > maxHeight)
                    {
                        imageWidth = (imageWidth * maxHeight) / imageHeight;
                        imageHeight = maxHeight;
                    }

                    Bitmap bitmap = new Bitmap(imageToBeResized, imageWidth, imageHeight);
                    System.IO.MemoryStream stream = new MemoryStream();
                    bitmap.Save(stream, System.Drawing.Imaging.ImageFormat.Jpeg);
                    stream.Position = 0;
                    byte[] image = new byte[stream.Length + 1];
                    stream.Read(image, 0, image.Length);
                    System.IO.FileStream fs = new System.IO.FileStream(address, System.IO.FileMode.Create, System.IO.FileAccess.ReadWrite);
                    fs.Write(image, 0, image.Length);
                }
                catch (Exception er)
                {
                    Helper.RegistrarEvento("Imagenes button 1 " + er.Message);
                }


            }
            else
            {
                System.Drawing.Image imageToBeResized = System.Drawing.Image.FromStream(FileUpload1.FileContent);
                int imageHeight = imageToBeResized.Height;
                int imageWidth = imageToBeResized.Width;
                int maxHeight = 240;
                int maxWidth = 140;
                imageHeight = (imageHeight * maxWidth) / imageWidth;
                imageWidth = maxWidth;

                if (imageHeight > maxHeight)
                {
                    imageWidth = (imageWidth * maxHeight) / imageHeight;
                    imageHeight = maxHeight;
                }

                Bitmap bitmap = new Bitmap(imageToBeResized, imageWidth, imageHeight);
                System.IO.MemoryStream stream = new MemoryStream();
                bitmap.Save(stream, System.Drawing.Imaging.ImageFormat.Jpeg);
                stream.Position = 0;
                byte[] image = new byte[stream.Length + 1];
                stream.Read(image, 0, image.Length);
                System.IO.FileStream fs = new System.IO.FileStream(address, System.IO.FileMode.Create, System.IO.FileAccess.ReadWrite);
                fs.Write(image, 0, image.Length);

            }
            string _producto = Proceso.RegresaCadena_1_Resultado("select FacturaDescripcion from FacturaGaleriaDeArte where Producto = '" + this.lblPosicion.Text + "'");
            Proceso.EjecutaSQL("Update PreciosGaleriaDeArte set Producto = '" + _producto + "', idproducto = '" + this.txtIdProducto.Text +"' , Cantidad = 1 where Nombre = '" + this.lblPosicion.Text + "'");
            this.lblMsg.Text = "Imagen Subida.";

        }

        protected void UploadFile(object sender, EventArgs e)
        {
     
            LinkButton lnkbtn = sender as LinkButton;
            GridViewRow gvrow = lnkbtn.NamingContainer as GridViewRow;
            string fileid = GridView1.DataKeys[gvrow.RowIndex].Value.ToString();
            this.HiddenField1.Value = fileid;
            this.lblPosicion.Text = fileid;

           

        }


        public void CargarGrid()
        {
            
            List<ListItem> files = new List<ListItem>();
            files.Add(new ListItem("GaleriaDeArte1", "GaleriaDeArte1"));
            files.Add(new ListItem("GaleriaDeArte2", "GaleriaDeArte2"));
            files.Add(new ListItem("GaleriaDeArte3", "GaleriaDeArte3"));
            files.Add(new ListItem("GaleriaDeArte4", "GaleriaDeArte4"));
            files.Add(new ListItem("GaleriaDeArte5", "GaleriaDeArte5"));
            files.Add(new ListItem("GaleriaDeArte6", "GaleriaDeArte6"));
            files.Add(new ListItem("GaleriaDeArte7", "GaleriaDeArte7"));
            files.Add(new ListItem("GaleriaDeArte8", "GaleriaDeArte8"));
            files.Add(new ListItem("GaleriaDeArte9", "GaleriaDeArte9"));
            files.Add(new ListItem("GaleriaDeArte10", "GaleriaDeArte10"));
            files.Add(new ListItem("GaleriaDeArte11", "GaleriaDeArte11"));
            files.Add(new ListItem("GaleriaDeArte12", "GaleriaDeArte12"));
            files.Add(new ListItem("GaleriaDeArte13", "GaleriaDeArte13"));
            files.Add(new ListItem("GaleriaDeArte14", "GaleriaDeArte14"));
            files.Add(new ListItem("GaleriaDeArte15", "GaleriaDeArte15"));
            files.Add(new ListItem("GaleriaDeArte16", "GaleriaDeArte16"));
            files.Add(new ListItem("GaleriaDeArte17", "GaleriaDeArte17"));
            files.Add(new ListItem("GaleriaDeArte18", "GaleriaDeArte18"));
            files.Add(new ListItem("GaleriaDeArte19", "GaleriaDeArte19"));
            files.Add(new ListItem("GaleriaDeArte20", "GaleriaDeArte20"));
            files.Add(new ListItem("GaleriaDeArte21", "GaleriaDeArte21"));
            files.Add(new ListItem("GaleriaDeArte22", "GaleriaDeArte22"));
            files.Add(new ListItem("GaleriaDeArte23", "GaleriaDeArte23"));
            files.Add(new ListItem("GaleriaDeArte24", "GaleriaDeArte24"));
            files.Add(new ListItem("GaleriaDeArte25", "GaleriaDeArte25"));
            files.Add(new ListItem("GaleriaDeArte26", "GaleriaDeArte26"));
            files.Add(new ListItem("GaleriaDeArte27", "GaleriaDeArte27"));
            files.Add(new ListItem("GaleriaDeArte28", "GaleriaDeArte28"));
            files.Add(new ListItem("GaleriaDeArte29", "GaleriaDeArte29"));
            files.Add(new ListItem("GaleriaDeArte30", "GaleriaDeArte30"));
            files.Add(new ListItem("GaleriaDeArte31", "GaleriaDeArte31"));
            files.Add(new ListItem("GaleriaDeArte32", "GaleriaDeArte32"));
            files.Add(new ListItem("GaleriaDeArte33", "GaleriaDeArte33"));
            files.Add(new ListItem("GaleriaDeArte34", "GaleriaDeArte34"));
            files.Add(new ListItem("GaleriaDeArte35", "GaleriaDeArte35"));
            files.Add(new ListItem("GaleriaDeArte36", "GaleriaDeArte36"));
            files.Add(new ListItem("GaleriaDeArte37", "GaleriaDeArte37"));
            files.Add(new ListItem("GaleriaDeArte38", "GaleriaDeArte38"));
            files.Add(new ListItem("GaleriaDeArte39", "GaleriaDeArte39"));
            files.Add(new ListItem("GaleriaDeArte40", "GaleriaDeArte40"));
            files.Add(new ListItem("GaleriaDeArte41", "GaleriaDeArte41"));
            files.Add(new ListItem("GaleriaDeArte42", "GaleriaDeArte42"));
            files.Add(new ListItem("GaleriaDeArte43", "GaleriaDeArte43"));
            files.Add(new ListItem("GaleriaDeArte44", "GaleriaDeArte44"));
            files.Add(new ListItem("GaleriaDeArte45", "GaleriaDeArte45"));
            files.Add(new ListItem("GaleriaDeArte46", "GaleriaDeArte46"));
            files.Add(new ListItem("GaleriaDeArte47", "GaleriaDeArte47"));
            files.Add(new ListItem("GaleriaDeArte48", "GaleriaDeArte48"));
            files.Add(new ListItem("GaleriaDeArte49", "GaleriaDeArte49"));
            files.Add(new ListItem("GaleriaDeArte50", "GaleriaDeArte50"));
            files.Add(new ListItem("GaleriaDeArte51", "GaleriaDeArte51"));
            files.Add(new ListItem("GaleriaDeArte52", "GaleriaDeArte52"));
            files.Add(new ListItem("GaleriaDeArte53", "GaleriaDeArte53"));
            files.Add(new ListItem("GaleriaDeArte54", "GaleriaDeArte54"));
            files.Add(new ListItem("GaleriaDeArte55", "GaleriaDeArte55"));
            files.Add(new ListItem("GaleriaDeArte56", "GaleriaDeArte56"));
            files.Add(new ListItem("GaleriaDeArte57", "GaleriaDeArte57"));
            files.Add(new ListItem("GaleriaDeArte58", "GaleriaDeArte58"));
            files.Add(new ListItem("GaleriaDeArte59", "GaleriaDeArte59"));
            files.Add(new ListItem("GaleriaDeArte60", "GaleriaDeArte60"));
            files.Add(new ListItem("GaleriaDeArte61", "GaleriaDeArte61"));
            files.Add(new ListItem("GaleriaDeArte62", "GaleriaDeArte62"));
            files.Add(new ListItem("GaleriaDeArte63", "GaleriaDeArte63"));
            files.Add(new ListItem("GaleriaDeArte64", "GaleriaDeArte64"));
            files.Add(new ListItem("GaleriaDeArte65", "GaleriaDeArte65"));
            files.Add(new ListItem("GaleriaDeArte66", "GaleriaDeArte66"));
            files.Add(new ListItem("GaleriaDeArte67", "GaleriaDeArte67"));
            files.Add(new ListItem("GaleriaDeArte68", "GaleriaDeArte68"));
            files.Add(new ListItem("GaleriaDeArte69", "GaleriaDeArte69"));
            files.Add(new ListItem("GaleriaDeArte70", "GaleriaDeArte70"));
            files.Add(new ListItem("GaleriaDeArte71", "GaleriaDeArte71"));
            files.Add(new ListItem("GaleriaDeArte72", "GaleriaDeArte72"));
            files.Add(new ListItem("GaleriaDeArte73", "GaleriaDeArte73"));
            files.Add(new ListItem("GaleriaDeArte74", "GaleriaDeArte74"));
            files.Add(new ListItem("GaleriaDeArte75", "GaleriaDeArte75"));
            files.Add(new ListItem("GaleriaDeArte76", "GaleriaDeArte76"));
            files.Add(new ListItem("GaleriaDeArte77", "GaleriaDeArte77"));


            GridView1.DataSource = files;
            GridView1.DataBind();

        }





    }


}