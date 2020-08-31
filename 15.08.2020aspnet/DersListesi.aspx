<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersListesi.aspx.cs" Inherits="_15._08._2020aspnet.DersListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 455px;
        }
        .auto-style3 {
            width: 315px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <table class="table table-bordered table-hover">
        <tr>
            <th scope="col" class="auto-style3">DERSID</th>
            <th scope="col" class="auto-style2">DERSAD</th>
            <th scope="col">İŞLEMLER</th>
           
            
        </tr>

        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("DERSID")%></td>
                        <td><%#Eval("DERSAD")%></td>
                       
                    </tr>
                    <td>
                            <asp:HyperLink NavigateUrl='<%#"DersSil.Aspx?DERSID=" + Eval("DERSID")%>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<%#"DersGuncelle.Aspx?DERSID=" + Eval("DERSID")%>' ID="HyperLink2"  runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                        </td>
                </ItemTemplate>
            </asp:Repeater>
          
        </tbody>
    </table>

      <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/DersEkle.aspx" CssClass="btn btn-info">DERS EKLE</asp:HyperLink>


</asp:Content>
