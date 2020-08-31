<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruListesi.aspx.cs" Inherits="_15._08._2020aspnet.DuyuruListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">BAŞLIK</th>
            <th scope="col">ICERIK</th>
            <th scope="col">PAYLAŞAN KİŞİ</th>
            
        </tr>

        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("ANNOUNCEMENTID")%></td>
                        <td><%#Eval("ANNOUNCEMENTTITLE")%></td>
                        <td><%#Eval("ANNOUNCEMENTCONTENT_")%></td>
                        <td><%#Eval("ANNOUNCES")%></td>
                     
                        <td>
                            <asp:HyperLink NavigateUrl='<%#"DuyuruSil.Aspx?ANNOUNCEMENTID=" + Eval("ANNOUNCEMENTID")%>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<%#"DuyuruGuncelle.Aspx?ANNOUNCEMENTID=" + Eval("ANNOUNCEMENTID")%>' ID="HyperLink2"  runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>


</asp:Content>
