<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPaneli.aspx.cs" Inherits="_15._08._2020aspnet.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style2 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            margin-left: 105px;
        }
        .auto-style3 {
            height: 121px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style=" margin:auto; text-align:center; background-image: url('11.jpg');">     <br />
            <h2>Udemy Öğrenci Not Sistemi</h2>
             <br />
             <br />
             <div style="margin:auto; text-align:center; background-image: url('11.jpg');">
            <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" ImageUrl="~/images.png" /> </div> <br />
             <br />
              <div>
                <asp:Label  for="TxtNumara" runat="server" >Kullanıcı Adı </asp:Label>
                <asp:TextBox ID="TxtNumara" runat="server" CssClass="auto-style2" Width="900px" text-align="center" Height="42px" ></asp:TextBox>

        </div>
            <br />

              <div>
                <asp:Label  for="Txtsifre" runat="server" >Şifre</asp:Label>
                <asp:TextBox ID="Txtsifre" runat="server" CssClass="auto-style2" Width="900px" text-align="center" Height="42px" TextMode="Password" ></asp:TextBox>

        </div>
        <br />
            <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="btn btn-default" Width="700px" OnClick="Button1_Click"  />
             <br />
             <br />
            <asp:Button ID="Button3" runat="server" Text="Öğretmen Girişi" CssClass="btn btn-danger" Width="700px" OnClick="Button3_Click"  />
             <br />
              <br />
            <asp:Button ID="Button2" runat="server" Text="Şifremi Unuttum" CssClass="btn btn-warning" Width="350px"  />
             
            <asp:Button ID="Button4" runat="server" Text="Yardım" CssClass="btn btn-info" Width="350px"  />

   </div>
    </form>
</body>
</html>
