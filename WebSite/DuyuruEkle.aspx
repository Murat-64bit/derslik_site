<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruEkle.aspx.cs" Inherits="WebSite.DuyuruEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <form id="Form1" runat="server">
        <div class="form-group">
            <div>
            <asp:Label for="TxtDuyuruBaslik" runat="server">Duyuru Başlığı:</asp:Label>
                </div>
            <asp:TextBox ID="TxtDuyuruBaslik" runat="server" CssClass="form-control"></asp:TextBox> 
              <br />
            <div>
                            </div>
           
            <asp:Label for="TxtDuyuruIcerik" runat="server">Duyuru İçerği:</asp:Label>
            <textarea id="TextArea1" cols="20" rows="6" runat="server" class="form-control"></textarea>
        </div>    
        <div>
            <asp:Label for="TxtOgretmenID" runat="server">Öğretmen ID:</asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Oluştur" CssClass="btn btn-success" width="250px" OnClick="Button1_Click"/>
    </form>
</asp:Content>
