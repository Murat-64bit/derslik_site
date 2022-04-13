<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeBehind="OgrenciNotu.aspx.cs" Inherits="WebSite.OgrenciNotu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <table class="table table-bordered table-hover">

        <tr>
            <th scope="col">ÖĞRENCİ ID</th>
            <th scope="col">DERS AD</th>
            <th scope="col">SINAV1</th>
            <th scope="col">SINAV2</th>
            <th scope="col">SINAV3</th>
            <th scope="col">ORTALAMA</th>
            <th scope="col">DURUM</th>
        </tr>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>
                        <td><%#Eval("ogrenciid")%></td>
                        <td><%#Eval("dersad")%></td>
                        <td><%#Eval("sinav1")%></td>
                        <td><%#Eval("sinav2")%></td>
                        <td><%#Eval("sinav3")%></td>
                        <td><%#Eval("ortalama")%></td>
                        <td><%#Eval("durum")%></td>
                    </tr>
                </ItemTemplate>
            

            </asp:Repeater>

        </tbody>
    </table>
</asp:Content>
