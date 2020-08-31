<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotListesi.aspx.cs" Inherits="_15._08._2020aspnet.NotListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <table class="table table-bordered table-hover">
        <tr>
             <th scope="col">NOTID</th>
            <th scope="col">ÖĞRENCİ ID</th>
            <th scope="col">AD SOYAD </th>
            <th scope="col">DERS ADI</th>
            <th scope="col">SINAV 1</th>
            <th scope="col">SINAV 2</th>
            <th scope="col">SINAV 3</th>
            <th scope="col">ORTALAMA</th>
            <th scope="col">DURUM</th>
        </tr>

        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("NOTID")%></td>
                        <td><%#Eval("OGRENCIID")%></td>
                        <td><%#Eval("OGRENCIADSOYAD")%></td>
                        <td><%#Eval("DERSAD")%></td>
                        <td><%#Eval("EXAM1")%></td>
                        <td><%#Eval("EXAM2")%></td>
                        <td><%#Eval("EXAM3")%></td>
                         <td><%#Eval("AVERAGE")%></td>
                         <td><%#Eval("STATUS")%></td>
                        
                        <td>
                            <asp:HyperLink  NavigateUrl='<%#"NotGuncelle.Aspx?NOTID=" + Eval("NOTID")%>' ID="HyperLink1"  runat="server" CssClass="btn btn-success">NOT GUNCELLE</asp:HyperLink>
                           <%-- <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/OgrenciGuncelle.aspx?OGRID="+ Eval("OGRID")%>' runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>--%>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>



</asp:Content>
