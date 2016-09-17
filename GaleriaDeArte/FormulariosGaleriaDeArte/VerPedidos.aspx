<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MainGA.master" CodeBehind="VerPedidos.aspx.cs" Inherits="GaleriaDeArte.FormulariosGaleriaDeArte.VerPedidos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <div style=" text-align:center; left:auto; right:auto;" > 
            <p><font style="font-size:62px; height:75px; width:100%;" >&nbsp;Ver Pedidos 
                Realizados </font></p>
    <p>
                                                               &nbsp;</p>
        <p><font style="font-size:62px; height:75px; width:100%;" >Ingrese su Correo Electronico 
            / Your E mail</font></p>
    <p>
                                                               <asp:TextBox ID="txtPedidos" runat="server" Font-Size="62px" 
            Height="75px" Width="100%"></asp:TextBox>
    </p>
       <p>
        <asp:Button ID="btnPago" runat="server" onclick="Button1_Click" style="font-size:62px; height:75px; width:100%;"
            Text="Enviar Informacion" Width="111px" />
    </p>
    </div>
       <div style="left:auto; right:auto; width:100%;"><asp:Label ID="lblMsg" style="font-size:62px; height:75px; width:100%" ForeColor="Red" Font-Size="62px"  Height="75px" Width="100%" runat="server" Text="."></asp:Label></div>
</asp:Content>
