<%@ Page Title="" Language="C#" MasterPageFile="~/MainGA.master" AutoEventWireup="true" Inherits="GaleriaDeArte.Pagar" CodeBehind="Pagar.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="text-align: center; left: auto; right: auto; font-family: Candara;">
        <asp:Image ID="Image1" runat="server"
            ImageUrl="http://grupo-hesse.com/images/TarjetasDeCredito.png" />
        <p>
            <font style="font-size: 62px; height: 75px; width: 100%; font-family: Candara;">Ingrese el Codigo de Pedido&nbsp; 
                / Request Code Number</font>
        </p>
        <p>

            <asp:TextBox ID="txtCodigoPedido" runat="server" Font-Size="62px" Height="75px"
                Width="100%" ReadOnly="True"></asp:TextBox>

        </p>
        <p>
            <font style="font-size: 62px; height: 75px; width: 100%; font-family: Candara;">Ingrese su Correo Electronico 
            / Your E mail</font>
        </p>
        <p>
            <asp:TextBox ID="txtCorreo" runat="server" Font-Size="62px" Height="75px"
                Width="100%" ReadOnly="True"></asp:TextBox>
        </p>
        <p>
            <font style="font-size: 62px; height: 75px; width: 100%; font-family: Candara;">Ingrese su Nit 
            / Nit if Applies</font>
        </p>
        <p>
            <asp:TextBox ID="txtNit" runat="server" Font-Size="62px" Height="75px"
                Width="100%" Text="CF" Style="text-align: center"></asp:TextBox>
        </p>
        <p><font style="font-size: 62px; height: 75px; width: 100%; font-family: Candara;">Name/Nombre</font></p>
        <p>
            <asp:TextBox ID="txtNombre" runat="server" Font-Size="62px" Height="75px"
                Width="100%"></asp:TextBox>
        </p>
        <p><font style="font-size: 62px; height: 75px; width: 100%; font-family: Candara;">Address/Dirección</font></p>
        <p>
            <asp:TextBox ID="txtDireccion" runat="server" Font-Size="62px" Height="75px"
                Width="100%"></asp:TextBox>
        </p>
        <p><font style="font-size: 62px; height: 75px; width: 100%; font-family: Candara;">Ingrese su numero de tarjea / Credit Card Number</font></p>
        <p>
            <asp:TextBox ID="txtTarjetaDeCredito" runat="server" Font-Size="62px" Height="75px"
                Width="100%"></asp:TextBox>
        </p>
        <p><font style="font-size: 62px; height: 75px; width: 100%;">Ingrese el Codigo de Tarjeta / </font></p>
        <p><font style="font-size: 62px; height: 75px; width: 100%;">Code Number</font></p>
        <p>
            <asp:TextBox ID="txtCodigoTArjeta" runat="server" Font-Size="62px" Height="75px"
                Width="100%"></asp:TextBox>
        </p>
        <p><font style="font-size: 62px; height: 75px; width: 100%;">Fecha de Vencimiento / </font></p>
        <p><font style="font-size: 62px; height: 75px; width: 100%;">Due Date&nbsp; :</font></p>
        <div class="Dimension">
            <asp:HiddenField ID="HiddenField2" runat="server" />
            <input id="txtFechaExpiracion" type="date"
                style="font-size: 62px; height: 75px; width: 100%;" />
            &nbsp; &nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>

        <p><font style="font-size: 62px; height: 75px; width: 100%; font-family: Candara;">Moneda/Currency :</font></p>
        <p>
            <asp:DropDownList ID="cmbPais" runat="server" Style="text-align: center; font-size: 62px; height: 75px; width: 100%;">
                <asp:ListItem>USD</asp:ListItem>
                <asp:ListItem>GTQ</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <font style="font-size: 62px; height: 75px; width: 100%;">Monto a Pagar/Total 
        Payment :</font>
        </p>
        <p>
            <asp:TextBox ID="txtMontoAPagar" runat="server" Style="text-align: center; font-size: 62px; height: 75px; width: 100%;" ReadOnly="True"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnPago" runat="server" OnClick="Button1_Click" Style="font-size: 62px; height: 75px; width: 100%;"
                Text="Realizar Pago" Width="111px" />
        </p>
         <p><font style="font-size: 62px; height: 75px; width: 100%; font-family: Candara;">Aprobación/Approval :</font></p>
        <p>
            <asp:Label ID="lblAprobación" runat="server" Text="." Style="font-size: 62px; height: 75px; width: 100%;">.</asp:Label>
        </p>
        <p>&nbsp;</p>
        <p>
            <asp:Label ID="lblMensajes" runat="server" Font-Size="62px" ForeColor="Red"
                Height="75px" Text="." Width="100%"></asp:Label>
        </p>
        <p>&nbsp;</p>
    </div>
</asp:Content>

