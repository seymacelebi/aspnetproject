<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="MesajOlustur.aspx.cs" Inherits="_15._08._2020aspnet.MesajOlustur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="TxtGonderen" runat="server">Gönderen</asp:Label>
                <asp:TextBox ID="TxtGonderen" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>
        </div>

        <div>
            <asp:Label for="TxtAlıcı" runat="server">Alıcı</asp:Label>
            <asp:TextBox ID="TxtAlıcı" runat="server" CssClass="form-control"></asp:TextBox>

            <br />
            <div>
                <asp:Label for="TxtMesajBaslık" runat="server">Mesaj Başlık</asp:Label>
                <asp:TextBox ID="TxtMesajBaslık" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <br />
            <div>
                <asp:Label for="TxtMesajIcerık" runat="server">Mesaj İçerik</asp:Label>
                <textarea id="TxtMesajIcerık" cols="20" rows="5" class="form-control" runat="server"></textarea>
            </div>

            <br />
           <%-- <div>
                <asp:Label for="TxtMesajTarih" runat="server">Mesaj Tarih</asp:Label>
                <asp:TextBox ID="TxtMesajTarih" runat="server" CssClass="form-control"></asp:TextBox>
            </div>--%>

        </div>

        <asp:Button runat="server" Text=" Mesaj Oluştur" CssClass="btn btn-info" OnClick="Unnamed5_Click" />
    </form>

</asp:Content>
