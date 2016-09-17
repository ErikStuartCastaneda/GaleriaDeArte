<%@ Page Title="" Language="C#" MasterPageFile="~/MainGA.master" AutoEventWireup="true" Inherits="GaleriaDeArte.Factura" Codebehind="Factura.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
  
         .modalDialog {
	position: fixed;
	font-family: Arial, Helvetica, sans-serif;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	background: rgba(0,0,0,0.8);
	z-index: 99999;
	opacity:0;
	-webkit-transition: opacity 400ms ease-in;
	-moz-transition: opacity 400ms ease-in;
	transition: opacity 400ms ease-in;
	pointer-events: none;
}
         .modalDialog:target {
	opacity:1;
	pointer-events: auto;
}

.modalDialog > div {
	width: 50%;
	height:50%;
	position: relative;
	margin: 10% auto;
	padding: 5px 20px 13px 20px;
	border-radius: 10px;
	background: #fff;
	background: -moz-linear-gradient(#fff, #999);
	background: -webkit-linear-gradient(#fff, #999);
	background: #fff;
             top: -40px;
             left: 0px;
         }
.close {
	background: #606061;
	color: #FFFFFF;
	line-height: 25px;
	position: absolute;
	right: -12px;
	text-align: center;
	top: -10px;
	width: 24px;
	text-decoration: none;
	font-weight: bold;
	-webkit-border-radius: 12px;
	-moz-border-radius: 12px;
	border-radius: 12px;
	-moz-box-shadow: 1px 1px 3px #000;
	-webkit-box-shadow: 1px 1px 3px #000;
	box-shadow: 1px 1px 3px #000;
}

.close:hover { background: #00d9ff; }

         </style>
             <style type="text/css">

        @media only screen and (min-width: 700px) {

            table {
                font-size: 42px;
            }
            DropDownList {
              font-size:42px;
            }
            dimension {
            height:100%;
               font-size:42px;

            }
        }

    @media only screen and (min-width: 500px) {

        table {
            font-size: 44px;
            width: 80%;
        }
             DropDownList {
              font-size:44px;
            }
        dimension {
           height: 100%;
              font-size:44px;
            }
}
        @media only screen and (min-width: 360px) {

   table { font-size: 52px;   width:70%; 

   }
             DropDownList {
              font-size:52px;
            }
           dimension {
               height:100%x;
              font-size:52px;
            }

}
    @media only screen and (min-width: 300px) {

   table { font-size: 54px;  width:50%; 
              }
               .DropDownList {
              font-size:50px;
            }
          dimension {
            height:100%x;
              font-size:50px;
            }
}
        .auto-style1 {
        width: 88%;
    }
        .Dimension {}
                
        .test2 {  width:300px; background-color:red; }
        .DropDownList
        {
            margin-bottom: 0px;
        }
        .style1
        {
            width: 64px;
            height: 64px;
        }
        .style2
        {
            height: 4px;
        }
        
        
        .modal
{
    display: none;
    position: absolute;
    top: 0px;
    left: 0px;
    background-color: black;
    z-index: 100;
    opacity: 0.8;
    filter: alpha(opacity=60);
    -moz-opacity: 0.8;
    min-height: 100%;
}
#divImage
{
    display: none;
    z-index: 1000;
    position: fixed;
    top: 0;
    left: 0;
    background-color: White;
    height: 550px;
    width: 600px;
    padding: 3px;
    border: solid 1px black;
}
.loader {
	position: fixed;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	z-index: 9999;
	background: url('https://www.grupo-hesse.com/Images/page-loader.gif') 50% 50% no-repeat rgb(249,249,249);
}
.Nover
{
    display:none;
    }
        #Button3
        {
            width: 588px;
            height: 81px;
        }
    </style>
       

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <a id="dim" href="#openModal">.</a>
<div id="openModal" class="modalDialog">
		<div>
		<a id="clse" href="#close" title="Cerrar" class="close">X</a>
		<a id ="i" style="font-size:42px;">Descripcion para Factura</a>
            <asp:HiddenField ID="HiddenField1" runat="server" />
          <ul style="vertical-align:middle;">
          <li>
              <asp:TextBox ID="TextBox1" Font-Size="42px"  runat="server" 
                  Width="100%"></asp:TextBox>
           </li>
           <li>&nbsp;</li>
           <li>
            &nbsp;<asp:Button ID="Button1" runat="server"  font-size="42px" Height="50%" OnClick="Button1_Click" Text="Guardar " />
	      </li></ul>
    </div>
</div>


              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                  BackColor="AquaMarine" EmptyDataText="No files uploaded" ForeColor="Blue"  >
                  <Columns>
                      <asp:BoundField DataField="Producto" HeaderText="Producto" />
                      <asp:BoundField DataField="FacturaDescripcion" HeaderText="Descripcion" />
                      <asp:TemplateField HeaderText="Guardar">
                     <ItemTemplate>
                <asp:LinkButton ID="lnkSubir" Text = "Guardar" CommandArgument = '<%# Eval("producto") %>' runat="server" OnClick = "UploadFile"></asp:LinkButton>
            </ItemTemplate>
            <ControlStyle ForeColor="Blue" />
            <FooterStyle ForeColor="Blue" />
            <HeaderStyle ForeColor="Blue" />
            <ItemStyle ForeColor="Blue" />
            </asp:TemplateField>
                  </Columns>
              </asp:GridView>
                       <script type="text/javascript">
                           function GuardarImagen(nombre) {
                               var titulo = "Descripcion de Factura para " + nombre;
                               document.getElementById('i').innerText = titulo;
                               window.location.href = document.getElementById('dim').href;
                           }

        </script>

 


</asp:Content>

