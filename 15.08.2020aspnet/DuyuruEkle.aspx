﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruEkle.aspx.cs" Inherits="_15._08._2020aspnet.DuyuruEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label  for="DropDownList1" runat="server" >Duyuru Öğretmen</asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
               </div>
            <br />
            <div>
                <asp:Label  for="TxtDuyuruBaslık" runat="server" >Duyuru Başlık</asp:Label>
                <asp:TextBox ID="TxtDuyuruBaslık" runat="server" CssClass="form-control"></asp:TextBox>

            <br />
            <div>
                <asp:Label  for="TextArea1" runat="server" >Duyuru İçerik</asp:Label>
                <textarea id="TextArea1" cols="20" rows="5" class="form-control" runat="server"></textarea>
            </div>
 
        </div>

            <asp:Button runat="server" Text="Oluştur" CssClass="btn btn-info" OnClick="Unnamed4_Click"  />
    </form>

</asp:Content>
