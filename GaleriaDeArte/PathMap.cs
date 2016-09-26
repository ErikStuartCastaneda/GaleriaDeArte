using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

 
    public class PathMap
    {
    public static string MapPath()
    {
        string path = "";

        return path;
    }
    public static string ServerPath()
    {
        string path = "";
        //   path = HttpContext.Current.Server.MapPath("/GaleriaDeArte/GaleriaDeArte/");
          path = HttpContext.Current.Server.MapPath("/GaleriaDeArte/");
        return path;
    }
    public static string ImagePath()
    {
        string path = "";
      //  path = "http://localhost:8080/GaleriaDeArte/Images";
         path = "https://www.grupo-hesse.com/Images";
        return path;
    }
    public static string HostNameImagesPath()
    {
        string path = "";
      //  path = "http://localhost:8080/GaleriaDeArte/GaleriaDeArte/GaleriaDeArte";
        path = "https://www.grupo-hesse.com/GaleriaDeArte/GaleriaDeArte";
        return path;
    }
    public static string ReportPath()
    {
        string path = "";
      //  path = HttpContext.Current.Server.MapPath("/GaleriaDeArte/") + @"ReportesGaleriaDeArte\FacturaGaleriaDeArte.rdlc";
         path =HttpContext.Current.Server.MapPath("/ReportesGaleriaDeArte/") + @"FacturaGaleriaDeArte.rdlc";
        return path;
    }
   
       public static string Loader()
    {
        string path = "";
      //  path = "http://localhost:8080/GaleriaDeArte/GaleriaDeArte/loader.gif";
          path = "https://www.grupo-hesse.com/GaleriaDeArte/loader.gif";
        return path;
    }

}
 