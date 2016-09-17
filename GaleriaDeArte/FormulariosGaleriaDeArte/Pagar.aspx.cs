using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.Reporting.WebForms;
using System.IO;
using System.Xml.Linq;
using System.Text;
using System.Data;
using System.Globalization;


namespace GaleriaDeArte
{
    public partial class Pagar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string aut = Session["Autorizado"].ToString();

                if (aut != "Autorizado")
                {
                   //  Response.Redirect("http://localhost:8080/FormulariosGaleriaDeArte/Validar.aspx");
                    Response.Redirect("Validar.aspx");
                }
            }
            catch (Exception)
            {

                // Response.Redirect("http://localhost:8080/FormulariosGaleriaDeArte/Validar.aspx");
                Response.Redirect("Validar.aspx");
            }

            try
            {


                string codigo = Session["codigo"].ToString();
                txtCodigoPedido.Text = codigo;

                string compra = Proceso.RegresaCadena_1_Resultado("Select sum(Total) as Total from PedidosGaleriaDeArte where CodigoPedido = '"+ codigo +"'");
                this.txtMontoAPagar.Text = compra;

            }
            catch (Exception)
            {
              //   Response.Redirect("http://localhost:8080/FormulariosGaleriaDeArte/Validar.aspx");
                Response.Redirect("Validar.aspx");
            }
            try
            {
                string correo = Session["correo"].ToString();
                txtCorreo.Text = correo;
            }
            catch (Exception)
            {
                // Response.Redirect("http://localhost:8080/FormulariosGaleriaDeArte/Validar.aspx");
                Response.Redirect("Validar.aspx");
            }

        


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextReader tr = new StringReader(@"<?xml version=""1.0"" encoding=""UTF-8""?><FactDocGT xmlns=""http://www.fact.com.mx/schema/gt""    xmlns:xsi=""http://www.w3.org/2001/XMLSchema-instance""    xsi:schemaLocation=""http://www.fact.com.mx/schema/gt http://www.mysuitemex.com/fact/schema/fx_2012_gt.xsd"">   <Version>2</Version></FactDocGT>");
            XDocument doc = new XDocument(XDocument.Load(tr, LoadOptions.None));
            if (this.txtNombre.Text == "")
            {
                this.lblMensajes.Text = "Fill up your name.";
                return;
            }
            else
            {
                this.lblMensajes.Text = "";
            }
            if (this.txtDireccion.Text == "")
            {
                this.lblMensajes.Text = "Fill up your address.";
                return;
            }
            else
            {
                this.lblMensajes.Text = "";
            }
            if (this.txtCodigoPedido.Text == "")
            {
                this.lblMensajes.Text = "Fill up your Order code";
                return;
            }
            else
            {
                this.lblMensajes.Text = "";
            }
            string _proforma = this.txtCodigoPedido.Text;
            string _nitVendedor = Proceso.RegresaCadena_1_Resultado("select nit from  DatosEmpresas where NIT = '86203525'");
            string _codigoMoneda = this.cmbPais.SelectedValue.ToString();
            string _tipoDeCambio = "";
            if (_codigoMoneda == "USD")
            { _tipoDeCambio = Proceso.RegresaCadena_1_Resultado("select TipoDeCambioUsd from DatosEmpresas where NIT = '86203525'"); }
            else
            {
                _tipoDeCambio = Proceso.RegresaCadena_1_Resultado("select TipoDeCambio from DatosEmpresas where NIT = '86203525'");
            }
            string transmitiendo = Proceso.RegresaCadena_1_Resultado("select top 1 isnull(transmision, '') from PedidosGaleriaDeArte where CodigoPedido = '"+ _proforma + "'");

            if (transmitiendo != "")
            {
                return;
            }
            else {
                Proceso.EjecutaSQL("Update PedidosGaleriaDeArte set transmision = 'Corriendo' where  CodigoPedido = '" + _proforma + "'");
            }


            string NitComprador = this.txtNit.Text;
            if (NitComprador == "")
            { NitComprador = "CF"; }
            decimal total = decimal.Parse(Proceso.RegresaCadena_1_Resultado("Select SUM(total) from PedidosGaleriaDeArte where CodigoPedido  ='" + _proforma + "' "));
            string totalletras = Proceso.RegresaCadena_1_Resultado("select dbo.CantidadConLetra(" + total.ToString().Replace(",", ".") + ")");
            string NombreComercialComprador = this.txtNombre.Text;
            string DireccionComercialComprador = "Ciudad";
            string MunicipioComprador = "Guatemala";
            string DepartamentoComprador = "Guatemala";
            string CodigoDePaisComprador = "GT";
            string CodigoPostalComprador = ".";
            decimal Impuesto = decimal.Parse(Proceso.RegresaCadena_1_Resultado("select impuesto from  DatosEmpresas where NIT = '86203525'"));
            string requestor = "84cf685d-bd7d-41db-bbe9-e63fa2be9616";
            string funcion = "CONVERT_NATIVE_XML";
            string codigoPais = "GT";
            string nit = "86203525";
            string user = "GRUPO HESSE, SOCIEDAD ANONIMA";
            string formatos = "XML HTML PDF";
            string tasa_iva = "";
            tasa_iva = Impuesto.ToString();
            tasa_iva = tasa_iva.Replace(",",".");
            tasa_iva = tasa_iva.Substring(2, tasa_iva.Length - 2);
            Session["CodigoCompra"] = _proforma;

            try
            {

                doc.Root.Add(
                                new XElement(doc.Root.Name.Namespace + "Encabezado",
                                new XElement(doc.Root.Name.Namespace + "TipoActivo", Proceso.RegresaCadena_1_Resultado("select TipoActivo from DatosEmpresas where NIT = '86203525'")),
                                new XElement(doc.Root.Name.Namespace + "CodigoDeMoneda", _codigoMoneda),
                                new XElement(doc.Root.Name.Namespace + "TipoDeCambio", String.Format("{0:0.##}", _tipoDeCambio.ToString(CultureInfo.InvariantCulture))),
                                new XElement(doc.Root.Name.Namespace + "InformacionDeRegimenIsr", Proceso.RegresaCadena_1_Resultado(" select  InformacionDeRegimenIsr from DatosEmpresas where NIT = '86203525'"))),
                                new XElement(doc.Root.Name.Namespace + "Vendedor",
                                new XElement(doc.Root.Name.Namespace + "Nit", Proceso.RegresaCadena_1_Resultado("select left('00000000000', 12 - len( replace(Nit,'-','') ) )+ ltrim( replace(Nit,'-','') )  from DatosEmpresas where NIT = '86203525'")),
                                new XElement(doc.Root.Name.Namespace + "NombreComercial", Proceso.RegresaCadena_1_Resultado("select  RazonSocial    from DatosEmpresas where NIT = '86203525'")),
                                new XElement(doc.Root.Name.Namespace + "Idioma", Proceso.RegresaCadena_1_Resultado("select  Idioma    from DatosEmpresas where NIT = '86203525'")),
                                new XElement(doc.Root.Name.Namespace + "DireccionDeEmisionDeDocumento",
                                new XElement(doc.Root.Name.Namespace + "NombreDeEstablecimiento", Proceso.RegresaCadena_1_Resultado("select NombreDeEstablecimiento from DatosEmpresas where NIT = '86203525'")),
                                new XElement(doc.Root.Name.Namespace + "CodigoDeEstablecimiento", Proceso.RegresaCadena_1_Resultado("select CodigoDeEstablecimiento from DatosEmpresas where NIT = '86203525'")),
                                new XElement(doc.Root.Name.Namespace + "DispositivoElectronico", Proceso.RegresaCadena_1_Resultado("select DispositivoElectronico from DatosEmpresas where NIT = '86203525'")),
                                new XElement(doc.Root.Name.Namespace + "Direccion1", Proceso.RegresaCadena_1_Resultado("select Direccion1 from DatosEmpresas where NIT = '86203525'")),
                                new XElement(doc.Root.Name.Namespace + "Direccion2", Proceso.RegresaCadena_1_Resultado("select Direccion2 from DatosEmpresas where NIT = '86203525'")),
                                new XElement(doc.Root.Name.Namespace + "Municipio", Proceso.RegresaCadena_1_Resultado("select Municipio from DatosEmpresas where NIT = '86203525'")),
                                new XElement(doc.Root.Name.Namespace + "Departamento", Proceso.RegresaCadena_1_Resultado("select Departamento from DatosEmpresas where NIT = '86203525'")),
                                new XElement(doc.Root.Name.Namespace + "CodigoDePais", Proceso.RegresaCadena_1_Resultado("select CodigoDePais from DatosEmpresas where NIT = '86203525'")))),
                                new XElement(doc.Root.Name.Namespace + "Comprador",
                                new XElement(doc.Root.Name.Namespace + "Nit", NitComprador),
                                new XElement(doc.Root.Name.Namespace + "NombreComercial", NombreComercialComprador),
                                new XElement(doc.Root.Name.Namespace + "Idioma", Proceso.RegresaCadena_1_Resultado("select  Idioma    from DatosEmpresas where NIT = '86203525'")),
                                new XElement(doc.Root.Name.Namespace + "DireccionComercial",
                                new XElement(doc.Root.Name.Namespace + "Direccion1", DireccionComercialComprador),
                                new XElement(doc.Root.Name.Namespace + "Municipio", MunicipioComprador),
                                new XElement(doc.Root.Name.Namespace + "Departamento", DepartamentoComprador),
                                new XElement(doc.Root.Name.Namespace + "CodigoDePais", CodigoDePaisComprador),
                                new XElement(doc.Root.Name.Namespace + "CodigoPostal", CodigoPostalComprador))),
                                new XElement(Elementor(doc, _proforma, tasa_iva)),
                                new XElement(doc.Root.Name.Namespace + "Totales",
                                new XElement(doc.Root.Name.Namespace + "SubTotalSinDR",  Proceso.RegresaCadena_1_Resultado("Select cast( (sum(Total)/(select impuesto from DatosEmpresas where Nit = '86203525' )) as numeric (10,5))  from PedidosGaleriaDeArte where CodigoPedido  ='" + _proforma + "' ")),
                                new XElement(doc.Root.Name.Namespace + "SubTotalConDR", Proceso.RegresaCadena_1_Resultado("Select cast( (sum(Total)/(select impuesto from DatosEmpresas where Nit = '86203525' )) as numeric (10,5))  from PedidosGaleriaDeArte where CodigoPedido  ='" + _proforma + "' ")),
                                new XElement(doc.Root.Name.Namespace + "Impuestos",
                                new XElement(doc.Root.Name.Namespace + "TotalDeImpuestos",   Proceso.RegresaCadena_1_Resultado("Select cast(sum(Total) -  (sum(Total)/(select impuesto from DatosEmpresas where Nit = '86203525' )) as numeric (10,5))   from PedidosGaleriaDeArte where CodigoPedido =  '" + _proforma + "'") ),
                                new XElement(doc.Root.Name.Namespace + "IngresosNetosGravados",   Proceso.RegresaCadena_1_Resultado("Select cast (sum(Total)/(select impuesto from DatosEmpresas where Nit = '86203525' ) as numeric (10,5))  from PedidosGaleriaDeArte where CodigoPedido = '" + _proforma + "'") ),
                                new XElement(doc.Root.Name.Namespace + "TotalDeIVA", Proceso.RegresaCadena_1_Resultado("Select cast (sum(Total) - sum(Total)/(select impuesto from DatosEmpresas where Nit = '86203525' ) as numeric (10,5))  from PedidosGaleriaDeArte where CodigoPedido =  '" + _proforma + "'") ),
                                new XElement(doc.Root.Name.Namespace + "Impuesto",
                                new XElement(doc.Root.Name.Namespace + "Tipo", "IVA"),
                                new XElement(doc.Root.Name.Namespace + "Base",   Proceso.RegresaCadena_1_Resultado("Select cast (sum(Total)/(select impuesto from DatosEmpresas where Nit = '86203525' ) as numeric (10,5)) from PedidosGaleriaDeArte where CodigoPedido = '" + _proforma + "'") ),
                                new XElement(doc.Root.Name.Namespace + "Tasa", tasa_iva),
                                new XElement(doc.Root.Name.Namespace + "Monto",  Proceso.RegresaCadena_1_Resultado("Select cast(  (sum(Total) - sum(Total)/(select impuesto from DatosEmpresas where Nit = '86203525' )) as numeric (10,5))  from PedidosGaleriaDeArte where CodigoPedido =  '" + _proforma + "'") ))),
                                new XElement(doc.Root.Name.Namespace + "Total",  Proceso.RegresaCadena_1_Resultado("Select cast(SUM(Total) as numeric (10,2))  from PedidosGaleriaDeArte where CodigoPedido =  '" + _proforma + "'") ),
                                new XElement(doc.Root.Name.Namespace + "TotalLetras", totalletras)),
                                new XElement(doc.Root.Name.Namespace + "TextosDePie", "",
                                new XElement(Mensajes(doc, _proforma)))
                  );



                doc.Save(@"C:\XML\envioDetalle.XML", SaveOptions.None);
                GfaceFactura.FactWSFront ws = new GfaceFactura.FactWSFront();
                GfaceFactura.TransactionTag tagPruebas = new GfaceFactura.TransactionTag();
                string factura = doc.ToString().Replace(",", ".");

                tagPruebas = ws.RequestTransaction(requestor, funcion,
                                                       codigoPais, nit,
                                                       requestor,
                                                       codigoPais + "." + nit + "." + user,
                                                       factura, formatos, string.Empty);
                string _visualizar = "";

                if (tagPruebas.Response.Result)
                {
                    string _cae = "";
                    string _factura = "";
                    _factura = tagPruebas.Response.Identifier.Batch + "-" + tagPruebas.Response.Identifier.Serial;
                    String xmlFirmado = Base64String_String(tagPruebas.ResponseData.ResponseData1);
                    XElement myXml = XElement.Parse(xmlFirmado);
                    XNamespace xnsp = "urn:ean.ucc:pay:2";
                    string documento_unico = myXml.Element("Documento").Element(xnsp + "invoice").Element("invoiceIdentification").Element("uniqueCreatorIdentification").Value;
                 
                    XNamespace xn = "http://www.w3.org/2000/09/xmldsig#";
                    _cae = myXml.Element("Documento").Element("CAE").Element("FCAE").Element(xn + "SignatureValue").Value; //_cae;
                     string resolucion = myXml.Element("Documento").Element("CAE").Element("DCAE").Element("NumeroAutorizacion").Value;
                    string _fecharesolucion = myXml.Element("Documento").Element(xnsp + "invoice").Element("extension").Element("fechaResolucion").Value;
                    string _serieAutorizada = myXml.Element("Documento").Element(xnsp + "invoice").Element("extension").Element("serieAutorizada").Value;
                     string _rangoInicialAutorizado = myXml.Element("Documento").Element(xnsp + "invoice").Element("extension").Element("rangoInicialAutorizado").Value;
                     string _rangoFinalAutorizado = myXml.Element("Documento").Element(xnsp + "invoice").Element("extension").Element("rangoFinalAutorizado").Value;
                 //    string _regimenInfo = myXml.Element("Documento").Element(xnsp + "invoice").Element("extension").Element("informacionRegimenIsr").Value;
                 //  string _rango = " Serie " + _serieAutorizada + "  De Fecha " + _fecharesolucion + " Rangos Desde " + _rangoInicialAutorizado + " Hasta " + _rangoFinalAutorizado;

                    Proceso.EjecutaSQL("update PedidosGaleriaDeArte set SAT_factura ='" + _factura + "' , SAT_cae = '" + _cae + "', DocUnicoSAT  = '" + documento_unico + "', Cliente ='" + this.txtNombre.Text.Trim() + "' , DireccionCliente = '" + this.txtDireccion.Text.Trim() + "', NitCliente = '" + this.txtNit.Text.Trim() + "'  where CodigoPedido = '" + _proforma + "' ");
                    string infores = resolucion + " de fecha " + _fecharesolucion + " Serie Autorizada " + _serieAutorizada + " de " + _rangoInicialAutorizado + " a " + _rangoFinalAutorizado  ;
                    Proceso.EjecutaSQL("update DatosEmpresas set resolucion = '"+ infores  + "'  where Nit = '86203525' ");
                    Proceso.EjecutaSQL("Update PedidosGaleriaDeArte set transmision = 'Terminado' where  CodigoPedido = '" + _proforma + "'");

                }
                else
                {
                    Proceso.EjecutaSQL("Update PedidosGaleriaDeArte set transmision = 'Error al Transmitir' where  CodigoPedido = '" + _proforma + "'");
                    _visualizar = tagPruebas.Response.Identifier.Currency + ' ' + tagPruebas.Response.Identifier.DocumentGUID + ' ' + tagPruebas.Response.Identifier.ReceiverCountry;

                }
                //  Result = Proceso.DataTable("Select '" + _factura + "' as factura, '" + _cae + "' as cae , '" + _visualizar + "' as visualizar ");

                //   doc.Save(@"K:\Documents and Settings\ecastaneda.IMPERIALTEX\Escritorio\envioDetalle.XML",SaveOptions.None);


            }
            catch (Exception s)
            {

                Helper.RegistrarEvento(s.Message);
            }



            Proceso.ActualizaPagoEnPedido(_proforma);
            DataTable producto = new DataTable();

            producto = Proceso.RegresaTabla("select Presentacion from   PedidosGaleriaDeArte where CodigoPedido = '"+ _proforma + "'");
            string address = PathMap.ServerPath();  

            string file = "";

            try
            {
                foreach (DataRow rw in producto.Rows)
                {
                    file = address + rw[0].ToString() + ".bmp";
                    System.IO.File.Delete(file);
                    Proceso.EjecutaSQL("update PreciosGaleriaDeArte set Cantidad = 0, Precio = 0,  Producto = '' where Nombre = '" + rw[0].ToString() + "'");
                }
            }
            catch (Exception se)
            {

                Helper.RegistrarEvento("Borrando Producto Comprado " + se.Message );
            }

            string archivo = AlmacenarPdf(_proforma);
            string correo = Proceso.RegresaCadena_1_Resultado("select Correo from PedidosGaleriaDeArte where CodigoPedido = '" + _proforma +"'");
            StringBuilder mensaje = new StringBuilder();
            mensaje.Append("Dear Customer");
            mensaje.AppendLine("");
            mensaje.AppendLine("Thank you very much to your decision and the confidence placed in us.");
            mensaje.AppendLine("Your purchase code is : "+ _proforma +" .");
            mensaje.AppendLine("The Gallery owner will be contacting you soon.");
            mensaje.AppendLine("Any question can be received in this email : ");
            DataTable contentmensaje = new DataTable();
            contentmensaje = Proceso.RegresaTabla("select Replace(Correo,Palabra,''), * from MaestroEmpresas where Empresa = 'GaleriaDeArte'");
            foreach (DataRow rw in contentmensaje.Rows)
            {
                mensaje.AppendLine(rw[0].ToString());
            }
            mensaje.AppendLine("Atached to this mail we forward your invoice for the item.");
            mensaje.AppendLine("Thank you for your purchase.");
            Correo.EnviarCorreoConAtachments(correo,mensaje,"Invoice Atached",archivo,"Invoice Atached");

            // ClientScript.RegisterStartupScript(this.GetType(), "Alert", "alert('The gallery owner will be contacting you soon.Transaction Ended.');", true);
            this.lblMensajes.Text = "Transaction ended succesfuly, an email has been sent to you.";
        }
        public static string AlmacenarPdf(string CodigoCompra)
        {
            
            ReportDataSource rds = new ReportDataSource("FacturaGaleriaDeArte", Proceso.EmitirFacturaGaleriaDeArte(CodigoCompra));
            string address = PathMap.ServerPath();
            string archivo = address + @"Factura.pdf";
            Warning[] warnings;
            string[] streamIds;
            string mimeType = string.Empty;
            string encoding = string.Empty;
            string extension = string.Empty;
            Proceso.LimpiarArchivo(archivo);
       
            ReportViewer viewer = new ReportViewer();
            viewer.ProcessingMode = ProcessingMode.Local;
            viewer.LocalReport.ReportPath = PathMap.ReportPath();
            viewer.LocalReport.DataSources.Add(rds);
            byte[] info = viewer.LocalReport.Render("PDF", null, out mimeType, out encoding, out extension, out streamIds, out warnings);
            try
            {
                using (FileStream fs = new FileStream(archivo,
                    FileMode.Create, FileAccess.Write, FileShare.None))
                {

                    fs.Write(info, 0, info.Length);
                    if (fs != null)
                    {
                        ((IDisposable)fs).Dispose();
                    }
                }
            }
            catch (Exception ex)
            {

                Helper.RegistrarEvento("Error al escribir el archivo pdf " + ex.Message);
            }



            viewer.Dispose();

            return archivo;

        }
        public static String Base64String_String(String b64)
        {
            try
            {
                return ByteArray_String(Base64String_ByteArray(b64));
            }
            catch
            {
                return b64;
            }
        }

        public static byte[] Base64String_ByteArray(String s)
        {
            return Convert.FromBase64String(s);
        }

        public static String ByteArray_String(byte[] b)
        {
            return new String(System.Text.Encoding.UTF8.GetChars(b));
        }
        public XElement Elementor(XDocument doc, string _proforma, string tasa_iva)
        {

            DataTable _count = Proceso.RegresaTabla("select indice from  PedidosGaleriaDeArte where CodigoPedido = '" + _proforma + "'");
 
            XElement el = null;
            try
            {
                string _indice = "";
                string _Descripcion = "";
                string _Cantidad = "";
                string _precio = "";
                string _Monto = "";
                string _TotalDeImpuestos = "";
                string _IngresosNetosGravados = "";
                string _TotalDelIva = "";
                string _base = "";
                string _monto = "";
                string monto_iva = "";
                foreach (DataRow rw in _count.Rows)
                {
                    _indice = rw[0].ToString();
                    _Descripcion = Proceso.RegresaCadena_1_Resultado("select producto from PedidosGaleriaDeArte where indice = " + _indice);
                    _Cantidad =  Proceso.RegresaCadena_1_Resultado("select  Cantidad from PedidosGaleriaDeArte a where indice = " + _indice);
                    _precio =  Proceso.RegresaCadena_1_Resultado("select  cast(Precio/(select impuesto from DatosEmpresas where Nit = '86203525' ) as numeric (10,5))  from dbo.PedidosGaleriaDeArte where CodigoPedido = '" + _proforma + "' and indice = " + _indice);
                    _monto = Proceso.RegresaCadena_1_Resultado("select  cast( (Total/(select impuesto from DatosEmpresas where Nit = '86203525' )) as numeric (10,5))  from dbo.PedidosGaleriaDeArte where CodigoPedido = '" + _proforma + "' and indice = " + _indice);
                    monto_iva =   Proceso.RegresaCadena_1_Resultado("select  cast(Total - (Total/(select impuesto from DatosEmpresas where Nit = '86203525' )) as numeric (10,5))  from dbo.PedidosGaleriaDeArte where CodigoPedido = '" + _proforma + "' and indice = " + _indice);
                    _TotalDeImpuestos =  Proceso.RegresaCadena_1_Resultado(" Select cast(Total -  (Total/(select impuesto from DatosEmpresas where Nit = '86203525' )) as numeric (10,5))  from PedidosGaleriaDeArte where indice = " + _indice);
                    _IngresosNetosGravados =   Proceso.RegresaCadena_1_Resultado(" Select cast (Total/(select impuesto from DatosEmpresas where Nit = '86203525' ) as numeric (10,5))  from PedidosGaleriaDeArte where indice = " + _indice);
                    _TotalDelIva =  Proceso.RegresaCadena_1_Resultado(" Select cast (Total - Total/(select impuesto from DatosEmpresas where Nit = '86203525' ) as numeric (10,5))  from PedidosGaleriaDeArte where indice = " + _indice);
                    _base =  Proceso.RegresaCadena_1_Resultado("Select  cast (Total/(select impuesto from DatosEmpresas where Nit = '86203525' ) as numeric (10,5))  from PedidosGaleriaDeArte where indice = " + _indice);
                    _Descripcion = _Descripcion.Replace("'","");

                    if (el == null)
                    {
                       el = (new XElement(new XElement(doc.Root.Name.Namespace + "Detalles",
                            new XElement(doc.Root.Name.Namespace + "Detalle",
                         new XElement(doc.Root.Name.Namespace + "Descripcion", _Descripcion),
                        new XElement(doc.Root.Name.Namespace + "CodigoEAN", "00000000000000"), // Constante 14 digitos de cero "0"
                        new XElement(doc.Root.Name.Namespace + "UnidadDeMedida", "UN"),
                        new XElement(doc.Root.Name.Namespace + "Cantidad", _Cantidad),

                        new XElement(doc.Root.Name.Namespace + "ValorSinDR",
                        new XElement(doc.Root.Name.Namespace + "Precio", _precio),
                        new XElement(doc.Root.Name.Namespace + "Monto", _monto)),

                        new XElement(doc.Root.Name.Namespace + "ValorConDR",
                        new XElement(doc.Root.Name.Namespace + "Precio", _precio),
                        new XElement(doc.Root.Name.Namespace + "Monto", _monto)),

                        new XElement(doc.Root.Name.Namespace + "Impuestos",
                        new XElement(doc.Root.Name.Namespace + "TotalDeImpuestos", _TotalDeImpuestos),
                        new XElement(doc.Root.Name.Namespace + "IngresosNetosGravados", _base),
                        new XElement(doc.Root.Name.Namespace + "TotalDeIVA", _TotalDelIva),
                        new XElement(doc.Root.Name.Namespace + "Impuesto",
                        new XElement(doc.Root.Name.Namespace + "Tipo", "IVA"),
                        new XElement(doc.Root.Name.Namespace + "Base", _base),
                        new XElement(doc.Root.Name.Namespace + "Tasa", tasa_iva),
                        new XElement(doc.Root.Name.Namespace + "Monto", monto_iva))),
                        new XElement(doc.Root.Name.Namespace + "Categoria", "BIEN"),
                        new XElement(doc.Root.Name.Namespace + "TextosDePosicion",
                        new XElement(doc.Root.Name.Namespace + "Texto", "."))
                        ))));
                      
                    }
                    else
                    {
                        el.Add(( new XElement(doc.Root.Name.Namespace + "Detalle",
                         new XElement(doc.Root.Name.Namespace + "Descripcion", _Descripcion),
                        new XElement(doc.Root.Name.Namespace + "CodigoEAN", "00000000000000"), // Constante 14 digitos de cero "0"
                        new XElement(doc.Root.Name.Namespace + "UnidadDeMedida", "UN"),
                        new XElement(doc.Root.Name.Namespace + "Cantidad", _Cantidad),

                        new XElement(doc.Root.Name.Namespace + "ValorSinDR",
                        new XElement(doc.Root.Name.Namespace + "Precio", _precio),
                        new XElement(doc.Root.Name.Namespace + "Monto", _monto)),

                        new XElement(doc.Root.Name.Namespace + "ValorConDR",
                        new XElement(doc.Root.Name.Namespace + "Precio", _precio),
                        new XElement(doc.Root.Name.Namespace + "Monto", _monto)),

                        new XElement(doc.Root.Name.Namespace + "Impuestos",
                        new XElement(doc.Root.Name.Namespace + "TotalDeImpuestos", _TotalDeImpuestos),
                        new XElement(doc.Root.Name.Namespace + "IngresosNetosGravados", _base),
                        new XElement(doc.Root.Name.Namespace + "TotalDeIVA", _TotalDelIva),
                        new XElement(doc.Root.Name.Namespace + "Impuesto",
                        new XElement(doc.Root.Name.Namespace + "Tipo", "IVA"),
                        new XElement(doc.Root.Name.Namespace + "Base", _base),
                        new XElement(doc.Root.Name.Namespace + "Tasa", tasa_iva),
                        new XElement(doc.Root.Name.Namespace + "Monto", monto_iva))),
                        new XElement(doc.Root.Name.Namespace + "Categoria", "BIEN"),
                        new XElement(doc.Root.Name.Namespace + "TextosDePosicion",
                        new XElement(doc.Root.Name.Namespace + "Texto", "."))
                        )));

        

                    }


                }

            }
            catch (Exception s)
            {

                Helper.RegistrarEvento(s.Message);
            }


            return el;
        }
        public XElement Mensajes(XDocument doc, string _proforma)
        {




            XElement el = null;
            try
            {

                if (el == null)
                {
                    el = new XElement(doc.Root.Name.Namespace + "Texto", "Codigo de compra " + _proforma);
                }
                else
                {
                    el.Add(new XElement(doc.Root.Name.Namespace + "Texto", "Codigo de compra " + _proforma));

                }



            }
            catch (Exception s)
            {

                throw s;
            }


            return el;
        }
    }

}