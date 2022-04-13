<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotGuncelle.aspx.cs" Inherits="WebSite.NotGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
        <div class="form-group">
       <div>
           <asp:Label for="txtNotid" runat="server">Not ID:</asp:Label>
                    </div>
                    <asp:TextBox ID="txtNotid" ReadOnly="true" runat="server" CssClass="form-control"></asp:TextBox>
                    <br />
                <div>
                    <div>
                        <asp:Label for="txtOGRid" runat="server">Öğrenci ID:</asp:Label>
                    </div>
                    <asp:TextBox ID="txtOGRid" ReadOnly="true" runat="server" CssClass="form-control"></asp:TextBox>
                    <br />
                    <div>
                        <asp:Label for="txtdersid" runat="server">Öğrenci Ders ID:</asp:Label>
                        <asp:TextBox ID="txtdersid" ReadOnly="true" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <br />
                    <asp:Label for="txtsinav1" runat="server">Sınav1:</asp:Label>
                    <asp:TextBox ID="txtsinav1" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div>
                    <br />

                    <asp:Label for="txtsinav2" runat="server">Sınav2:</asp:Label>
                    <asp:TextBox ID="txtsinav2" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div>
                    <br />
                    <asp:Label for="txtsinav3" runat="server">Sınav3:</asp:Label>
                    <asp:TextBox ID="txtsinav3" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <br />
                <div>

                    <asp:Label for="txtortalama" runat="server">Ortalama:</asp:Label>
                    <asp:TextBox ID="txtortalama" ReadOnly="true" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <br />
                <asp:Label for="chkdurum" runat="server">Durum:</asp:Label>
                <asp:CheckBox ID="chkdurum" ReadOnly="true" runat="server" />
            </div>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Hesapla" CssClass="btn btn-toolbar" Width="250px" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Güncelle" CssClass="btn btn-info" Width="250px" OnClick="Button2_Click" />
    </form>
</asp:Content>
