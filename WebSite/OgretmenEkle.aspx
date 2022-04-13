<%@ Page Title="" Language="C#" MasterPageFile="~/Yetkili.Master" AutoEventWireup="true" CodeBehind="OgretmenEkle.aspx.cs" Inherits="WebSite.OgretmenEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
        <div class="form-group">

            <div>
                <asp:Label for="txtOgrtAdSoyad" runat="server">Öğretmen Ad Soyad:</asp:Label>
            </div>
            <asp:TextBox ID="txtOgrtAdSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <div>
            </div>

            <asp:Label for="txtOgrtFotograf" runat="server">Öğretmen Fotoğraf:</asp:Label>
            <asp:TextBox ID="txtOgrtFotograf" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div>

            <asp:Label for="txtOgrtDersid" runat="server">Öğretmen Ders ID:</asp:Label>
        </div>
        <asp:TextBox ID="txtOgrtDersid" runat="server" CssClass="form-control"></asp:TextBox>
        <br />

        <div>

            <asp:Label for="txtOgrtSifre" runat="server">Öğretmen Şifre:</asp:Label>
            <asp:TextBox ID="txtOgrtSifre" runat="server" CssClass="form-control"></asp:TextBox>

            <br />
            <asp:Label for="txtOgretmenNumara" runat="server">Öğretmen Numara:</asp:Label>
            <asp:TextBox ID="txtOgretmenNumara" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-success" Width="250px" OnClick="Button1_Click" />
    </form>
</asp:Content>
