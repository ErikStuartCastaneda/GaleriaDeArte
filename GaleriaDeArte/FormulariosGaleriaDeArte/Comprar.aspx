<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Comprar.aspx.cs" MasterPageFile="~/MainGA.master" Inherits="GaleriaDeArte.Comprar" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" src="https://www.grupo-hesse.com/js/jquery.js"></script>
    <script type="text/javascript" src="https://www.grupo-hesse.com/js/jquery.min.js"></script>
    <style type="text/css">
        @media only screen and (min-width: 700px) {

            body {
            /*zoom: 200%;*/
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

        .label {
            border: none;
            height: 100%x;
            width: 275px;
            font-size: 50px;
            readonly =true;
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
    <asp:HiddenField ID="HiddenField2" runat="server" />
    <table style="background-color: #2EFEF7; color: Blue; width: 100%; text-align: left;">
        <tr>
            <td colspan="2">
                <br />
               Gallery items for sale
                        
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I1" alt="" style="width: 100%;" src="#" />
            </td>

            <td class="auto-style1" style="text-align: left;">
                 <div style="width: 100%">
                     <a>GaleriaDeArte1</a>
                     <div> <div> <a>Price $</a>  
                    <input id="PrecioGaleriaDeArte1" class="label" type="text" readonly /></div></div>
             
                <div>

                    <asp:DropDownList ID="CantidadGaleriaDeArte1" runat="server" AutoPostBack="False"
                        CssClass="DropDownList"
                        onchange="MostrarIcono('GaleriaDeArte1','1');" Width="15%">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte1" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        onchange="MostrarIcono('GaleriaDeArte1','1');"
                        Width="33%">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>

                </div>

            </td>

        </tr>


        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I2" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" colspan="2" style="text-align: left;">
                 <div style="width: 100%">
                   <a>GaleriaDeArte2 </a><div> <a>Price $</a> 
                                    <input id="PrecioGaleriaDeArte2"class="label" type="text" readonly /></div>
                </div>
                <div>
                    <asp:DropDownList ID="CantidadGaleriaDeArte2" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte2','2');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte2" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte2','2');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>


        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I3" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" colspan="2" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte3 </a><div> <a>Price $</a> 
              <input id="PrecioGaleriaDeArte3"class="label" type="text" readonly /></div>
                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte3" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte3','3');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte3" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte3','3');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I4" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" colspan="2" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte4 </a><div> <a>Price $</a> 
                   <input id="PrecioGaleriaDeArte4"class="label" type="text" readonly /></div>
                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte4" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte4','4');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte4" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte4','4');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I5" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" colspan="2" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte5 </a><div> <a>Price $</a> 
                <input id="PrecioGaleriaDeArte5"class="label" type="text" readonly /></div>
                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte5" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte5','5');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte5" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte5','5');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I6" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" colspan="2" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte6 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                  <input id="PrecioGaleriaDeArte6"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte6" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte6','6');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte6" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte6','6');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I7" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" colspan="2" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte7 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte7"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte7" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte7','7');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte7" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte7','7');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I8" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" colspan="2" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte8 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte8"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte8" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte8','8');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte8" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte8','8');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I9" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" colspan="2" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte9 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte9"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte9" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte9','9');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte9" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte9','9');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I10" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" colspan="2" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte10 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte10"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte10" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte10','10');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte10" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte10','10');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I11" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" colspan="2" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte11 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte11"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte11" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte11','11');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte11" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%" onchange="MostrarIcono('GaleriaDeArte11','11');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I12" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" colspan="2" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte12 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte12"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte12" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte12','12');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte12" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte12','12');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I13" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte13 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte13"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte13" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte13','13');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte13" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte13','13');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I14" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte14 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte14"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte14" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte14','14');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte14" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte14','14');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I15" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                 <a>   GaleriaDeArte15 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte15"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte15" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte15','15');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte15" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%" onchange="MostrarIcono('GaleriaDeArte15','15');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I16" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte16 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte16"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte16" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte16','16');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte16" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte16','16');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I17" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                 <a>   GaleriaDeArte17 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte17"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte17" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte17','17');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte17" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte17','17');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I18" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                <a>    GaleriaDeArte18 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte18"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte18" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte18','18');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte18" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte18','18');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I19" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte19 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte19"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte19" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte19','19');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte19" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte19','19');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I20" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte20 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte20"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte20" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte20','20');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte20" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte20','20');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I21" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte21 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte21"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte21" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte21','21');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte21" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte21','21');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I22" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                 <a>   GaleriaDeArte22 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte22"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte22" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte22','22');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte22" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte22','22');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I23" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                 <a>   GaleriaDeArte23 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte23"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte23" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte23','23');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte23" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte23','23');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I24" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte24 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte24"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte24" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte24','24');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte24" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte24','24');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I25" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte24 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte25"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte25" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte25','25');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte25" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte25','25');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I26" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte26 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte26"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte26" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte26','26');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte26" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte26','26');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I27" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                 <a>   GaleriaDeArte27 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte27"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte27" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte27','27');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte27" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte27','27');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I28" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte28 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte28"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte28" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte28','28');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte28" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte28','28');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I29" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                 <a>   GaleriaDeArte29 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte29"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte29" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte29','29');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte29" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte29','29');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I30" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte30 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte30"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte30" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte30','30');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte30" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte30','30');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I31" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte31 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte31"class="label" type="text" readonly /></div>
                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte31" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte31','31');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte31" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte31','31');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I32" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte32 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte32"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte32" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte32','32');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte32" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte32','32');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I33" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte33 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte33"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte33" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte33','33');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte33" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte33','33');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I34" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte34 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte34"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte34" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte34','34');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte34" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte34','34')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I35" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte35 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte35"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte35" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte35','35')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte35" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte35','35')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I36" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte36 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte36"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte36" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte36','36')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte36" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte36','36')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I37" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte37 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte37"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte37" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte37','37');">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte37" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte37','37');">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I38" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte38 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte38"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte38" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte38','38')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte38" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte38','38')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I39" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte39 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte39"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte39" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte39','39')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte39" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte39','39')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I40" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte40 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte40"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte40" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte40','40')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte40" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte40','40')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I41" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte41 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte41"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte41" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte41','41')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte41" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte41','41')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I42" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte42 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte42"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte42" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte42','42')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte42" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte42','42')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I43" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte43 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte43"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte43" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte43','43')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte43" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte43','43')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I44" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte44 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte44"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte44" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte44','44')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte44" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte44','44')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I45" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte45 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte45"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte45" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte45','45')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte45" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte45','45')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I46" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte46 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte46"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte46" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte46','46')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte46" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte46','46')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I47" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte47 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte47"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte47" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte47','47')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte47" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte47','47')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I48" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte48 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte48"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte48" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte48','48')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte48" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte48','48')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I49" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte49 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte49"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte49" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte49','49')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte49" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte49','49')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I50" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte50 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte50"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte50" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte50','50')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte50" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte50','50')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I51" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte51 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte51"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte51" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte51','51')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte51" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte51','51')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I52" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte52 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte52"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte52" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte52','52')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte52" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte52','52')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I53" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte53 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte53"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte53" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte53','53')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte53" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte53','53')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I54" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte54 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte54"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte54" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte54','54')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte54" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte54','54')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I55" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte55 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte55"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte55" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte55','55')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte55" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte55','55')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I56" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte56 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte56"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte56" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte56','56')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte56" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte56','56')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I57" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte57 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte57"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte57" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte57','57')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte57" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte57','57')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I58" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte58 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte58"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte58" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte58','58')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte58" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte58','58')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I59" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte59 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte59"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte59" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte59','59')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte59" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte59','59')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I60" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte60 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte60"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte60" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte60','60')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte60" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte60','60')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I61" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte61 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte61"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte61" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte61','61')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte61" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte61','61')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I62" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte62 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte62"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte62" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte62','62')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte62" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte62','62')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I63" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte63 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte63"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte63" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte63','63')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte63" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte63','63')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I64" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte64 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte64"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte64" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte64','64')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte64" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte64','64')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I65" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte65 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte65"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte65" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte65','65')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte65" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte65','65')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I66" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte66 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte66"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte66" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte66','66')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte66" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte66','66')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I67" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte67 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte67"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte67" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte67','67')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte67" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte67','67')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I68" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte68 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte68"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte68" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte68','68')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte68" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte68','68')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I69" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte69 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte69"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte69" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte69','69')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte69" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte69','69')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I70" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte70 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte70"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte70" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte70','70')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte70" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte70','70')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I71" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte71 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte71"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte71" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte71','71')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte71" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte71','71')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I72" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte72 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte72"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte72" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte72','72')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte72" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte72','72')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I73" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                  <a>  GaleriaDeArte73 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte73"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte73" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte73','73')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte73" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte73','73')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I74" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte74 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte74"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte74" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte74','74')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte74" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte74','74')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I75" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte75 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte75"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte75" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte75','75')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte75" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte75','75')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I76" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte76 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte76"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte76" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte76','76')">
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
                    <asp:DropDownList ID="SelectGaleriaDeArte76" runat="server" AutoPostBack="False" CssClass="DropDownList"
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte76','76')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>

        <tr style="width: 100%;">
            <td style="width: 25%;">
                <img id="I77" alt="" style="width: 100%;" src="#" />
            </td>
            <td class="auto-style1" style="text-align: left;">
                <div style="width: 100%">
                   <a> GaleriaDeArte77 &nbsp;&nbsp;&nbsp;</a><div> <a>Price $</a> 
                    <input id="PrecioGaleriaDeArte77"class="label" type="text" readonly /></div>

                </div>
                <div style="width: 100%;">
                    <asp:DropDownList ID="CantidadGaleriaDeArte77" runat="server" AutoPostBack="False"
                        CssClass="DropDownList" Width="15%"
                        onchange="MostrarIcono('GaleriaDeArte77','77')">
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
                        Width="33%"
                        onchange="MostrarIcono('GaleriaDeArte77','77')">
                        <asp:ListItem>items</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </td>
        </tr>


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
                </div>
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

    <div id="divBackground" class="modal">
    </div>
    <div id="divImage">
        <table style="background-color: #2EFEF7; color: Blue; width: 100%; text-align: left;">
            <tr>
                <td align="center" colspan="2" valign="middle">
                    <img id="imgLoader" alt="" src="#" />
                    <img id="imgFull" alt="" src="#" style="display: none; height: 800px; width: 500px" />
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


    <script type="text/javascript">
        function fncsave() {
            MostrarIcono('78');

            var clickButton = document.getElementById("<%= Button1.ClientID %>");
            clickButton.click();

        }
        function check() {
            document.getElementById('<%=HiddenField2.ClientID %>').value = document.getElementById("Text1").value;

        }
        function BorrarIcono(cual) {
            if (cual == "1") {

                document.getElementById('Espera1').style.display = 'none';
            }
        }


function AgregarValor(cual, precio) {
    var control = "#PrecioGaleriaDeArte" + cual;

    if (cual == "1") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte1.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "2") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte2.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "3") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte3.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "4") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte4.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "5") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte5.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "6") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte6.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "7") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte7.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "8") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte8.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "9") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte9.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "10") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte10.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "11") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte11.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "12") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte12.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "13") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte13.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "14") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte14.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "15") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte15.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "16") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte16.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "17") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte17.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "18") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte18.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "19") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte19.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "20") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte20.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "21") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte21.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "22") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte22.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "23") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte23.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "24") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte24.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "25") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte25.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "26") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte26.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "27") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte27.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "28") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte28.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "29") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte29.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "30") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte30.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "31") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte31.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "32") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte32.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "33") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte33.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "34") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte34.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "35") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte35.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "36") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte36.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "37") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte37.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "38") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte38.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "39") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte39.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "40") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte40.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "41") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte41.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "42") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte42.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "43") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte43.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "44") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte44.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "45") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte45.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "46") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte46.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "47") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte47.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "48") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte48.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "49") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte49.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "50") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte50.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "51") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte51.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "52") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte52.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "53") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte53.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "54") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte54.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "55") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte55.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "56") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte56.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "57") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte57.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "58") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte58.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "59") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte59.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "60") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte60.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "61") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte61.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "62") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte62.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "63") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte63.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "64") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte64.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "65") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte65.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "66") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte66.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "67") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte67.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "68") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte68.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "69") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte69.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "70") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte70.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "71") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte71.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "72") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte72.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "73") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte73.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "74") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte74.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "75") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte75.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "76") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte76.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }
    if (cual == "77") {
        var Cuantos = document.getElementById("<%=CantidadGaleriaDeArte77.ClientID%>");
        var cantidad = Cuantos.options[Cuantos.selectedIndex].text;
        precio = precio * cantidad;
        $(control).val(precio.toFixed(2));

    }






}

        function MostrarIcono(_nombre, cual) {

            TraePrecio(_nombre, cual);


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
