<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainGA.master"  CodeBehind="Validar.aspx.cs" Inherits="GaleriaDeArte.FormulariosGaleriaDeArte.Validar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <script type="text/javascript" src="~/js/domWeb.js"></script>
       <script type="text/javascript" src="~/js/jquery.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <div style=" text-align:center; left:auto; right:auto;" >

            <p><font style="font-size:62px; height:75px; width:100%;" >Ingrese su Correo</font></p>
    <p>
                                                      
        <asp:TextBox ID="txtCorreo" runat="server" Font-Size="62px" Height="75px" 
            Width="100%"></asp:TextBox>
                                                      
    </p>
        &nbsp;<p>
        <asp:Button ID="btnPago" runat="server" onclick="Button1_Click" style="font-size:62px; height:75px; width:100%;"
            Text="Procesar" Width="111px" />
    </p>
    </div>

    <asp:Label ID="lblMsg" runat="server" Font-Size="62px" Height="75px" 
            Width="100%" ForeColor="Red" Text="."></asp:Label>

    <asp:HiddenField ID="HiddenField1" runat="server" />
    <asp:HiddenField ID="HiddenField2" runat="server" />

 
</asp:Content>
