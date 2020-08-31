<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersEkle.aspx.cs" Inherits="_15._08._2020aspnet.DersEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
           

            <div>
                <asp:Label  for="TxtDersAdı" runat="server" >Ders Adı </asp:Label>
                <asp:TextBox ID="TxtDersAdı" runat="server" CssClass="form-control"></asp:TextBox>

        
        </div>
 </div>
            <asp:Button runat="server" Text="Oluştur" CssClass="btn btn-info" OnClick="Unnamed4_Click"  />
    </form>


</asp:Content>
