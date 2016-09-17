using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace GaleriaDeArte.FormulariosGaleriaDeArte
{
    public partial class Validar : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            string v = Request.QueryString["adonde"];
            if (v != null)
            {
                this.HiddenField1.Value = v;
            }
 
            string ver = v;
 
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (this.txtCorreo.Text.ToString() == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", "Alert('Dejo en blanco su correo.');", true);
                return;
            }

            if (ValidarTercerIntento() == true)
            { return; }

            string email = this.txtCorreo.Text;
            Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
            Match match = regex.Match(email);
            if (match.Success)
            {
                if (this.txtCorreo.Text != "")
                {
                    if (Proceso.ValidaUsuario(this.txtCorreo.Text.ToString().Trim(), 1))
                    {
                        string adonde = Request.QueryString["adonde"];
                        if (adonde == "")
                        { adonde = this.HiddenField1.Value.ToString(); }
                        try
                        {
                            if (adonde == "Precios")
                                Proceso.EnviarAvisoDeCambios("Aviso de Ingreso a Cambio de Precios","El usuario " + this.txtCorreo.Text.ToString() + " esta ingresando al cambio de precios. ", "GaleriaDeArte");
                        }
                        catch (Exception)
                        {

                            Helper.RegistrarEvento("Error al enviar el correo de cambio de precios usuario : " + this.txtCorreo.Text.ToString());
                        }
                        Session["Autorizado"] = "Autorizado";
                        Response.Redirect(adonde + ".aspx");
                    }
                    else
                    {
                        Session["Autorizado"] = "";
                        this.lblMsg.Text = "Ingrese Password";
                        VerificarIntentos();
                    }
                }
            }
            else
            {
                this.lblMsg.Text = "Ingrese Password";
                VerificarIntentos();
            }         

        }

        private bool ValidarTercerIntento()
        {
            try
            {
                HttpCookie cookie = Request.Cookies.Get("Intentos");
                string veces = cookie.Value.ToString();
                string codigo = "";
                if (veces == "3")
                {
                    this.txtCorreo.ReadOnly = true;
                    this.lblMsg.Text = "Ingreso no Autorizado, intentos sobrepasados.";
                    if (txtCorreo.Text == "")
                        txtCorreo.Text = "Sin@Correo";

                    codigo = Proceso.CodigoPedido(txtCorreo.Text);

                    string adonde = this.HiddenField1.Value;
                    string info = this.HiddenField2.Value;
                    if (info == "")
                    {
                        string VisitorsIPAddr = string.Empty;
                        if (HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"] != null)
                        {
                            info = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"].ToString();
                        }
                        else if (HttpContext.Current.Request.UserHostAddress.Length != 0)
                        {
                            info = HttpContext.Current.Request.UserHostAddress;
                        }
                        if (info == "")
                        {
                            info = "Ip protegida por usuario";
                        }

                        try
                        {
                            codigo = codigo.Substring(0, codigo.IndexOf("=>"));
                            Proceso.BloquearCuenta("GaleriaDeArte", codigo);
                            Proceso.EnviarAviso("Password mal ingresado cuenta bloqueada.", "El usuario : " + this.txtCorreo.Text.ToString() + " a intentado hasta tres veces su ingreso a " + adonde + ". En esta dirección ip : " + info + ". Haga click en el link para desbloquear : " + "https://www.grupo-hesse.com/FormulariosGaleriaDeArte/Desbloqueo.aspx?codigo=" + codigo, "GaleriaDeArte", codigo);
                        }
                        catch (Exception)
                        {

                            Helper.RegistrarEvento("El usuario : " + this.txtCorreo.Text.ToString() + " a intentado hasta tres veces su ingreso. GaleriaDeArte");
                        }

                        this.txtCorreo.Text = "";

                        Response.Cookies.Add(cookie);

                        return true;
                    }

                }
            }
            catch (Exception)
            {
                Helper.RegistrarEvento("Error validando el 3 intento guardndo y enviando correos");
            }
            return false;
        }
        private bool VerificarIntentos()
        {

            try
            {
                HttpCookie cookie = Request.Cookies.Get("Intentos");
                string veces = cookie.Value.ToString();

                if (veces == "3")
                {
                    this.txtCorreo.ReadOnly = true;
                    this.lblMsg.Text = "Ingreso no Autorizado, intentos sobrepasados.";
                    this.txtCorreo.Text = "";
                    Response.Cookies.Add(cookie);
                    return false;
                }

                if (cookie.Value == "1")
                {
                    cookie.Value = "2";
                    this.lblMsg.Text = "2 Intento Fallido, Revise Correo";
                    this.txtCorreo.Text = "";
                    Response.Cookies.Add(cookie);
                    return false;
                }

                if (cookie.Value == "2")
                {
                    cookie.Value = "3";
                    this.lblMsg.Text = "3 Intento Fallido, Revise Correo";
                    this.txtCorreo.Text = "";
                    Response.Cookies.Add(cookie);
                    return false;
                }

            }
            catch (Exception)
            {

                HttpCookie cookie = new HttpCookie("Intentos");
                // Set value of cookie to current date time.
                cookie.Value = "1";
                this.lblMsg.Text = "1 Intento Fallido";
                this.txtCorreo.Text = "";
                ClientScript.RegisterStartupScript(this.GetType(), "Trace", "<script type='text/javascript'>alert('Cuenta Desbloqueada')<script>", true);

                // Set cookie to expire in 10 minutes.
                cookie.Expires = DateTime.Now.AddMinutes(180d);
                Response.Cookies.Add(cookie);
                return false;
            }

            return true;
        }




    }

}