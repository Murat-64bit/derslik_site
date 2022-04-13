<%@ Page Title="" Language="C#" MasterPageFile="~/Yetkili.Master" AutoEventWireup="true" CodeBehind="DersEkle.aspx.cs" Inherits="WebSite.DersEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
       <form id="Form1" runat="server">
        <div class="form-group">
            <div>
            <asp:Label for="txtDersAd" runat="server">Ders AD:</asp:Label>
                </div>
            <asp:TextBox ID="txtDersAd" runat="server" CssClass="form-control"></asp:TextBox> 
              <br />
         
       </div>
        <asp:Button ID="Button1" runat="server" Text="Oluştur" CssClass="btn btn-success" width="250px" OnClick="Button1_Click"/>
    </form>
</asp:Content>
