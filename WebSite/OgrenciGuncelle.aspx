<%@ Page Title="" Language="C#" MasterPageFile="~/Yetkili.Master" AutoEventWireup="true" CodeBehind="OgrenciGuncelle.aspx.cs" Inherits="WebSite.OgrenciGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
        <div class="form-group">
                <div>
            <asp:Label for="TxtOgrID" runat="server">Öğrenci ID:</asp:Label>
                </div>
            <asp:TextBox ID="TxtOgrID" runat="server" CssClass="form-control"></asp:TextBox> 
              <br />    
           
            <div>
            <div>
            <asp:Label for="TxtOgrAd" runat="server">Öğrenci Adı:</asp:Label>
                </div>
            <asp:TextBox ID="TxtOgrAd" runat="server" CssClass="form-control"></asp:TextBox> 
              <br />
            
            <div>
            <asp:Label for="TxtOgrSoyad" runat="server">Öğrenci Soyadı:</asp:Label>
            <asp:TextBox ID="TxtOgrSoyad" runat="server" CssClass="form-control"></asp:TextBox>   
                     <div>
                         <br />
            <asp:Label for="TxtOgrNO" runat="server">Öğrenci No:</asp:Label>
                </div>
            <asp:TextBox ID="TxtOgrNO" runat="server" CssClass="form-control"></asp:TextBox> 
        
                </div>
            <br />
            <asp:Label for="TxtOgrTelefon" runat="server">Öğrenci Telefon:</asp:Label>
            <asp:TextBox ID="TxtOgrTelefon" runat="server" CssClass="form-control"></asp:TextBox>
        </div>    
        <div>
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
        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-info" width="250px" OnClick="Button1_Click"/>
            </div>
    </form>
</asp:Content>
