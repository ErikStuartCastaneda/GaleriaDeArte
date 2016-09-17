<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MainGA.master" CodeBehind="Imagenes.aspx.cs" Inherits="GaleriaDeArte.Imagenes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function myfunction() {
            alert("Por favor suba la imagen.");
        }
    </script>


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
            opacity: 0;
            -webkit-transition: opacity 400ms ease-in;
            -moz-transition: opacity 400ms ease-in;
            transition: opacity 400ms ease-in;
            pointer-events: none;
        }
        .center {

            border-radius: 5px;

            width: 60%; 
            height:200px; 
            margin: 0 auto;
            }​
            .modalDialog:target {
                opacity: 1;
                pointer-events: auto;
            }

            .modalDialog > div {
                width: 50%;
                height: 50%;
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

            .close:hover {
                background: #00d9ff;
            }
    </style>
    <style type="text/css">
        @media only screen and (min-width: 700px) {

            table {
                font-size: 42px;
            }

            DropDownList {
                font-size: 42px;
            }

            dimension {
                height: 100%;
                font-size: 42px;
            }
        }

        @media only screen and (min-width: 500px) {

            table {
                font-size: 44px;
                width: 80%;
            }

            DropDownList {
                font-size: 44px;
            }

            dimension {
                height: 100%;
                font-size: 44px;
            }
        }

        @media only screen and (min-width: 360px) {

            table {
                font-size: 52px;
                width: 70%;
            }

            DropDownList {
                font-size: 52px;
            }

            dimension {
                height: 100%x;
                font-size: 52px;
            }
        }

        @media only screen and (min-width: 300px) {

            table {
                font-size: 54px;
                width: 50%;
            }

            .DropDownList {
                font-size: 50px;
            }

            dimension {
                height: 100%x;
                font-size: 50px;
            }
        }

        .Dimension {
        }

        .test2 {
            width: 300px;
            background-color: red;
        }

        .DropDownList {
            margin-bottom: 0px;
        }

        .style1 {
            width: 64px;
            height: 64px;
        }

        .style2 {
            height: 4px;
        }


        .modal {
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

        #divImage {
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
            background: url('http://www.grupo-hesse.com/Images/page-loader.gif') 50% 50% no-repeat rgb(249,249,249);
        }

        .Nover {
            display: none;
        }

        #Button3 {
            width: 588px;
            height: 81px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server" >


    <div style="width:100%; text-align:center;">

                <ul style="vertical-align: middle; list-style-type: none;">
                    <li>
                        <asp:FileUpload ID="FileUpload1" runat="server" Style="font-size: 42px; width: 60%;" /><br />
                    </li>
                    <li>
                        <asp:Label ID="lblMsg" runat="server" Font-Size="42px" Height="50%" Text="." ForeColor="Red"></asp:Label>

                    </li>
                    <li>
                        <font style="font-size: 52px; font-weight: bold; height: 60%; ">Seleccione la posición :
                        </font></li>
                    <li>
                        <asp:Label ID="lblPosicion" runat="server" Font-Size="42px" Height="50%" Text="." ForeColor="#3333FF"></asp:Label></li>
                    
                    <li>
                        <asp:Label ID="lblProducto" runat="server" Font-Size="42px" Height="50%" Text="Id Unico del Producto"  ></asp:Label></li>
                    
                    <li>
                        <asp:TextBox ID="txtIdProducto" runat="server" Font-Size="42px"></asp:TextBox>
                       </li>
                    <li>
                        <asp:Button ID="Button1" runat="server" Font-Size="42px" Height="50%" OnClick="Button1_Click" Text="Guardar " />

                    </li>
                </ul>



    </div>

    <div class="center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Text">
            <HeaderStyle BackColor="#df5015" Font-Bold="true" ForeColor="White" />
            <Columns>
                <asp:BoundField DataField="Text" HeaderText="Imagen" />
                <asp:TemplateField HeaderText="Seleccione ">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkDownload" runat="server" Text="Posición" OnClick="UploadFile"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>

    <asp:HiddenField ID="HiddenField1" runat="server"></asp:HiddenField>

    <script type="text/javascript">

        function GuardarImagen(nombre) {
            var titulo = "Subir Imagen de " + nombre;

            document.getElementById('i').innerText = titulo;

            window.location.href = document.getElementById('dim').href;

        }

    </script>
</asp:Content>






