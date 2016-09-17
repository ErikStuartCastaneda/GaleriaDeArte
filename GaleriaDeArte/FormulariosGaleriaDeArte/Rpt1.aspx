<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rpt1.aspx.cs" Inherits="Cotizador.Rpt1" %>
 
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Cotización El Roble</title>
    <style type="text/css">
        .centro {
            display: inline-block;
        }
    </style>
</head>
<body style="width: 849px">
    <form id="form1" runat="server">
        <div style="text-align: center; width: 100%; height: 100%">


            
             <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="EmitirFacturaGaleriaDeArte" TypeName="Proceso">
                <SelectParameters>
                    <asp:SessionParameter Name="CodigoCompra" SessionField="CodigoCompra" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>

            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
             <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="713px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="828px">
                <localreport reportpath="ReportesGaleriaDeArte\FacturaGaleriaDeArte.rdlc">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="FacturaGaleriaDeArte" />
                    </DataSources>
                </localreport>
            </rsweb:ReportViewer>


        </div>
    </form>
</body>
<script type="text/javascript">

    window.onload = function () {

        $('td#oReportCell', window.parent.frames[0].frames[1].document).next().remove();
        $('div#oReportDiv table', window.parent.frames[0].frames[1].document).attr("align", "center");
    };

</script>
</html>
