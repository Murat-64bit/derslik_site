<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="DersKayit.aspx.cs" Inherits="WebSite.DersKayit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label for="txtDers" runat="server">Ders Seçimi Yapınız</asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Oluştur" CssClass="btn btn-success" Width="250px" OnClick="Button1_Click" />
                <br />
                <br />
                <table class="table table-bordered table-hover">

        <tr>
            <th scope="col">ÖĞRENCİ NO</th>
            <th scope="col">DERS AD</th>
            

        </tr>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>
                        <td><%#Eval("ogrno")%></td>
                        <td><%#Eval("dersad")%></td>
                        
            
     
                      
                    </tr>
                </ItemTemplate>
            

            </asp:Repeater>
        </tbody>
    </table>
    </form>
</asp:Content>
