<%@ Page Title="" Language="C#" MasterPageFile="~/Yetkili.Master" AutoEventWireup="true" CodeBehind="DuyuruGuncelle.aspx.cs" Inherits="WebSite.DuyuruGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="TxtDuyuruID" runat="server">Duyuru ID:</asp:Label>
            </div>
            <asp:TextBox ID="TxtDuyuruID" runat="server" CssClass="form-control"></asp:TextBox>
            <br />

            <div>
                <div>
                    <asp:Label for="TxtDuyuruBaslik" runat="server">Duyuru Başlık:</asp:Label>
                </div>
                <asp:TextBox ID="TxtDuyuruBaslik" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
                <div>
                    <asp:Label for="TxtIcerik" runat="server">Duyuru İçerik:</asp:Label>
                    <textarea id="TextArea1" cols="20" rows="6" runat="server" class="form-control"></textarea>

                </div>

                <br />
                <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-warning" Width="250px" OnClick="Button1_Click" />
    </form>
</asp:Content>
