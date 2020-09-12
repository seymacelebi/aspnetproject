<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciGuncelle2.aspx.cs" Inherits="_15._08._2020aspnet.OgrenciGuncelle2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="False">Numara</asp:TextBox>
            </div>
            <br />
            
             <div>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control">Şifre</asp:TextBox>
            </div>
            <br />

            <div>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control">Şifre Tekrar</asp:TextBox>
            </div>
            <br /> 

        </div>


        <asp:Button runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="Unnamed1_Click"   />
    </form>




</asp:Content>
