﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Text;

 
    public class Correo
    {

        public static void EnviarCorreoConAtachments(string _to, StringBuilder mensaje, string subject, string archivo, string titulo )
        {
           

            Attachment data = new Attachment(archivo);

           string from = "Mensaje@grupo-hesse.com"; 
            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            mail.To.Add(_to);
            mail.From = new MailAddress(from, titulo, System.Text.Encoding.UTF8);
            mail.Subject = titulo;
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = mensaje.ToString();
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;
            mail.Attachments.Add(data);
            SmtpClient client = new SmtpClient();
            client.Credentials = new System.Net.NetworkCredential("Mensaje@grupo-hesse.com", "HesseGo2016");
            client.Port = 26;  
            client.Host = "moon.studiocoast.com.au";
            client.EnableSsl = false; 

            try
            {
                client.Send(mail);
            }
            catch (Exception ex)
            {
                Helper.RegistrarEvento("Error de correo EnviarCorreoConAtachments : "+ archivo + " err : " + ex.Message);
                
            }  
        }
        public void EnviarCorreoSinAtachments(string _to, StringBuilder mensaje, string subject, int tipo, string archivo, string titulo, string Paso1, string Paso2, string Paso3, string Link1, string Link2, string Link3)
        {
 
            string from = "Mensaje@grupo-hesse.com";
            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            mail.To.Add(_to);
            mail.From = new MailAddress(from, titulo, System.Text.Encoding.UTF8);
            mail.Subject = titulo;
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = LlenarMensaje(subject, mensaje.ToString(), Paso1, Paso2, Paso3, Link1, Link2, Link3);
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;
            //mail.Attachments.Add(data);
            //mail.Attachments.Add(data1);

            SmtpClient client = new SmtpClient();
            //Add the Creddentials- use your own email id and password

            client.Credentials = new System.Net.NetworkCredential("Mensaje@grupo-hesse.com", "HesseGo2016");

            client.Port = 26; // Gmail works on this port
            client.Host = "moon.studiocoast.com.au";
            client.EnableSsl = false; //Gmail works on Server Secured Layer

            try
            {
                client.Send(mail);
            }
            catch (Exception ex)
            {
                Helper.RegistrarEvento("Error de correo : " + ex.Message);

            } // end try 
        }
        public static string LlenarMensaje(string userName, string description, string Paso1, string Paso2, string Paso3, string Link1, string Link2, string Link3)
         {
             StringBuilder body;
             try
             {
                // description = description.Replace("{Link1}", _link);
                 body = GetBodyPedidos();
                 body = body.Replace("{UserName}", userName);
                 body = body.Replace("{Descripcion}", description);
                 return body.Replace(@"\r\n", System.Environment.NewLine).ToString();

             }
             catch (Exception es)
             {

                 Helper.RegistrarEvento("Error de correo : " + es.Message);
                 return "";
             }

         }
         private static StringBuilder GetBodyPedidos()
         {
             StringBuilder bodi = new StringBuilder();
             try
             {
                 bodi.AppendLine(@"<html xmlns='http://www.w3.org/1999/xhtml'> ");
                 bodi.AppendLine("<head><title>Cotizador</title> ");
                 bodi.AppendLine("<style type=text/css>");
                 //bodi.AppendLine("body {font-family: Arial, Helvetica,sans-serif; background-color: #63D13E;}");
                 //bodi.AppendLine("table { font-family: 'Lucida Sans Unicode', 'Lucida Grande', Sans-Serif; font-size: 12px; margin: 45px;width: 550px; ");
                 //bodi.AppendLine("text-align: left; border-collapse: collapse; } ");
                 //bodi.AppendLine("th { font-size: 13px; font-weight: normal; padding: 8px; background: #b9c9fe; border-top: 4px solid #aabcfe;");
                 //bodi.AppendLine("border-bottom: 1px solid #fff; color:#039; }");
                 //bodi.AppendLine("td { padding: 8px; background: #e8edff; border-bottom: 1px solid #fff; color: #669; border-top: 1px solid transparent; }");
                 //bodi.AppendLine("tr:hover td { background: #d0dafd;color: #339; }");
                 //bodi.AppendLine(".editar {color: black; cursor:pointer;}");
                 //bodi.AppendLine("#contenedorForm {margin-left: 45px; font-size:12px;}");
                 //bodi.AppendLine(".boton {   color: black; padding: 5px; margin: 10px;");
                 //bodi.AppendLine("background-color: #b9c9fe;");
                 //bodi.AppendLine("font-weight: bold; }");
                 bodi.AppendLine(".tut {");
                 bodi.AppendLine("text-align:center;");
                 bodi.AppendLine("}");
                 bodi.AppendLine(".tat {");
                 bodi.AppendLine("width:35px;");
                 bodi.AppendLine("}");
                 bodi.AppendLine("</style>");
                 bodi.AppendLine("</head>");
                 bodi.AppendLine("<body>");
                 //bodi.AppendLine(@"<img src = '#' /><br /><br />");
                 bodi.AppendLine("<div style = 'border-top:3px solid #22BCE5'> </div>");
                 bodi.AppendLine("<br />");
                 bodi.AppendLine("<span style ='font-family:Arial;font-size:10pt; color:Black;'>");
                 bodi.AppendLine("Estimado/a <b>{UserName}</b>");
                 bodi.AppendLine("<br />");
                 bodi.AppendLine("{Descripcion}");
                 bodi.AppendLine("<br />");
                 bodi.AppendLine("<br />");
                 bodi.AppendLine(" </span>");
                 bodi.AppendLine("</body></html>");

             }
             catch (Exception es)
             {
                 Helper.RegistrarEvento("Error de correo : " + es.Message);
             }

             return bodi;


         }


     }


