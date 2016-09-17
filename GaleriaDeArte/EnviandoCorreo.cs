using System;
using System.Collections.Generic;
using System.Threading;
using System.Net.Mail;
 

 
    public class EnviandoCorreo
    {
        public void Compras(List<string> lista)
        {
            try
            {

                string tabla = "";
                tabla = Proceso.LlenaTabla(lista[1], lista[3].Trim());
                string url = "https://grupo-hesse.com/FormulariosGaleriaDeArte/Pagar.aspx?codigo=" + lista[2].Trim() + "&correo=" + lista[0].Trim();
                string to = lista[0];
                string from = "Mensaje@grupo-hesse.com";
                string body = Proceso.LlenarMensaje(Proceso.GetBodyCompra(), lista[0], lista[1], url, "", tabla);
                MailMessage message = new MailMessage(from, to, lista[1], body);
                message.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("moon.studiocoast.com.au");
                client.Port = 26;
                System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("Mensaje@grupo-hesse.com ", "HesseGo2016");
                client.Credentials = credentials;

                client.Timeout = 10000;
                try
                {
                    client.Send(message);

                }
                catch (Exception esx)
                {

                    Helper.RegistrarEvento("No se pudo enviar" + " " + lista[0] + esx.Message);

                }
            }
            catch (Exception es)
            {
                Helper.RegistrarEvento("No se pudo enviar" + " " + lista[0] + es.Message);

            }

        }
        public void Detalle(List<string> lista)
        {
            try
            {

                string tabla = "";
                tabla = Proceso.LlenaTabla(lista[1], lista[3].Trim());
                // string url = "https://grupo-hesse.com/FormulariosGaleriaDeArte/Pagar.aspx?codigo=" + lista[2].Trim() + "&correo=" + lista[0].Trim();
                string to = lista[0];
                string from = "Mensaje@grupo-hesse.com";
                string body = Proceso.LlenarMensaje(Proceso.GetBodyDetalle(), lista[0], lista[1], "", "", tabla);
                MailMessage message = new MailMessage(from, to, lista[1], body);
                message.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("moon.studiocoast.com.au");
                client.Port = 26;
                System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("Mensaje@grupo-hesse.com ", "HesseGo2016");
                client.Credentials = credentials;

                client.Timeout = 10000;
                try
                {
                    client.Send(message);

                }
                catch (Exception esx)
                {

                    Helper.RegistrarEvento("No se pudo enviar " + lista[0] + esx.Message);

                }
            }
            catch (Exception es)
            {
                Helper.RegistrarEvento("No se pudo enviar" + " " + lista[0] + es.Message);

            }

        }
        public void Entregas(List<string> lista)
        {
            try
            {

                string tabla = "";
                tabla = Proceso.LlenaTabla(lista[1], lista[3].Trim());
                // string url = "https://grupo-hesse.com/FormulariosGaleriaDeArte/Pagar.aspx?codigo=" + lista[2].Trim() + "&correo=" + lista[0].Trim();
                string to = lista[0];
                string from = "Mensaje@grupo-hesse.com";
                string body = Proceso.LlenarMensaje(Proceso.GetBodyEntregas(), lista[0], lista[1], "", "", tabla);
                MailMessage message = new MailMessage(from, to, lista[1], body);
                message.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("moon.studiocoast.com.au");
                client.Port = 26;
                System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("Mensaje@grupo-hesse.com ", "HesseGo2016");
                client.Credentials = credentials;

                client.Timeout = 10000;
                try
                {
                    client.Send(message);

                }
                catch (Exception esx)
                {

                    Helper.RegistrarEvento("No se pudo enviar" + " " + lista[0] + esx.Message);

                }
            }
            catch (Exception es)
            {
                Helper.RegistrarEvento("No se pudo enviar" + " " + lista[0] + es.Message);

            }

        }
        public void Pedidos(List<string> lista)
        {
            try
            {

                string tabla = "";
                tabla = Proceso.LlenaTabla(lista[1], lista[3].Trim());
                // string url = "https://grupo-hesse.com/FormulariosGaleriaDeArte/Pagar.aspx?codigo=" + lista[2].Trim() + "&correo=" + lista[0].Trim();
                string to = lista[0];
                string from = "Mensaje@grupo-hesse.com";
                string body = Proceso.LlenarMensaje(Proceso.GetBodyPedidos(), lista[0], lista[1], "", "", tabla);
                MailMessage message = new MailMessage(from, to, lista[1], body);
                message.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("moon.studiocoast.com.au");
                client.Port = 26;
                System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("Mensaje@grupo-hesse.com ", "HesseGo2016");
                client.Credentials = credentials;

                client.Timeout = 10000;
                try
                {
                    client.Send(message);

                }
                catch (Exception esx)
                {

                    Helper.RegistrarEvento("No se pudo enviar" + " " + lista[0] + esx.Message);

                }
            }
            catch (Exception es)
            {
                Helper.RegistrarEvento("No se pudo enviar" + " " + lista[0] + es.Message);

            }

        }
        public void Avisos(  string para,  string _mensaje, string _titulo)
        {
            try
            {
              
                string to = para;
                string from = "Mensaje@grupo-hesse.com";
   

                System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
                mail.To.Add(para);
                mail.From = new MailAddress(from, _titulo, System.Text.Encoding.UTF8);
                mail.Subject = _titulo;
                mail.SubjectEncoding = System.Text.Encoding.UTF8;
                mail.Body = _mensaje;
                mail.BodyEncoding = System.Text.Encoding.UTF8;
                mail.IsBodyHtml = false;
                mail.Priority = MailPriority.High;
                //mail.Attachments.Add(data);
                //mail.Attachments.Add(data1);

                SmtpClient client = new SmtpClient();
                //Add the Creddentials- use your own email id and password

                client.Credentials = new System.Net.NetworkCredential("Mensaje@grupo-hesse.com ", "HesseGo2016");

                client.Port = 26; // Gmail works on this port
                client.Host = "moon.studiocoast.com.au";
                client.EnableSsl = false; //Gmail works on Server Secured Layer


                try
                {
                    client.Send(mail);

                }
                catch (Exception esx)
                {
                    Helper.RegistrarEvento("No se pudo enviar Avisos en Enviando Correo: " + esx.Message);
                }
            }
            catch (Exception es)
            {
                Helper.RegistrarEvento("No se pudo enviar Avisos en Enviando Correo: " + es.Message);

            }

        }

        public static void EnviarCorreo(string _to, string subject, string codigo, string sql)
        {
            EnviandoCorreo cr = new EnviandoCorreo();
            List<string> arc = new List<string>() { _to, subject, codigo, sql };


            if (codigo == "Pedido")
            {
                Thread enviandoCorreo = new Thread(delegate ()
                {
                    cr.Pedidos(arc);
                });
                enviandoCorreo.Start();
            }
            if (codigo == "Entregas")
            {
                Thread enviandoCorreo = new Thread(delegate ()
                {
                    cr.Entregas(arc);
                });
                enviandoCorreo.Start();
            }
            if (codigo == "Detalle")
            {
                Thread enviandoCorreo = new Thread(delegate ()
                {
                    cr.Detalle(arc);
                });
                enviandoCorreo.Start();
            }
            if (codigo != "Pedido" && codigo != "Entregas" && codigo != "Detalle")
            {
                Thread enviandoCorreo = new Thread(delegate ()
                {
                    cr.Compras(arc);
                });
                enviandoCorreo.Start();
            }
            // 4. Se ejecuta el hilo:



        }

        public static void AvisoDeIntentos(string para, string titulo, string mensaje)
        {
            try
            {
                EnviandoCorreo cr = new EnviandoCorreo();
 
                Thread enviandoCorreo = new Thread(delegate ()
                {
                    cr.Avisos(para,mensaje,titulo);
                });
                enviandoCorreo.Start();

            }
            catch (Exception es)
            {
                Helper.RegistrarEvento("No se pudo enviar" + " " + es.Message);

            }

        }

    }
 
