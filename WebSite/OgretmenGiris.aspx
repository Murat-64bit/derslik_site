<%@ Page Title="" Language="C#" MasterPageFile="~/Giris.Master" AutoEventWireup="true" CodeBehind="OgretmenGiris.aspx.cs" Inherits="WebSite.YetkiliGiris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
      <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="wrapper fadeInDown" style="text-align">
  <div id="formContent" style="top: 0px; left: 0px">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
      <asp:Label ID="Label1" runat="server" CssClass="fadeIn second" Text="Öğretmen Giriş"></asp:Label>
    </div>

    <!-- Login Form -->
    <form>
   <asp:TextBox ID="txtLogin" CssClass="fadeIn second" placeholder="Numara" runat="server"></asp:TextBox>
   <asp:TextBox ID="txtPass" CssClass="fadeIn second" placeholder="Şifre" runat="server"></asp:TextBox>
      <asp:Button ID="Button1" CssClass="fadeIn fourth" runat="server" Text="Giriş" OnClick="Button1_Click" />
      
    </form>

    

  </div>
</div>
</asp:Content>
