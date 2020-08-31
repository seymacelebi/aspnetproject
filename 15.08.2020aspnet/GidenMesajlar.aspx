<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="GidenMesajlar.aspx.cs" Inherits="_15._08._2020aspnet.GidenMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">ALICI</th>
            <th scope="col">AD SOYAD</th>
            <th scope="col">BAŞLIK</th>
            <th scope="col">ICERIK</th>
            <th scope="col">TARİH</th>
            <th scope="col">İŞLEMLER</th>


        </tr>

        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("MESSAGEID")%></td>
                        <td><%#Eval("OGRENCIADSOYAD")%></td>
                        <td><%#Eval("RECEIVER")%></td>
                        <td><%#Eval("TITLE")%></td>
                        <td><%#Eval("CONTENT_")%></td>
                        <td><%#Eval("TARIH")%></td>

                        <%--                        <td>
                            <asp:HyperLink NavigateUrl='<%#"DuyuruSil.Aspx?ANNOUNCEMENTID=" + Eval("ANNOUNCEMENTID")%>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<%#"DuyuruGuncelle.Aspx?ANNOUNCEMENTID=" + Eval("ANNOUNCEMENTID")%>' ID="HyperLink2" runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                        </td>--%>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>



</asp:Content>
