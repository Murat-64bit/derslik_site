<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="OgretmenDuyuruListesi.aspx.cs" Inherits="WebSite.OgretmenDuyuruListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered table-hover">

        <tr>
            <th scope="col">ID</th>
            <th scope="col">BASLIK</th>
            <th scope="col">ICERIK</th>
            <th scope="col">OGRETMEN</th>
           
        </tr>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>
                        <td><%#Eval("duyuruid")%></td>
                        <td><%#Eval("duyurubaslik")%></td>
                        <td><%#Eval("duyuruicerik")%></td>
                        <td><%#Eval("duyuruogrt")%></td>
    
                      
                    </tr>

                </ItemTemplate>
            

            </asp:Repeater>

        </tbody>
    </table>
</asp:Content>
