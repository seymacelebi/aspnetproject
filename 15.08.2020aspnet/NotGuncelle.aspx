<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotGuncelle.aspx.cs" Inherits="_15._08._2020aspnet.NotGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <form id="Form1" runat="server">
        <div class="form-group">

             <div>
                <asp:Label  for="TxtDersAdı" runat="server" >Ders Adı</asp:Label>
                <asp:DropDownList ID="TxtDersAdı" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <br />

            <div>
                <asp:Label  for="TxtOgrId" runat="server" >Öğrenci ID</asp:Label>
                <asp:TextBox ID="TxtOgrId" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <br />
            <div>
                <asp:Label  for="TxtOgrAdSoyad" runat="server" >Öğrenci Adı Soyadı</asp:Label>
                <asp:TextBox ID="TxtOgrAdSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <br />
            <div>
                <asp:Label  for="TxtSınav1" runat="server" >Sınav 1</asp:Label>
                <asp:TextBox ID="TxtSınav1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

             <br />
            <div>
                <asp:Label  for="TxtSınav2" runat="server" >Sınav 2</asp:Label>
                <asp:TextBox ID="TxtSınav2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
             
              <br />
            <div>
                <asp:Label  for="TxtSınav3" runat="server" >Sınav 3</asp:Label>
                <asp:TextBox ID="TxtSınav3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
             
            <br />
            <div>
                <asp:Label  for="TxtOrtalama" runat="server" >Ortalama</asp:Label>
                <asp:TextBox ID="TxtOrtalama" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
               
            <br />
            <div>
                <asp:Label  for="TxtDurum" runat="server" >Durum</asp:Label>
                <asp:TextBox ID="TxtDurum" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

           
        </div>
        
         <asp:Button runat="server" Text="Hesapla" CssClass="btn btn-toolbar" OnClick="Unnamed9_Click"  />

         <asp:Button runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="Unnamed10_Click"  />
    </form>
  




</asp:Content>
