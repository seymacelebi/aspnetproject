<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="OgrenciEkle.aspx.cs" Inherits="_15._08._2020aspnet.Ogrenci" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     
    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label  for="TxtOgrAd" runat="server" >Öğrenci Adı</asp:Label>
                <asp:TextBox ID="TxtOgrAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <br />
            <div>
                <asp:Label  for="TxtOgrSoyad" runat="server" >Öğrenci Soyadı</asp:Label>
                <asp:TextBox ID="TxtOgrSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <br />
            <div>
                <asp:Label  for="TxtOgrTelefon" runat="server" >Öğrenci Telefon</asp:Label>
                <asp:TextBox ID="TxtOgrTelefon" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

             <br />
            <div>
                <asp:Label  for="TxtOgrMail" runat="server" >Öğrenci Mail</asp:Label>
                <asp:TextBox ID="TxtOgrMail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
             
              <br />
            <div>
                <asp:Label  for="TxtOgrSıfre" runat="server" >Öğrenci Şifre</asp:Label>
                <asp:TextBox ID="TxtOgrSıfre" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
             
            <br />
            <div>
                <asp:Label  for="TxtOgrFoto" runat="server" >Öğrenci Fotoğraf</asp:Label>
                <asp:TextBox ID="TxtOgrFoto" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
               

           
        </div>
        <asp:Button runat="server" Text="Kaydet" CssClass="btn btn-info" OnClick="Unnamed7_Click" />
    </form>
</asp:Content>
