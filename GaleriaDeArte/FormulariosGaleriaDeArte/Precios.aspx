<%@ Page Title="" Language="C#" MasterPageFile="~/MainGA.master" AutoEventWireup="true" Inherits="GaleriaDeArte.Precios" CodeBehind="Precios.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" src="http://www.grupo-hesse.com/js/jquery.js"></script>
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
                .center {

            border-radius: 5px;

            width: 60%; 
            height:200px; 
            margin: 0 auto;
            }​
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

        .auto-style1 {
            width: 88%;
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

        .grid {
            width: 500px;
        }

            .grid th {
                background-color: Green;
                color: #ffffff;
            }

            .grid tr:nth-child(even) {
                background-color: #ffffff;
            }

            .grid tr:nth-child(odd) {
                background-color: #cccccc;
            }

            .grid td {
                padding-left: 10px;
            }


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

            .modalDialog:target {
                opacity: 1;
                pointer-events: auto;
            }

            .modalDialog > div {
                width: 400px;
                position: relative;
                margin: 10% auto;
                padding: 5px 20px 13px 20px;
                border-radius: 10px;
                background: #fff;
                background: -moz-linear-gradient(#fff, #999);
                background: -webkit-linear-gradient(#fff, #999);
                background: -o-linear-gradient(#fff, #999);
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

        input[type="text"] {
            font-size: 52px;
            height: 55px;
        }

        input[type="button"] {
            font-size: 52px;
            height: 55px;
            width: 50%;
        }

        .invisible {
            display: none;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label" Style="font-size: 52px; height: 102px; font-weight: bold">Actualizando el Precio Para :</asp:Label></td>
        </tr>
        <tr>
            <td>
                 <asp:Label ID="lblNombreArticulo" runat="server" Text="Label" Style="font-size: 52px; height: 102px; font-weight: bold">.</asp:Label>
                </td>
        </tr>
        <tr><td>
          
            <asp:Label ID="lblArticulo" runat="server" Text="Label" Style="font-size: 52px; height: 102px; font-weight: bold">.</asp:Label>
           / <asp:Label ID="lblIndice" runat="server" Text="Label" Style="font-size: 52px; height: 102px; font-weight: bold">.</asp:Label>
            /<asp:Label ID="lblFila" runat="server" Text="Label" Style="font-size: 52px; height: 102px; font-weight: bold">.</asp:Label></td>
        </tr>
 
        <tr>
            <td>
                <div style="width: 75%; height: 90%; top: 0;">
                    <table>
                        <tr>
                            <td>
                                <asp:TextBox ID="txtPrecio" runat="server" Style="font-size: 52px; height: 102px; font-weight: bold"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Guardar" Style="font-size: 52px; height: 102px; font-weight: bold" OnClick="Button1_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button3" runat="server" Text="Cerrar" Style="font-size: 52px; height: 102px; font-weight: bold" OnClick="Button3_Click" />
                            </td>
                        </tr>
                    </table>

                </div>

            </td>
            </tr>
        <tr>
            <td>
                <div class="center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                        CssClass="grid" DataKeyNames="indice"
                        OnRowEditing="GridView1_RowEditing" >
                        <Columns>
                            <asp:BoundField DataField="indice" HeaderText="Id" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                            <asp:BoundField DataField="Precio" HeaderText="Precio" />
                            <asp:CommandField ShowEditButton="true"   HeaderText="Modificar Precio"/>
                        </Columns>
                    </asp:GridView>
                  

                </div>
            </td>
        </tr>
    </table>






</asp:Content>

