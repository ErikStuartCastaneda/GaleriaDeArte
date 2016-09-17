using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;
using System.Collections.Generic;


    public class Proceso
    {
        public static void LimpiarArchivo(string archivo)
        {

            if (System.IO.File.Exists(archivo))
            {
                // Use a try block to catch IOExceptions, to 
                // handle the case of the file already being 
                // opened by another process. 
                try
                {
                    System.IO.File.Delete(archivo);
                }
                catch (System.IO.IOException e)
                {
                    Helper.RegistrarEvento("Limpiando el archivo " + e.Message);
                    return;
                }
            }
        }

        public static string TraePrecio(string CantidadPedida, string Cuadro, string Codigo)
        {
            string Presentacion = Cuadro;
            System.Data.SqlClient.SqlConnection cnn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["hesselocal"].ToString());

            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("exec proc_TarifaGaleriaDeArte " + CantidadPedida + ",'" + Presentacion + "','" + Codigo + "'", cnn);
            cmd.CommandType = CommandType.Text;
            System.Data.SqlClient.SqlDataAdapter adpt = new System.Data.SqlClient.SqlDataAdapter(cmd);
            System.Data.DataTable content = new System.Data.DataTable();

            cnn.Open();
            adpt.Fill(content);
            cnn.Close();

            string result = "";
            foreach (DataRow rw in content.Rows)
            {
                result = rw[0].ToString();
                break;
            }

            return result;
        }
        public static string RegresaCadena_1_Resultado(string sql)
        {
            string result = "";
            try
            {
                System.Data.SqlClient.SqlConnection cnn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["hesselocal"].ToString());

                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, cnn);
                cmd.CommandType = CommandType.Text;
                System.Data.SqlClient.SqlDataAdapter adpt = new System.Data.SqlClient.SqlDataAdapter(cmd);
                System.Data.DataTable content = new System.Data.DataTable();

                cnn.Open();
                adpt.Fill(content);
                cnn.Close();

       
                foreach (DataRow rw in content.Rows)
                {
                    result = rw[0].ToString();
                    break;
                }
            }
            catch (Exception es)
            {

                Helper.RegistrarEvento(es.Message);
            }


            return result;
        }
        public static DataTable RegresaTabla(string sql)
        {

            System.Data.SqlClient.SqlConnection cnn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["hesselocal"].ToString());

            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, cnn);
            cmd.CommandType = CommandType.Text;
            System.Data.SqlClient.SqlDataAdapter adpt = new System.Data.SqlClient.SqlDataAdapter(cmd);
            System.Data.DataTable content = new System.Data.DataTable();

            cnn.Open();
            adpt.Fill(content);
            cnn.Close();


            return content;
        }
        public static string GuardaPedido(string CantidadPedida, string NombreCuadro, string Codigo, string Correo, string FechaEntrega, string HoraEntrega, string CodigoPedido)
        {
            string result = "";
            string Presentacion = NombreCuadro;
            try
            {
                System.Data.SqlClient.SqlConnection cnn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["hesselocal"].ToString());

                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("exec proc_GuardaPedidoGaleriaDeArte " + CantidadPedida + ",'" + Presentacion + "','" + Codigo + "','" + Correo + "','" +  CodigoPedido + "'", cnn);
                cmd.CommandType = CommandType.Text;
                System.Data.SqlClient.SqlDataAdapter adpt = new System.Data.SqlClient.SqlDataAdapter(cmd);
                System.Data.DataTable content = new System.Data.DataTable();

                cnn.Open();
                adpt.Fill(content);
                cnn.Close();


                foreach (DataRow rw in content.Rows)
                {
                    result = rw[0].ToString();
                    break;
                }

                return result;

            }
            catch (Exception es)
            {

                Helper.RegistrarEvento("Guarda Pedido" + " " + es.Message);
            }
            return result;
        }
        public static string CodigoPedido(string Correo)
        {

            System.Data.SqlClient.SqlConnection cnn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["hesselocal"].ToString());

            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("exec proc_GeneraCodigoCompra '" + Correo + "'", cnn);
            cmd.CommandType = CommandType.Text;
            System.Data.SqlClient.SqlDataAdapter adpt = new System.Data.SqlClient.SqlDataAdapter(cmd);
            System.Data.DataTable content = new System.Data.DataTable();

            cnn.Open();
            adpt.Fill(content);
            cnn.Close();

            string result = "";
            foreach (DataRow rw in content.Rows)
            {
                result = rw[0].ToString();
                break;
            }

            return result;
        }

        public static DataTable ReturnDataTable(string sql)
        {
            System.Data.SqlClient.SqlConnection cnn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["hesselocal"].ToString());

            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, cnn);
            cmd.CommandType = CommandType.Text;
            System.Data.SqlClient.SqlDataAdapter adpt = new System.Data.SqlClient.SqlDataAdapter(cmd);
            System.Data.DataTable content = new System.Data.DataTable();
            cnn.Open();
            adpt.Fill(content);
            cnn.Close();

            return content;
        }
        public static string LlenaTabla(string titulo, string sql)
        {
            String Tabla = "";
            try
            {
                SqlConnection cn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["hesselocal"].ToString());
                cn.Open();
                SqlCommand cmd = new SqlCommand(sql, cn);
                SqlDataAdapter dt = new SqlDataAdapter(cmd);
                DataTable content = new DataTable();
                dt.Fill(content);

                String Encabezado = "";
                int fila = 0;

                Tabla += "<table> " +
                "<caption>" + titulo + "</caption> ";


                foreach (DataRow rw in content.Rows)
                {
                    if (Encabezado == "")
                    {
                        Encabezado = "<tr>";

                        foreach (DataColumn cabecera in content.Columns)
                        {
                            Encabezado += "<th>" + cabecera.ColumnName + "</th>";
                        }
                        Tabla += Encabezado + "</tr>";
                    }

                    Tabla += "<tr>";
                    foreach (DataColumn cabecera in content.Columns)
                    {

                        Tabla += "<td>" + rw[fila].ToString() + "</td>";
                        fila += 1;
                    }
                    Tabla += "</tr>";
                    fila = 0;
                }
                Tabla += " </table> ";
            }
            catch (Exception es)
            {

                Helper.RegistrarEvento("LlenaTabla" + " " + es.Message);
            }

            return Tabla;
        }

    public static void BloquearCuenta(string empresa, string codigo)
        {
            System.Data.SqlClient.SqlConnection cnn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["hesselocal"].ToString());

            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("update MaestroEmpresas set Nivel = 0, Codigo = '" + codigo + "' where Empresa = '" + empresa + "'", cnn);
            cmd.CommandType = CommandType.Text;
            System.Data.SqlClient.SqlDataAdapter adpt = new System.Data.SqlClient.SqlDataAdapter(cmd);
            System.Data.DataTable content = new System.Data.DataTable();

            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();

        }
        public static void DesBloquearCuenta(string empresa, string codigo)
        {
            System.Data.SqlClient.SqlConnection cnn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["hesselocal"].ToString());
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("update MaestroEmpresas set Nivel = 1, Codigo = '' where Empresa = '" + empresa + "'", cnn);
            cmd.CommandType = CommandType.Text;
            System.Data.SqlClient.SqlDataAdapter adpt = new System.Data.SqlClient.SqlDataAdapter(cmd);
            System.Data.DataTable content = new System.Data.DataTable();

            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();

        }
        public static void ActualizaPagoEnPedido(string codigo)
        {
            System.Data.SqlClient.SqlConnection cnn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["hesselocal"].ToString());

            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("update PedidosGaleriaDeArte set Confirmado = 1, FechaConfirmado = getdate() where CodigoPedido like '%" + codigo + "%'", cnn);
            cmd.CommandType = CommandType.Text;
            System.Data.SqlClient.SqlDataAdapter adpt = new System.Data.SqlClient.SqlDataAdapter(cmd);
            System.Data.DataTable content = new System.Data.DataTable();

            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();

        }
        public static void EjecutaSQL(string _sql)
        {
            System.Data.SqlClient.SqlConnection cnn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["hesselocal"].ToString());

            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(_sql, cnn);
            cmd.CommandType = CommandType.Text;
            System.Data.SqlClient.SqlDataAdapter adpt = new System.Data.SqlClient.SqlDataAdapter(cmd);
            System.Data.DataTable content = new System.Data.DataTable();

            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();



        }
        public static void GuardarDescripcionFactura(string descripcion, string producto)
        {
            System.Data.SqlClient.SqlConnection cnn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["hesselocal"].ToString());

            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("update FacturaGaleriaDeArte set FacturaDescripcion = '" + descripcion + "' where Producto = '" + producto + "'", cnn);
            cmd.CommandType = CommandType.Text;
            System.Data.SqlClient.SqlDataAdapter adpt = new System.Data.SqlClient.SqlDataAdapter(cmd);
            System.Data.DataTable content = new System.Data.DataTable();

            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();



        }
        public static StringBuilder GetBodyCompra()
        {
            StringBuilder bodi = new StringBuilder();
            try
            {
                bodi.AppendLine(@"<html xmlns='http://www.w3.org/1999/xhtml'> ");
                bodi.AppendLine("<head><title>Confirmacion</title> ");
                bodi.AppendLine("<style type=text/css>");
                bodi.AppendLine("body {font-family: Arial, Helvetica, sans-serif; background-color: #63D13E;}");
                bodi.AppendLine("table { font-family: 'Lucida Sans Unicode', 'Lucida Grande', Sans-Serif; font-size: 12px; margin: 45px; width: 550px; ");
                bodi.AppendLine("text-align: center; border-collapse: collapse; } ");
                bodi.AppendLine("th { font-size: 13px; font-weight: normal; padding: 8px; background: #b9c9fe; border-top: 4px solid #aabcfe;");
                bodi.AppendLine("border-bottom: 1px solid #fff; color: #039; }");
                bodi.AppendLine("td { padding: 8px; background: #e8edff; border-bottom: 1px solid #fff; color: #669; border-top: 1px solid transparent; }");
                bodi.AppendLine("tr:hover td { background: #d0dafd; color: #339; }");
                bodi.AppendLine(".editar {color: blue; cursor:pointer;}");
                bodi.AppendLine("#contenedorForm {margin-left: 45px; font-size:12px;}");
                bodi.AppendLine(".boton {   color: black; padding: 5px; margin: 10px;");
                bodi.AppendLine("background-color: #b9c9fe;");
                bodi.AppendLine("font-weight: bold; }");
                bodi.AppendLine("</style>");
                bodi.AppendLine("</head>");
                bodi.AppendLine("<body>");
                bodi.AppendLine(@"<img src = 'https://www.grupo-hesse.com/GaleriaDeArte/images/GaleriaDeArteCruzSunu.bmp' /><br /><br />");
                bodi.AppendLine("<div style = 'border-top:3px solid #22BCE5'>&nbsp;</div>");
                bodi.AppendLine("<span style = 'font-family:Arial;font-size:10pt; color:Blue;'>");
                bodi.AppendLine("Hola&nbsp;/Hello <b>{UserName}</b> ,<br /><br />");
                bodi.AppendLine("Gracias por enviarnos su pedido.<br />");
                bodi.AppendLine("Thanks for sending us your request. ");
                bodi.AppendLine("<br />");
                bodi.AppendLine("Se ha procesado una clave para la identificación del pedido que se detalla. ");
                bodi.AppendLine("There is a key been procesed to identify your order, ");
                bodi.AppendLine("as follow ;<br />");
                bodi.AppendLine("<br />");
                bodi.AppendLine("<span style = 'font-family:Arial;font-size:10pt; color:Blue;'>");
                bodi.AppendLine("<a style = 'color:#FFFF00; font-size:14px;     font-weight:bold;' href = '{Url}'>{url}</a></span><br />");
                bodi.AppendLine("<br />");
                bodi.AppendLine("El link contiene un codigo para poder identificar su pedido. ");
                bodi.AppendLine("podra utilizar una sola ves por razones de seguridad, luego del cual si decide ");
                bodi.AppendLine("<br />");
                bodi.AppendLine("The link holds the key request for further identification of your order. ");
                bodi.AppendLine("necesita y se le entregaran en la puerta de la dirección que nos indique. ");
                bodi.AppendLine("<br />");
                bodi.AppendLine("<br />");
                bodi.AppendLine("<br /> ");
                bodi.AppendLine("Any question regarding your request you can write us at ; ");
                bodi.AppendLine(@"<a href='mailto:GaleriaDeArte@grupo-hesse.com'>GaleriaDeArte@grupo-hesse.com</a>  ");
                bodi.AppendLine("<br />");
                bodi.AppendLine("<br />");
                bodi.AppendLine("<a style = 'color:#FFFF00; font-size:14px;     font-weight:bold;' href = '{Url}'>{Title}</a><br />");
                bodi.AppendLine("<br />");
                bodi.AppendLine("{Description}");
                bodi.AppendLine("<br />");
                bodi.AppendLine("<br />");
                bodi.AppendLine("{Tabla}");
                bodi.AppendLine("<br />");
                bodi.AppendLine("<br />");
                bodi.AppendLine("<br />");
                bodi.AppendLine("Gracias por su preferencia<br />");
                bodi.AppendLine("Galeria de Arte Cruz Sunu<br />");
                bodi.AppendLine("Celular 41714223<br />");
                bodi.AppendLine("14 avenida 8-60 Zona 8 de Mixco<br />");
                bodi.AppendLine("<br />");
                bodi.AppendLine("&nbsp;</span>");
                bodi.AppendLine("</body></html>");

            }
            catch (Exception es)
            {

                Helper.RegistrarEvento("error en getbody()"  + es.Message);
            }

            return bodi;

        }
        public static StringBuilder GetBodyDetalle()
        {
            StringBuilder bodi = new StringBuilder();
            try
            {
                bodi.AppendLine(@"<html xmlns='http://www.w3.org/1999/xhtml'> ");
                bodi.AppendLine("<head><title>Detalle de Pedido</title> ");
                bodi.AppendLine("<style type=text/css>");
                bodi.AppendLine("body {font-family: Arial, Helvetica, sans-serif; background-color: #63D13E;}");
                bodi.AppendLine("table { font-family: 'Lucida Sans Unicode', 'Lucida Grande', Sans-Serif; font-size: 12px; margin: 45px; width: 550px; ");
                bodi.AppendLine("text-align: center; border-collapse: collapse; } ");
                bodi.AppendLine("th { font-size: 13px; font-weight: normal; padding: 8px; background: #b9c9fe; border-top: 4px solid #aabcfe;");
                bodi.AppendLine("border-bottom: 1px solid #fff; color: #039; }");
                bodi.AppendLine("td { padding: 8px; background: #e8edff; border-bottom: 1px solid #fff; color: #669; border-top: 1px solid transparent; }");
                bodi.AppendLine("tr:hover td { background: #d0dafd; color: #339; }");
                bodi.AppendLine(".editar {color: blue; cursor:pointer;}");
                bodi.AppendLine("#contenedorForm {margin-left: 45px; font-size:12px;}");
                bodi.AppendLine(".boton {   color: black; padding: 5px; margin: 10px;");
                bodi.AppendLine("background-color: #b9c9fe;");
                bodi.AppendLine("font-weight: bold; }");
                bodi.AppendLine("</style>");
                bodi.AppendLine("</head>");
                bodi.AppendLine("<body>");
                bodi.AppendLine(@"<img src = 'https://www.grupo-hesse.com/images/FreshGarden.bmp' /><br /><br />");
                bodi.AppendLine("<div style = 'border-top:3px solid #22BCE5'>&nbsp;</div>");
                bodi.AppendLine("<span style = 'font-family:Arial;font-size:10pt; color:Blue;'>");
                bodi.AppendLine("Hola&nbsp; <b>{UserName}</b> ,<br /><br />");
                bodi.AppendLine("Detalle del Pedido ;<br />");
                bodi.AppendLine("<br />");
                bodi.AppendLine("<br />");
                bodi.AppendLine("{Tabla}");
                bodi.AppendLine("<br />");
                bodi.AppendLine("<br />");
                bodi.AppendLine("<br />");
                bodi.AppendLine("Galeria de Arte Cruz Sunu<br />");
                bodi.AppendLine("Celular 41714223<br />");
                bodi.AppendLine("14 avenida 8-60 Zona 8 de Mixco<br />");
                bodi.AppendLine("<br />");
                bodi.AppendLine("&nbsp;</span>");
                bodi.AppendLine("</body></html>");

            }
            catch (Exception es)
            {

                Helper.RegistrarEvento("error en getbody() " + es.Message);
            }

            return bodi;

        }
        public static StringBuilder GetBodyEntregas()
        {
            StringBuilder bodi = new StringBuilder();
            try
            {
                bodi.AppendLine(@"<html xmlns='http://www.w3.org/1999/xhtml'> ");
                bodi.AppendLine("<head><title>Pedidos Entregados</title> ");
                bodi.AppendLine("<style type=text/css>");
                bodi.AppendLine("body {font-family: Arial, Helvetica, sans-serif; background-color: #63D13E;}");
                bodi.AppendLine("table { font-family: 'Lucida Sans Unicode', 'Lucida Grande', Sans-Serif; font-size: 12px; margin: 45px; width: 550px; ");
                bodi.AppendLine("text-align: center; border-collapse: collapse; } ");
                bodi.AppendLine("th { font-size: 13px; font-weight: normal; padding: 8px; background: #b9c9fe; border-top: 4px solid #aabcfe;");
                bodi.AppendLine("border-bottom: 1px solid #fff; color: #039; }");
                bodi.AppendLine("td { padding: 8px; background: #e8edff; border-bottom: 1px solid #fff; color: #669; border-top: 1px solid transparent; }");
                bodi.AppendLine("tr:hover td { background: #d0dafd; color: #339; }");
                bodi.AppendLine(".editar {color: blue; cursor:pointer;}");
                bodi.AppendLine("#contenedorForm {margin-left: 45px; font-size:12px;}");
                bodi.AppendLine(".boton {   color: black; padding: 5px; margin: 10px;");
                bodi.AppendLine("background-color: #b9c9fe;");
                bodi.AppendLine("font-weight: bold; }");
                bodi.AppendLine("</style>");
                bodi.AppendLine("</head>");
                bodi.AppendLine("<body>");
                bodi.AppendLine(@"<img src = 'https://www.grupo-hesse.com/images/FreshGarden.bmp' /><br /><br />");
                bodi.AppendLine("<div style = 'border-top:3px solid #22BCE5'>&nbsp;</div>");
                bodi.AppendLine("<span style = 'font-family:Arial;font-size:10pt; color:Blue;'>");
                bodi.AppendLine("Hola&nbsp; <b>{UserName}</b> ,<br /><br />");
                bodi.AppendLine("Los pedidos entregados son los siguientes ;<br />");
                bodi.AppendLine("<br />");
                bodi.AppendLine("<br />");
                bodi.AppendLine("{Tabla}");
                bodi.AppendLine("<br />");
                bodi.AppendLine("<br />");
                bodi.AppendLine("<br />");
                bodi.AppendLine("Galeria de Arte<br />");
                bodi.AppendLine("Celular 41714223<br />");
                bodi.AppendLine("14 avenida 8-60 Zona 8 de Mixco<br />");
                bodi.AppendLine("<br />");
                bodi.AppendLine("&nbsp;</span>");
                bodi.AppendLine("</body></html>");

            }
            catch (Exception es)
            {

                Helper.RegistrarEvento("error en getbody() " +  es.Message);
            }

            return bodi;

        }
        public static StringBuilder GetBodyPedidos()
        {
            StringBuilder bodi = new StringBuilder();
            try
            {
                bodi.AppendLine(@"<html xmlns='http://www.w3.org/1999/xhtml'> ");
                bodi.AppendLine("<head><title>Pedidos Pendientes</title> ");
                bodi.AppendLine("<style type=text/css>");
                bodi.AppendLine("body {font-family: Arial, Helvetica, sans-serif; background-color: #63D13E;}");
                bodi.AppendLine("table { font-family: 'Lucida Sans Unicode', 'Lucida Grande', Sans-Serif; font-size: 12px; margin: 45px; width: 550px; ");
                bodi.AppendLine("text-align: center; border-collapse: collapse; } ");
                bodi.AppendLine("th { font-size: 13px; font-weight: normal; padding: 8px; background: #b9c9fe; border-top: 4px solid #aabcfe;");
                bodi.AppendLine("border-bottom: 1px solid #fff; color: #039; }");
                bodi.AppendLine("td { padding: 8px; background: #e8edff; border-bottom: 1px solid #fff; color: #669; border-top: 1px solid transparent; }");
                bodi.AppendLine("tr:hover td { background: #d0dafd; color: #339; }");
                bodi.AppendLine(".editar {color: blue; cursor:pointer;}");
                bodi.AppendLine("#contenedorForm {margin-left: 45px; font-size:12px;}");
                bodi.AppendLine(".boton {   color: black; padding: 5px; margin: 10px;");
                bodi.AppendLine("background-color: #b9c9fe;");
                bodi.AppendLine("font-weight: bold; }");
                bodi.AppendLine("</style>");
                bodi.AppendLine("</head>");
                bodi.AppendLine("<body>");
                bodi.AppendLine(@"<img src = 'https://www.grupo-hesse.com/images/FreshGarden.bmp' /><br /><br />");
                bodi.AppendLine("<div style = 'border-top:3px solid #22BCE5'>&nbsp;</div>");
                bodi.AppendLine("<span style = 'font-family:Arial;font-size:10pt; color:Blue;'>");
                bodi.AppendLine("Hola&nbsp; <b>{UserName}</b> ,<br /><br />");
                bodi.AppendLine("Los pedidos son los siguientes ;<br />");
                bodi.AppendLine("<br />");
                bodi.AppendLine("<br />");
                bodi.AppendLine("{Tabla}");
                bodi.AppendLine("<br />");
                bodi.AppendLine("<br />");
                bodi.AppendLine("<br />");
                bodi.AppendLine("Productos Fresh Garden<br />");
                bodi.AppendLine("Celular 41714223<br />");
                bodi.AppendLine("14 avenida 8-60 Zona 8 de Mixco<br />");
                bodi.AppendLine("<br />");
                bodi.AppendLine("&nbsp;</span>");
                bodi.AppendLine("</body></html>");

            }
            catch (Exception es)
            {

                Helper.RegistrarEvento("error en getbody() " + es.Message);
            }

            return bodi;

        }
        public static string LlenarMensaje(StringBuilder body, string userName, string title, string url, string description, string Tabla)
        {

            try
            {

                body = body.Replace("{UserName}", userName);
                body = body.Replace("{Title}", title);
                body = body.Replace("{Url}", url);
                body = body.Replace("{Description}", description);
                body = body.Replace("{Tabla}", Tabla);
                return body.ToString();

            }
            catch (Exception es)
            {

                Helper.RegistrarEvento("LlenarMensaje"  + es.Message);
                return "";
            }



        }
        public static void UpdateProducts(string _Update)
        {
            System.Data.SqlClient.SqlConnection cnn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["hesselocal"].ToString());
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(_Update, cnn);
            cmd.CommandType = CommandType.Text;
            System.Data.SqlClient.SqlDataAdapter adpt = new System.Data.SqlClient.SqlDataAdapter(cmd);
            System.Data.DataTable content = new System.Data.DataTable();

            cnn.Open();
            cmd.ExecuteNonQuery();
            cnn.Close();
        }

        public static bool ValidaUsuario(string Correo, int nivel)
        {
            DataTable content = new DataTable();
            bool verifica = false;
            System.Data.SqlClient.SqlConnection cnn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["hesselocal"].ToString());
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("Select COUNT(*) from MaestroEmpresas where Correo = '" + Correo.Replace("'", "´").Replace("*", "").Replace(@"/", "") + "'"  , cnn);
            cmd.CommandType = CommandType.Text;
            System.Data.SqlClient.SqlDataAdapter adpt = new System.Data.SqlClient.SqlDataAdapter(cmd);

            cnn.Open();
            adpt.Fill(content);

            foreach (DataRow w in content.Rows)
            {
                if (w[0].ToString() != "0")
                { verifica = true; }
            }
            cnn.Close();
            return verifica;

        }

        public static bool EnviarAviso(string titulo, string mensaje, string Empresa, string codigo)
        {
            DataTable content = new DataTable();
            bool verifica = false;
            System.Data.SqlClient.SqlConnection cnn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["hesselocal"].ToString());
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("Select  Replace(Correo,Palabra,'')  from MaestroEmpresas where isnull(Codigo,'') = '" + codigo + "' and Empresa = '" + Empresa.Replace("'", "´").Replace("*", "").Replace(@"/", "").Trim() + "'", cnn);
            cmd.CommandType = CommandType.Text;
            System.Data.SqlClient.SqlDataAdapter adpt = new System.Data.SqlClient.SqlDataAdapter(cmd);
            cnn.Open();
            adpt.Fill(content);
  
            foreach (DataRow w in content.Rows)
            {
                EnviandoCorreo.AvisoDeIntentos(w[0].ToString(),titulo, mensaje);
            }
            cnn.Close();
            return verifica;

        }
        public static bool EnviarAvisoDeCambios(string titulo, string mensaje, string Empresa)
        {
            DataTable content = new DataTable();
            bool verifica = false;
            System.Data.SqlClient.SqlConnection cnn = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["hesselocal"].ToString());
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("Select Replace(Correo,Palabra,'') from MaestroEmpresas where Empresa = '" + Empresa.Replace("'", "´").Replace("*", "").Replace(@"/", "").Trim() + "'", cnn);
            cmd.CommandType = CommandType.Text;
            System.Data.SqlClient.SqlDataAdapter adpt = new System.Data.SqlClient.SqlDataAdapter(cmd);
            cnn.Open();
            adpt.Fill(content);
 
            foreach (DataRow w in content.Rows)
            {
                EnviandoCorreo.AvisoDeIntentos( w[0].ToString(), titulo, mensaje);
            }
            cnn.Close();
            return verifica;

        }

        public static List<Impresion> EmitirFacturaGaleriaDeArte(string CodigoCompra)
        {
            List<Impresion> content = new List<Impresion>();
            Impresion agrupar = new Impresion();
            DataTable data = new DataTable();
            data = Proceso.RegresaTabla("select  P.Producto,P.Presentacion, P.idProducto,P.Cantidad, P.Precio, P.Total, P.Fecha as FechaPedido,P.CodigoPedido, P.SAT_factura, P.SAT_cae,D.Nit, D.RazonSocial,D.Direccion, D.Municipio, D.Departamento, D.CodigoDePais,D.InformacionDeRegimenIsr, D.TipoDeCambioUsd, D.Impuesto, (Select SUM(Total) from PedidosGaleriaDeArte where CodigoPedido = '" + CodigoCompra + "' ) as TotalFactura ,D.Resolucion, P.Cliente, P.DireccionCliente, P.NitCliente , P.FechaConfirmado, D.Resolucion from PedidosGaleriaDeArte P , DatosEmpresas D  where D.Nit = '86203525' and P.CodigoPedido = '" + CodigoCompra +"'");
            foreach (DataRow rw in data.Rows)
            {
                agrupar = new Impresion();
                agrupar.Producto = rw["Producto"].ToString();
                agrupar.Presentacion = rw["Presentacion"].ToString();
                agrupar.idProducto = rw["idProducto"].ToString();
                agrupar.Cantidad = rw["Cantidad"].ToString();
                agrupar.Precio = rw["Precio"].ToString();
                agrupar.Total = rw["Total"].ToString();
                agrupar.FechaPedido = rw["FechaPedido"].ToString();
                agrupar.CodigoPedido = rw["CodigoPedido"].ToString();
                agrupar.SAT_factura = rw["SAT_factura"].ToString();
                agrupar.SAT_cae = rw["SAT_cae"].ToString();
                agrupar.Nit = rw["Nit"].ToString();
                agrupar.RazonSocial = rw["RazonSocial"].ToString();
                agrupar.Direccion = rw["Direccion"].ToString();
                agrupar.Municipio = rw["Municipio"].ToString();
                agrupar.Departamento = rw["Departamento"].ToString();
                agrupar.CodigoDePais = rw["CodigoDePais"].ToString();
                agrupar.InformacionDeRegimenIsr = rw["InformacionDeRegimenIsr"].ToString();
                agrupar.TipoDeCambioUsd = rw["TipoDeCambioUsd"].ToString();
                agrupar.Impuesto = rw["Impuesto"].ToString();
                agrupar.TotalFactura = rw["TotalFactura"].ToString();
                agrupar.Resolucion = rw["Resolucion"].ToString();
                agrupar.FechaFactura = rw["FechaConfirmado"].ToString().Substring(0,10);
                agrupar.DireccionCliente = rw["DireccionCliente"].ToString();
                agrupar.NitCliente = rw["NitCliente"].ToString();
                agrupar.NombreCliente = rw["Cliente"].ToString();
                agrupar.MontoEnLetras = Proceso.RegresaCadena_1_Resultado("select dbo.CantidadConLetra(" + rw["TotalFactura"].ToString().Replace(",", ".") + ")");
                agrupar.Resolucion = rw["Resolucion"].ToString();
            content.Add(agrupar);
            }

            return content;
        }

    }

    public class Impresion
    {

        public Impresion()
        {
        }
 
        private string _Producto = "";
        public string Producto
        {
            get { return _Producto; }
            set { this._Producto = value; }
        }
        private string _Presentacion = "";
        public string Presentacion
        {
            get { return _Presentacion; }
            set { this._Presentacion = value; }
        }
        private string _idProducto = "";
        public string idProducto
        {
            get { return _idProducto; }
            set { this._idProducto = value; }
        }

        private string _Cantidad = "";
        public string Cantidad
        {
            get { return _Cantidad; }
            set { this._Cantidad = value; }
        }

        private string _Precio = "";
        public string Precio
        {
            get { return _Precio; }
            set { this._Precio = value; }
        }

        private string _Total = "";
        public string Total
        {
            get { return _Total; }
            set { this._Total = value; }
        }

        private string _FechaPedido = "";
        public string FechaPedido
        {
            get { return _FechaPedido; }
            set { this._FechaPedido = value; }
        }

        private string _CodigoPedido = "";
        public string CodigoPedido
        {
            get { return _CodigoPedido; }
            set { this._CodigoPedido = value; }
        }

        private string _SAT_factura = "";
        public string SAT_factura
        {
            get { return _SAT_factura; }
            set { this._SAT_factura = value; }
        }

        private string _SAT_cae = "";
        public string SAT_cae
        {
            get { return _SAT_cae; }
            set { this._SAT_cae = value; }
        }

        private string _Nit = "";
        public string Nit
        {
            get { return _Nit; }
            set { this._Nit = value; }
        }

        private string _RazonSocial = "";
        public string RazonSocial
        {
            get { return _RazonSocial; }
            set { this._RazonSocial = value; }
        }

        private string _Direccion = "";
        public string Direccion
        {
            get { return _Direccion; }
            set { this._Direccion = value; }
        }

        private string _Municipio = "";
        public string Municipio
        {
            get { return _Municipio; }
            set { this._Municipio = value; }
        }

        private string _Departamento = "";
        public string Departamento
        {
            get { return _Departamento; }
            set { this._Departamento = value; }
        }

        private string _CodigoDePais = "";
        public string CodigoDePais
        {
            get { return _CodigoDePais; }
            set { this._CodigoDePais = value; }
        }
        private string _InformacionDeRegimenIsr = "";
        public string InformacionDeRegimenIsr
        {
            get { return _InformacionDeRegimenIsr; }
            set { this._InformacionDeRegimenIsr = value; }
        }
        private string _TipoDeCambioUsd = "";
        public string TipoDeCambioUsd
        {
            get { return _TipoDeCambioUsd; }
            set { this._TipoDeCambioUsd = value; }
        }
        private string _Impuesto = "";
        public string Impuesto
        {
            get { return _Impuesto; }
            set { this._Impuesto = value; }
        }
    private string _TotalFactura = "";
    public string TotalFactura
    {
        get { return _TotalFactura; }
        set { this._TotalFactura = value; }
    }
    private string _MontoEnLetras = "";
    public string MontoEnLetras
    {
        get { return _MontoEnLetras; }
        set { this._MontoEnLetras = value; }
    }
    private string _FechaFactura = "";
    public string FechaFactura
    {
        get { return _FechaFactura; }
        set { this._FechaFactura = value; }
    }
    private string _NombreCliente = "";
    public string NombreCliente
    {
        get { return _NombreCliente; }
        set { this._NombreCliente = value; }
    }
    private string _DireccionCliente = "";
    public string DireccionCliente
    {
        get { return _DireccionCliente; }
        set { this._DireccionCliente = value; }
    }
    private string _NitCliente = "";
    public string NitCliente
    {
        get { return _NitCliente; }
        set { this._NitCliente = value; }
    }
    private string _Resolucion = "";
    public string Resolucion
    {
        get { return _Resolucion; }
        set { this._Resolucion = value; }
    }

}



