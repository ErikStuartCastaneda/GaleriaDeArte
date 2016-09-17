<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Comprar.aspx.cs" MasterPageFile="~/MainGA.master" Inherits="GaleriaDeArte.Comprar" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" src="https://www.grupo-hesse.com/js/jquery.js"></script>
    <script type="text/javascript" src="https://www.grupo-hesse.com/js/jquery.min.js"></script>
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

        .style1 {
            width: 64px;
            height: 64px;
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
            background: url('https://www.grupo-hesse.com/Images/page-loader.gif') 50% 50% no-repeat rgb(249,249,249);
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    &nbsp;<div class="loader">
    </div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <table style="background-color: #2EFEF7; color: Blue; width: 100%; text-align: left;">
                <tr>
                    <td>
                        <br />
                        Orden de Pedido
                        <asp:HiddenField ID="HiddenField2" runat="server" />
                    </td>
                </tr>

                <tr style="width: 100%;">
                    <td style="width: 25%;">
                        <img id="I1" alt="" style="width: 100%;" src="#" />
                    </td>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <td class="auto-style1" colspan="2" style="text-align: left;">
                                <div style="width: 66%; display: inline-block;">
                                    GaleriaDeArte1 Q._
                                    <asp:Label ID="PrecioGaleriaDeArte1" runat="server" Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel1" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Espera1" />
                                    </asp:Panel>
                                </div>
                                <div>
                                    <asp:DropDownList ID="CantidadGaleriaDeArte1" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" OnSelectedIndexChanged="CantidadGaleriaDeArte1_SelectedIndexChanged"
                                        onchange=" MostrarIcono('1') " Width="15%">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte1" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        OnSelectedIndexChanged="SelectGaleriaDeArte1_SelectedIndexChanged" onchange="MostrarIcono('1')"
                                        Width="33%">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </tr>

                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I2" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" colspan="2" style="text-align: left;">
                                <div style="width: 66%">
                                    GaleriaDeArte2 Q._
                                    <asp:Label ID="PrecioGaleriaDeArte2" runat="server" Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel2" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img1" />
                                    </asp:Panel>
                                </div>
                                <div>
                                    <asp:DropDownList ID="CantidadGaleriaDeArte2" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte2_SelectedIndexChanged"
                                        onchange="MostrarIcono('2')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte2" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte2_SelectedIndexChanged"
                                        onchange="MostrarIcono('2')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I3" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" colspan="2" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte3 Q._<asp:Label ID="PrecioGaleriaDeArte3" runat="server" Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel3" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img2" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte3" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte3_SelectedIndexChanged"
                                        onchange=" MostrarIcono('3') ">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte3" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte3_SelectedIndexChanged"
                                        onchange=" MostrarIcono('3') ">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I4" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" colspan="2" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte4 Q._<asp:Label ID="PrecioGaleriaDeArte4" runat="server" Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel4" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img3" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte4" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte4_SelectedIndexChanged"
                                        onchange=" MostrarIcono('4') ">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte4" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte4_SelectedIndexChanged"
                                        onchange=" MostrarIcono('4') ">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I5" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" colspan="2" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte5 Q._<asp:Label ID="PrecioGaleriaDeArte5" runat="server" Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel5" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img4" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte5" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte5_SelectedIndexChanged"
                                        onchange=" MostrarIcono('5') ">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte5" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte5_SelectedIndexChanged"
                                        onchange=" MostrarIcono('5') ">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I6" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" colspan="2" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte6 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte6" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel6" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img5" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte6" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte6_SelectedIndexChanged1"
                                        onchange=" MostrarIcono('6') ">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte6" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte6_SelectedIndexChanged1"
                                        onchange=" MostrarIcono('6') ">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I7" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" colspan="2" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte7 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte7" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel7" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img6" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte7" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte7_SelectedIndexChanged1"
                                        onchange="MostrarIcono('7')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte7" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte7_SelectedIndexChanged1"
                                        onchange="MostrarIcono('7')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel9" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I8" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" colspan="2" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte8 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte8" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel8" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img7" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte8" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte8_SelectedIndexChanged"
                                        onchange="MostrarIcono('8')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte8" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte8_SelectedIndexChanged"
                                        onchange="MostrarIcono('8')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel10" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I9" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" colspan="2" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte9 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte9" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel9" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img8" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte9" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte9_SelectedIndexChanged1"
                                        onchange="MostrarIcono('9')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte9" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte9_SelectedIndexChanged1"
                                        onchange="MostrarIcono('9')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel11" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I10" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" colspan="2" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte10 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte10" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel10" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img9" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte10" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte10_SelectedIndexChanged1"
                                        onchange="MostrarIcono('10')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte10" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte10_SelectedIndexChanged1"
                                        onchange="MostrarIcono('10')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel12" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I11" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" colspan="2" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte11 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte11" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel11" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img10" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte11" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte11_SelectedIndexChanged"
                                        onchange="MostrarIcono('11')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte11" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte11_SelectedIndexChanged"
                                        onchange="MostrarIcono('11')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel13" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I12" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" colspan="2" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte12 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte12" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel12" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img11" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte12" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte12_SelectedIndexChanged1"
                                        onchange="MostrarIcono('12')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte12" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte12_SelectedIndexChanged1"
                                        onchange="MostrarIcono('12')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel14" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I13" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte13 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte13" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel13" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img12" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte13" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte13_SelectedIndexChanged1"
                                        onchange="MostrarIcono('13')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte13" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte13_SelectedIndexChanged2"
                                        onchange="MostrarIcono('13')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel15" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I14" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte14 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte14" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel14" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img13" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte14" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte14_SelectedIndexChanged1"
                                        onchange="MostrarIcono('14')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte14" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte14_SelectedIndexChanged1"
                                        onchange="MostrarIcono('14')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel16" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I15" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte15 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte15" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel15" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img14" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte15" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte15_SelectedIndexChanged1"
                                        onchange="MostrarIcono('15')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte15" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte15_SelectedIndexChanged1"
                                        onchange="MostrarIcono('15')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel17" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I16" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte16 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte16" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel16" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img15" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte16" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte16_SelectedIndexChanged"
                                        onchange="MostrarIcono('16')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte16" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte16_SelectedIndexChanged1"
                                        onchange="MostrarIcono('16')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel18" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I17" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte17 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte17" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel17" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img16" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte17" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte17_SelectedIndexChanged1"
                                        onchange="MostrarIcono('17')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte17" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte17_SelectedIndexChanged1"
                                        onchange="MostrarIcono('17')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel19" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I18" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte18 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte18" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel18" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img17" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte18" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte18_SelectedIndexChanged1"
                                        onchange="MostrarIcono('18')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte18" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte18_SelectedIndexChanged1"
                                        onchange="MostrarIcono('18')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel20" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I19" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte19 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte19" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel19" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img18" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte19" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte19_SelectedIndexChanged1"
                                        onchange="MostrarIcono('19')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte19" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte19_SelectedIndexChanged1"
                                        onchange="MostrarIcono('19')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel21" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I20" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte20 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte20" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel20" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img19" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte20" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte20_SelectedIndexChanged1"
                                        onchange="MostrarIcono('20')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte20" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte20_SelectedIndexChanged1"
                                        onchange="MostrarIcono('20')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel22" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I21" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte21 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte21" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel21" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img20" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte21" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte21_SelectedIndexChanged1"
                                        onchange="MostrarIcono('21')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte21" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte21_SelectedIndexChanged1"
                                        onchange="MostrarIcono('21')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel23" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I22" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte22 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte22" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel22" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img21" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte22" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte22_SelectedIndexChanged1"
                                        onchange="MostrarIcono('22')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte22" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte22_SelectedIndexChanged1"
                                        onchange="MostrarIcono('22')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel24" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I23" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte23 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte23" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel23" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img22" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte23" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte23_SelectedIndexChanged"
                                        onchange="MostrarIcono('23')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte23" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte23_SelectedIndexChanged"
                                        onchange="MostrarIcono('23')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel25" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I24" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte24 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte24" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel24" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img23" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte24" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte24_SelectedIndexChanged1"
                                        onchange="MostrarIcono('24')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte24" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte24_SelectedIndexChanged1"
                                        onchange="MostrarIcono('24')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel26" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I25" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte24 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte25" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel25" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img23" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte25" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte25_SelectedIndexChanged1"
                                        onchange="MostrarIcono('25')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte25" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte25_SelectedIndexChanged1"
                                        onchange="MostrarIcono('25')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel27" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I26" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte26 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte26" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel26" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img25" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte26" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte26_SelectedIndexChanged1"
                                        onchange="MostrarIcono('26')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte26" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte26_SelectedIndexChanged1"
                                        onchange="MostrarIcono('26')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel28" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I27" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte27 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte27" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel27" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img26" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte27" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte27_SelectedIndexChanged1"
                                        onchange="MostrarIcono('27')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte27" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte27_SelectedIndexChanged1"
                                        onchange="MostrarIcono('27')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel29" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I28" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte28 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte28" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel28" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img27" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte28" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte28_SelectedIndexChanged1"
                                        onchange="MostrarIcono('28')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte28" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte28_SelectedIndexChanged1"
                                        onchange="MostrarIcono('28')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel30" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I29" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte29 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte29" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel29" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img28" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte29" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte29_SelectedIndexChanged1"
                                        onchange="MostrarIcono('29')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte29" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte29_SelectedIndexChanged1"
                                        onchange="MostrarIcono('29')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel31" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I30" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte30 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte30" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel30" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img29" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte30" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte30_SelectedIndexChanged1"
                                        onchange="MostrarIcono('30')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte30" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte30_SelectedIndexChanged1"
                                        onchange="MostrarIcono('30')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel32" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I31" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte31 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte31" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel31" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img30" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte31" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte31_SelectedIndexChanged1"
                                        onchange="MostrarIcono('31')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte31" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte31_SelectedIndexChanged1"
                                        onchange="MostrarIcono('31')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel33" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I32" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte32 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte32" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel32" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img31" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte32" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte32_SelectedIndexChanged1"
                                        onchange="MostrarIcono('32')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte32" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte32_SelectedIndexChanged1"
                                        onchange="MostrarIcono('32')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel34" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I33" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte33 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte33" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel33" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img32" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte33" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte33_SelectedIndexChanged1"
                                        onchange="MostrarIcono('33')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte33" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte33_SelectedIndexChanged1"
                                        onchange="MostrarIcono('33')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel35" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I34" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte34 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte34" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel34" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img33" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte34" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte34_SelectedIndexChanged1"
                                        onchange="MostrarIcono('34')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte34" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte34_SelectedIndexChanged1"
                                        onchange="MostrarIcono('34')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel36" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I35" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte35 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte35" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel35" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img34" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte35" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte35_SelectedIndexChanged1"
                                        onchange="MostrarIcono('35')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte35" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte35_SelectedIndexChanged1"
                                        onchange="MostrarIcono('35')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel37" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I36" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte36 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte36" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel36" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img35" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte36" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte36_SelectedIndexChanged1"
                                        onchange="MostrarIcono('36')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte36" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte36_SelectedIndexChanged1"
                                        onchange="MostrarIcono('36')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel38" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I37" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte37 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte37" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel37" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img36" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte37" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte37_SelectedIndexChanged1"
                                        onchange="MostrarIcono('37')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte37" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte37_SelectedIndexChanged1"
                                        onchange="MostrarIcono('37')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel39" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I38" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte38 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte38" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel38" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img37" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte38" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte38_SelectedIndexChanged1"
                                        onchange="MostrarIcono('38')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte38" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte38_SelectedIndexChanged1"
                                        onchange="MostrarIcono('38')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel40" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I39" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte39 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte39" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel39" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img38" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte39" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte39_SelectedIndexChanged1"
                                        onchange="MostrarIcono('39')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte39" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte39_SelectedIndexChanged1"
                                        onchange="MostrarIcono('39')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel41" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I40" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte40 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte40" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel40" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img39" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte40" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte40_SelectedIndexChanged1"
                                        onchange="MostrarIcono('40')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte40" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte40_SelectedIndexChanged1"
                                        onchange="MostrarIcono('40')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel42" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I41" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte41 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte41" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel41" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img40" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte41" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte41_SelectedIndexChanged1"
                                        onchange="MostrarIcono('41')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte41" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte41_SelectedIndexChanged1"
                                        onchange="MostrarIcono('41')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel43" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I42" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte42 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte42" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel42" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img41" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte42" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte42_SelectedIndexChanged1"
                                        onchange="MostrarIcono('42')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte42" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte42_SelectedIndexChanged1"
                                        onchange="MostrarIcono('42')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel44" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I43" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte43 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte43" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel43" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img42" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte43" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte43_SelectedIndexChanged1"
                                        onchange="MostrarIcono('43')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte43" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte43_SelectedIndexChanged1"
                                        onchange="MostrarIcono('43')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel45" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I44" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte44 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte44" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel44" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img43" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte44" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte44_SelectedIndexChanged1"
                                        onchange="MostrarIcono('44')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte44" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte44_SelectedIndexChanged1"
                                        onchange="MostrarIcono('44')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel46" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I45" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte45 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte45" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel45" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img44" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte45" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte45_SelectedIndexChanged1"
                                        onchange="MostrarIcono('45')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte45" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte45_SelectedIndexChanged1"
                                        onchange="MostrarIcono('45')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel47" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I46" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte46 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte46" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel46" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img45" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte46" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte46_SelectedIndexChanged1"
                                        onchange="MostrarIcono('46')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte46" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte46_SelectedIndexChanged1"
                                        onchange="MostrarIcono('46')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel48" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I47" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte47 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte47" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel47" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img46" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte47" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte47_SelectedIndexChanged1"
                                        onchange="MostrarIcono('47')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte47" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte47_SelectedIndexChanged1"
                                        onchange="MostrarIcono('47')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel49" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I48" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte48 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte48" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel48" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img47" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte48" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte48_SelectedIndexChanged1"
                                        onchange="MostrarIcono('48')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte48" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte48_SelectedIndexChanged1"
                                        onchange="MostrarIcono('48')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel50" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I49" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte49 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte49" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel49" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img48" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte49" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte49_SelectedIndexChanged1"
                                        onchange="MostrarIcono('49')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte49" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte49_SelectedIndexChanged1"
                                        onchange="MostrarIcono('49')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel51" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I50" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte50 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte50" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel50" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img49" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte50" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte50_SelectedIndexChanged1"
                                        onchange="MostrarIcono('50')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte50" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte50_SelectedIndexChanged1"
                                        onchange="MostrarIcono('50')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel52" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I51" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte51 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte51" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel51" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img50" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte51" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte51_SelectedIndexChanged1"
                                        onchange="MostrarIcono('51')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte51" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte51_SelectedIndexChanged1"
                                        onchange="MostrarIcono('51')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel54" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I52" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte52 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte52" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel52" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img51" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte52" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte52_SelectedIndexChanged1"
                                        onchange="MostrarIcono('52')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte52" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte52_SelectedIndexChanged1"
                                        onchange="MostrarIcono('52')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel55" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I53" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte53 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte53" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel53" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img52" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte53" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte53_SelectedIndexChanged1"
                                        onchange="MostrarIcono('53')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte53" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte53_SelectedIndexChanged1"
                                        onchange="MostrarIcono('53')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel56" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I54" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte54 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte54" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel54" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img53" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte54" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte54_SelectedIndexChanged1"
                                        onchange="MostrarIcono('54')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte54" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte54_SelectedIndexChanged1"
                                        onchange="MostrarIcono('54')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel57" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I55" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte55 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte55" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel55" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img54" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte55" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte55_SelectedIndexChanged1"
                                        onchange="MostrarIcono('55')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte55" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte55_SelectedIndexChanged1"
                                        onchange="MostrarIcono('55')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel58" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I56" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte56 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte56" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel56" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img55" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte56" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte56_SelectedIndexChanged1"
                                        onchange="MostrarIcono('56')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte56" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte56_SelectedIndexChanged1"
                                        onchange="MostrarIcono('56')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel59" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I57" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte57 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte57" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel57" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img56" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte57" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte57_SelectedIndexChanged"
                                        onchange="MostrarIcono('57')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte57" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte57_SelectedIndexChanged"
                                        onchange="MostrarIcono('57')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel60" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I58" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte58 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte58" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel58" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img57" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte58" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte58_SelectedIndexChanged1"
                                        onchange="MostrarIcono('58')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte58" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte58_SelectedIndexChanged1"
                                        onchange="MostrarIcono('58')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel61" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I59" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte59 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte59" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel59" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img58" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte59" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte59_SelectedIndexChanged1"
                                        onchange="MostrarIcono('59')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte59" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte59_SelectedIndexChanged1"
                                        onchange="MostrarIcono('59')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel62" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I60" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte60 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte60" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel60" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img59" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte60" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte60_SelectedIndexChanged1"
                                        onchange="MostrarIcono('60')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte60" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte60_SelectedIndexChanged1"
                                        onchange="MostrarIcono('60')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel63" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I61" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte61 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte61" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel61" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img60" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte61" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte61_SelectedIndexChanged1"
                                        onchange="MostrarIcono('61')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte61" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte61_SelectedIndexChanged1"
                                        onchange="MostrarIcono('61')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel64" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I62" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte62 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte62" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel62" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img61" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte62" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte62_SelectedIndexChanged1"
                                        onchange="MostrarIcono('62')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte62" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte62_SelectedIndexChanged1"
                                        onchange="MostrarIcono('62')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel65" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I63" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte63 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte63" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel63" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img62" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte63" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte63_SelectedIndexChanged1"
                                        onchange="MostrarIcono('63')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte63" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte63_SelectedIndexChanged1"
                                        onchange="MostrarIcono('63')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel66" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I64" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte64 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte64" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel64" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img63" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte64" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte64_SelectedIndexChanged1"
                                        onchange="MostrarIcono('64')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte64" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte64_SelectedIndexChanged1"
                                        onchange="MostrarIcono('64')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel67" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I65" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte65 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte65" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel65" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img64" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte65" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte65_SelectedIndexChanged1"
                                        onchange="MostrarIcono('65')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte65" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte65_SelectedIndexChanged1"
                                        onchange="MostrarIcono('65')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel68" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I66" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte66 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte66" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel66" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img65" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte66" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte66_SelectedIndexChanged1"
                                        onchange="MostrarIcono('66')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte66" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte66_SelectedIndexChanged1"
                                        onchange="MostrarIcono('66')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel69" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I67" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte67 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte67" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel67" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img66" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte67" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte67_SelectedIndexChanged1"
                                        onchange="MostrarIcono('67')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte67" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte67_SelectedIndexChanged1"
                                        onchange="MostrarIcono('67')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel70" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I68" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte68 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte68" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel68" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img67" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte68" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte68_SelectedIndexChanged1"
                                        onchange="MostrarIcono('68')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte68" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte68_SelectedIndexChanged1"
                                        onchange="MostrarIcono('68')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel71" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I69" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte69 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte69" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel69" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img68" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte69" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte69_SelectedIndexChanged1"
                                        onchange="MostrarIcono('69')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte69" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte69_SelectedIndexChanged1"
                                        onchange="MostrarIcono('69')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel72" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I70" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte70 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte70" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel70" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img69" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte70" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte70_SelectedIndexChanged1"
                                        onchange="MostrarIcono('70')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte70" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte70_SelectedIndexChanged1"
                                        onchange="MostrarIcono('70')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel74" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I71" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte71 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte71" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel71" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img70" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte71" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte71_SelectedIndexChanged1"
                                        onchange="MostrarIcono('71')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte71" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte71_SelectedIndexChanged1"
                                        onchange="MostrarIcono('71')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel75" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I72" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte72 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte72" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel72" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img71" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte72" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte72_SelectedIndexChanged1"
                                        onchange="MostrarIcono('72')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte72" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte72_SelectedIndexChanged1"
                                        onchange="MostrarIcono('72')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel76" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I73" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte73 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte73" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel73" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img72" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte73" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte73_SelectedIndexChanged1"
                                        onchange="MostrarIcono('73')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte73" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte73_SelectedIndexChanged1"
                                        onchange="MostrarIcono('73')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel77" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I74" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte74 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte74" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel74" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img73" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte74" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte74_SelectedIndexChanged1"
                                        onchange="MostrarIcono('74')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte74" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte74_SelectedIndexChanged1"
                                        onchange="MostrarIcono('74')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel78" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I75" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte75 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte75" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel75" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img74" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte75" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte75_SelectedIndexChanged1"
                                        onchange="MostrarIcono('75')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte75" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte75_SelectedIndexChanged1"
                                        onchange="MostrarIcono('75')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel79" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I76" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte76 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte76" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel76" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img75" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte76" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte76_SelectedIndexChanged1"
                                        onchange="MostrarIcono('76')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte76" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte76_SelectedIndexChanged1"
                                        onchange="MostrarIcono('76')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:UpdatePanel ID="UpdatePanel80" runat="server">
                    <ContentTemplate>
                        <tr style="width: 100%;">
                            <td style="width: 25%;">
                                <img id="I77" alt="" style="width: 100%;" src="#" />
                            </td>
                            <td class="auto-style1" style="text-align: left;">
                                <div style="width: 100%">
                                    GaleriaDeArte77 &nbsp;&nbsp;&nbsp;Q._<asp:Label ID="PrecioGaleriaDeArte77" runat="server"
                                        Text="." Width="15%"></asp:Label>
                                    &nbsp; &nbsp;<asp:Panel ID="Panel77" runat="server" Width="65px">
                                        <img alt="" class="style1" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif"
                                            id="Img76" />
                                    </asp:Panel>
                                </div>
                                <div style="width: 100%;">
                                    <asp:DropDownList ID="CantidadGaleriaDeArte77" runat="server" AutoPostBack="True"
                                        CssClass="DropDownList" Width="15%" OnSelectedIndexChanged="CantidadGaleriaDeArte77_SelectedIndexChanged1"
                                        onchange="MostrarIcono('77')">
                                        <asp:ListItem>0</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="SelectGaleriaDeArte77" runat="server" AutoPostBack="True" CssClass="DropDownList"
                                        Width="33%" OnSelectedIndexChanged="SelectGaleriaDeArte77_SelectedIndexChanged1"
                                        onchange="MostrarIcono('77')">
                                        <asp:ListItem>unidades</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </td>
                        </tr>

                    </ContentTemplate>
                </asp:UpdatePanel>
            </table>
            <table style="background-color: #2EFEF7; color: Blue; width: 100%; text-align: left;">
                <tr style="width: 100%">
                    <td colspan="2">
                        <div style="width: 100%">
                            &nbsp;Mail Address / Correo :<br />
                        </div>
                        <div style="width: 100%">
                            <asp:TextBox ID="txtCorreo" runat="server" Font-Size="52px" Height="96px" Width="100%"></asp:TextBox>
                        </div>
                    </td>
                </tr>
                <tr style="width: 100%">
                    <td colspan="2">
                        <div style="width: 100%;">
                            <asp:Label ID="lblMsg" runat="server" Text="." BackColor="Transparent" ForeColor="White"
                                Font-Size="52px" Height="55px" Width="100%"></asp:Label>
                            <div>
                    </td>
                </tr>
            </table>
            <table style="background-color: #2EFEF7; color: Blue; width: 100%; text-align: left;">
                <tr>
                    <td colspan="2">
                        <div>
                            <asp:Label ID="lblMsg0" runat="server" BackColor="Transparent" Font-Size="52px" ForeColor="Blue"
                                Height="111px" Text="." Width="100%"></asp:Label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div style="width: 50%;">
                            <asp:Panel ID="Panel78" runat="server" Width="50%">
                                <img alt="" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif" id="Img77" />
                                <asp:Label ID="Label1" runat="server" BackColor="Transparent" Font-Size="52px" ForeColor="Blue"
                                    Height="111px" Text="Enviando....." Width="380%"></asp:Label>
                            </asp:Panel>
                        </div>
                        <div>
                    </td>
                </tr>
            </table>
            <table style="background-color: #2EFEF7; color: Blue; width: 100%; text-align: left;">
                <tr>
                    <td colspan="2">
                        <div style="width: 100%">
                            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="52px"
                                Height="102px" OnClick="Button1_Click" Text="Next >>" Width="100%" />
                        </div>
                    </td>
                </tr>
            </table>
            </div>
                            <div id="divBackground" class="modal">
                            </div>
            <div id="divImage">
                <table style="background-color: #2EFEF7; color: Blue; width: 100%; text-align: left;">
                    <tr>
                        <td align="center" colspan="2" valign="middle">
                            <img id="imgLoader" alt="" src="https://www.grupo-hesse.com/GaleriaDeArte/loader.gif" />
                            <img id="imgFull" alt="" src="" style="display: none; height: 800px; width: 500px" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2" valign="bottom">
                            <input id="btnClose" type="button" value="Cerrar" onclick="HideDiv()" style="font-size: 52px; height: 102px; font-weight: bold" />
                        </td>
                    </tr>
                </table>
            </div>
            <asp:HiddenField ID="HiddenField1" runat="server" />
            </td>
                    </tr>

    <script type="text/javascript">
        function fncsave() {
            MostrarIcono('78');

            var clickButton = document.getElementById("<%= Button1.ClientID %>");
            clickButton.click();

        }
        function check() {
            document.getElementById('<%=HiddenField2.ClientID %>').value = document.getElementById("Text1").value;

        }
        function MostrarIcono(cual) {
            if (cual == "1") {
                document.getElementById('<%=Panel1.ClientID %>').style.display = 'inline';
            }
            if (cual == "2") {
                document.getElementById('<%=Panel2.ClientID %>').style.display = 'inline';
            }
            if (cual == "3") {
                document.getElementById('<%=Panel3.ClientID %>').style.display = 'inline';
            }

            if (cual == "4") {
                document.getElementById('<%=Panel4.ClientID %>').style.display = 'inline';

            }
            if (cual == "5") {
                document.getElementById('<%=Panel5.ClientID %>').style.display = 'inline';
            }
            if (cual == "6") {
                document.getElementById('<%=Panel6.ClientID %>').style.display = 'inline';
            }
            if (cual == "7") {
                document.getElementById('<%=Panel7.ClientID %>').style.display = 'inline';
            }
            if (cual == "8") {
                document.getElementById('<%=Panel8.ClientID %>').style.display = 'inline';
            }
            if (cual == "9") {
                document.getElementById('<%=Panel9.ClientID %>').style.display = 'inline';
            }
            if (cual == "10") {
                document.getElementById('<%=Panel10.ClientID %>').style.display = 'inline';
            }
            if (cual == "11") {
                document.getElementById('<%=Panel11.ClientID %>').style.display = 'inline';
            }
            if (cual == "12") {
                document.getElementById('<%=Panel12.ClientID %>').style.display = 'inline';
            }
            if (cual == "13") {
                document.getElementById('<%=Panel13.ClientID %>').style.display = 'inline';
            }
            if (cual == "14") {
                document.getElementById('<%=Panel14.ClientID %>').style.display = 'inline';
            }
            if (cual == "15") {
                document.getElementById('<%=Panel15.ClientID %>').style.display = 'inline';
            }
            if (cual == "16") {
                document.getElementById('<%=Panel16.ClientID %>').style.display = 'inline';
            }
            if (cual == "17") {
                document.getElementById('<%=Panel17.ClientID %>').style.display = 'inline';
            }
            if (cual == "18") {
                document.getElementById('<%=Panel18.ClientID %>').style.display = 'inline';
            }
            if (cual == "19") {
                document.getElementById('<%=Panel19.ClientID %>').style.display = 'inline';
            }
            if (cual == "20") {
                document.getElementById('<%=Panel20.ClientID %>').style.display = 'inline';
            }
            if (cual == "21") {
                document.getElementById('<%=Panel21.ClientID %>').style.display = 'inline';
            }
            if (cual == "22") {
                document.getElementById('<%=Panel22.ClientID %>').style.display = 'inline';
            }
            if (cual == "23") {
                document.getElementById('<%=Panel23.ClientID %>').style.display = 'inline';
            }
            if (cual == "24") {
                document.getElementById('<%=Panel24.ClientID %>').style.display = 'inline';
            }
            if (cual == "25") {
                document.getElementById('<%=Panel25.ClientID %>').style.display = 'inline';
            }
            if (cual == "26") {
                document.getElementById('<%=Panel26.ClientID %>').style.display = 'inline';
            }
            if (cual == "27") {
                document.getElementById('<%=Panel27.ClientID %>').style.display = 'inline';
            }
            if (cual == "28") {
                document.getElementById('<%=Panel28.ClientID %>').style.display = 'inline';
            }
            if (cual == "29") {
                document.getElementById('<%=Panel29.ClientID %>').style.display = 'inline';
            }
            if (cual == "30") {
                document.getElementById('<%=Panel30.ClientID %>').style.display = 'inline';
            }
            if (cual == "31") {
                document.getElementById('<%=Panel31.ClientID %>').style.display = 'inline';
            }
            if (cual == "32") {
                document.getElementById('<%=Panel32.ClientID %>').style.display = 'inline';
            }
            if (cual == "33") {
                document.getElementById('<%=Panel33.ClientID %>').style.display = 'inline';
            }
            if (cual == "34") {
                document.getElementById('<%=Panel34.ClientID %>').style.display = 'inline';
            }
            if (cual == "35") {
                document.getElementById('<%=Panel35.ClientID %>').style.display = 'inline';
            }
            if (cual == "36") {
                document.getElementById('<%=Panel36.ClientID %>').style.display = 'inline';
            }
            if (cual == "37") {
                document.getElementById('<%=Panel37.ClientID %>').style.display = 'inline';
            }
            if (cual == "38") {
                document.getElementById('<%=Panel38.ClientID %>').style.display = 'inline';
            }
            if (cual == "39") {
                document.getElementById('<%=Panel39.ClientID %>').style.display = 'inline';
            }
            if (cual == "40") {
                document.getElementById('<%=Panel40.ClientID %>').style.display = 'inline';
            }
            if (cual == "41") {
                document.getElementById('<%=Panel41.ClientID %>').style.display = 'inline';
            }
            if (cual == "42") {
                document.getElementById('<%=Panel42.ClientID %>').style.display = 'inline';
            }
            if (cual == "43") {
                document.getElementById('<%=Panel43.ClientID %>').style.display = 'inline';
            }
            if (cual == "44") {
                document.getElementById('<%=Panel44.ClientID %>').style.display = 'inline';
            }
            if (cual == "45") {
                document.getElementById('<%=Panel45.ClientID %>').style.display = 'inline';
            }
            if (cual == "46") {
                document.getElementById('<%=Panel46.ClientID %>').style.display = 'inline';
            }
            if (cual == "47") {
                document.getElementById('<%=Panel47.ClientID %>').style.display = 'inline';
            }
            if (cual == "48") {
                document.getElementById('<%=Panel48.ClientID %>').style.display = 'inline';
            }
            if (cual == "49") {
                document.getElementById('<%=Panel49.ClientID %>').style.display = 'inline';
            }
            if (cual == "50") {
                document.getElementById('<%=Panel50.ClientID %>').style.display = 'inline';
            }
            if (cual == "51") {
                document.getElementById('<%=Panel51.ClientID %>').style.display = 'inline';
            }
            if (cual == "52") {
                document.getElementById('<%=Panel52.ClientID %>').style.display = 'inline';
            }
            if (cual == "53") {
                document.getElementById('<%=Panel53.ClientID %>').style.display = 'inline';
            }
            if (cual == "54") {
                document.getElementById('<%=Panel54.ClientID %>').style.display = 'inline';
            }
            if (cual == "55") {
                document.getElementById('<%=Panel55.ClientID %>').style.display = 'inline';
            }
            if (cual == "56") {
                document.getElementById('<%=Panel56.ClientID %>').style.display = 'inline';
            }
            if (cual == "57") {
                document.getElementById('<%=Panel57.ClientID %>').style.display = 'inline';
            }
            if (cual == "58") {
                document.getElementById('<%=Panel58.ClientID %>').style.display = 'inline';
            }
            if (cual == "59") {
                document.getElementById('<%=Panel59.ClientID %>').style.display = 'inline';
            }
            if (cual == "60") {
                document.getElementById('<%=Panel60.ClientID %>').style.display = 'inline';
            }
            if (cual == "61") {
                document.getElementById('<%=Panel61.ClientID %>').style.display = 'inline';
            }
            if (cual == "62") {
                document.getElementById('<%=Panel62.ClientID %>').style.display = 'inline';
            }
            if (cual == "63") {
                document.getElementById('<%=Panel63.ClientID %>').style.display = 'inline';
            }
            if (cual == "64") {
                document.getElementById('<%=Panel64.ClientID %>').style.display = 'inline';
            }
            if (cual == "65") {
                document.getElementById('<%=Panel65.ClientID %>').style.display = 'inline';
            }
            if (cual == "66") {
                document.getElementById('<%=Panel66.ClientID %>').style.display = 'inline';
            }
            if (cual == "67") {
                document.getElementById('<%=Panel67.ClientID %>').style.display = 'inline';
            }
            if (cual == "68") {
                document.getElementById('<%=Panel68.ClientID %>').style.display = 'inline';
            }
            if (cual == "69") {
                document.getElementById('<%=Panel69.ClientID %>').style.display = 'inline';
            }
            if (cual == "70") {
                document.getElementById('<%=Panel70.ClientID %>').style.display = 'inline';
            }
            if (cual == "71") {
                document.getElementById('<%=Panel71.ClientID %>').style.display = 'inline';
            }
            if (cual == "72") {
                document.getElementById('<%=Panel72.ClientID %>').style.display = 'inline';
            }
            if (cual == "73") {
                document.getElementById('<%=Panel73.ClientID %>').style.display = 'inline';
            }
            if (cual == "74") {
                document.getElementById('<%=Panel74.ClientID %>').style.display = 'inline';
            }
            if (cual == "75") {
                document.getElementById('<%=Panel75.ClientID %>').style.display = 'inline';
            }
            if (cual == "76") {
                document.getElementById('<%=Panel76.ClientID %>').style.display = 'inline';
            }
            if (cual == "77") {
                document.getElementById('<%=Panel77.ClientID %>').style.display = 'inline';
            }
            if (cual == "78") {
                document.getElementById('<%=Panel78.ClientID %>').style.display = 'inline';
            }



        }

        function LoadDiv(url) {
            var img = new Image();
            var bcgDiv = document.getElementById("divBackground");
            var imgDiv = document.getElementById("divImage");
            var imgFull = document.getElementById("imgFull");
            var imgLoader = document.getElementById("imgLoader");
            imgLoader.style.display = "block";
            img.onload = function () {
                imgFull.src = img.src;
                imgFull.style.display = "block";
                imgLoader.style.display = "none";
            };
            img.src = url;
            var width = document.body.clientWidth;
            if (document.body.clientHeight > document.body.scrollHeight) {
                bcgDiv.style.height = document.body.clientHeight + "px";
            }
            else {
                bcgDiv.style.height = document.body.scrollHeight + "px";
            }
            imgDiv.style.left = (width - 650) / 2 + "px";
            imgDiv.style.top = "20px";
            imgDiv.style.height = "90%";
            bcgDiv.style.width = "100%";

            bcgDiv.style.display = "block";
            imgDiv.style.display = "block";
            return false;
        }
        function HideDiv() {
            var bcgDiv = document.getElementById("divBackground");
            var imgDiv = document.getElementById("divImage");
            var imgFull = document.getElementById("imgFull");
            if (bcgDiv != null) {
                bcgDiv.style.display = "none";
                imgDiv.style.display = "none";
                imgFull.style.display = "none";
            }
        }

        $(window).load(function () {
            $(".loader").fadeOut("slow");

        })
    </script>
</asp:Content>
