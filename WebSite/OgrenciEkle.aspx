<%@ Page Title="" Language="C#" MasterPageFile="~/Yetkili.Master" AutoEventWireup="true" CodeBehind="OgrenciEkle.aspx.cs" Inherits="WebSite.OgrenciEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
        <div class="form-group">
        
            <div>
                <asp:Label for="TxtOgrAd" runat="server">Öğrenci Adı:</asp:Label>
            </div>
            <asp:TextBox ID="TxtOgrAd" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <div>   
             
            </div>

            <asp:Label for="TxtOgrSoyad" runat="server">Öğrenci Soyadı:</asp:Label>
            <asp:TextBox ID="TxtOgrSoyad" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
           <div>
             
                <asp:Label for="TxtOgrNo" runat="server">Öğrenci No:</asp:Label>
            </div>
            <asp:TextBox ID="TxtOgrNo" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            
        <div>

            <asp:Label for="TxtOgrTelefon" runat="server">Öğrenci Telefonu:</asp:Label>
            <asp:TextBox ID="TxtOgrTelefon" runat="server" CssClass="form-control"></asp:TextBox>

            <br />
            <asp:Label for="TxtOgrMail" runat="server">Öğrenci Mail:</asp:Label>
            <asp:TextBox ID="TxtOgrMail" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <br />
            <asp:Label for="TxtOgrSifre" runat="server">Öğrenci Şifre:</asp:Label>
            <asp:TextBox ID="TxtOgrSifre" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <div>

            <asp:Label for="TxtOgrFoto" runat="server">Öğrenci Fotoğraf Linki:</asp:Label>
            <asp:TextBox ID="TxtOgrFoto" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-success" Width="250px" OnClick="Button1_Click" />
    </form>
</asp:Content>
