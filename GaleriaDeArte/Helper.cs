using System;
using System.IO;

 
    public static class Helper
    {
        public static void RegistrarEvento(string EventoInfo)
        {
            string YearFolder = System.DateTime.Now.Year.ToString();
            string LogFolderDir = Path.Combine(System.Web.Hosting.HostingEnvironment.ApplicationPhysicalPath + "/Logs", YearFolder);
            string LogFileName = Path.Combine(LogFolderDir, System.DateTime.Now.ToString("yyyyMMdd") + ".txt");
            FileStream fs = default(FileStream);
            StreamWriter sw = default(StreamWriter);

            try
            {
                if (!Directory.Exists(LogFolderDir))
                {
                    Directory.CreateDirectory(LogFolderDir);
                }

                if (!File.Exists(LogFileName))
                {
                    fs = File.Create(LogFileName);
                }
                else
                {
                    fs = new FileStream(LogFileName, FileMode.Append, FileAccess.Write);
                }

                sw = new StreamWriter(fs);

                sw.WriteLine("[{0}] - {1}", System.DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"), EventoInfo);

                sw.Close();
                fs.Close();

            }
            catch (Exception ex)
            {
            }
        }
    }
 