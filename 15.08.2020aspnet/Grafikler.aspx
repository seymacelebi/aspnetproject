<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="Grafikler.aspx.cs" Inherits="_15._08._2020aspnet.Grafikler" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 519px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <table class="table table-bordered table-hover">
    <form id="form1" runat="server">
        <table class="nav-justified">
            <tr>
                <td class="auto-style1">
                    <asp:Chart ID="Chart1" runat="server" Width="400px" BorderlineColor="Window" Palette="Grayscale">
                        <series>
                            <asp:Series Name="NOTLAR" ChartType="Area" YValuesPerPoint="4">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
                <td>
                    <asp:Chart ID="Chart3" runat="server" Width="400px" Palette="SeaGreen">
                        <series>
                            <asp:Series Name="DERSAD" ChartType="Doughnut">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Chart ID="Chart4" runat="server" Width="400px" Palette="Pastel">
                        <series>
                            <asp:Series Name="CİNSİYET" ChartType="Pie" LegendText="#LEGENDTEXT">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
                <td>
                    <asp:Chart ID="Chart5" runat="server" Width="400px" Palette="SemiTransparent">
                        <series>
                            <asp:Series Name="DERSLER" ChartType="Bar" YValuesPerPoint="4">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
            </tr>
        </table>
           </form>
       
      

      </form>

            </table>



</asp:Content>
