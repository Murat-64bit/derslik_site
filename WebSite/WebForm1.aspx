<%@ Page Title="" Language="C#" MasterPageFile="~/Yetkili.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebSite.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered table-hover">

        <tr>
            <th scope="col">ID</th>
            <th scope="col">NUMARA</th>
            <th scope="col">AD</th>
            <th scope="col">SOYAD</th>
            <th scope="col">TELEFON</th>
            <th scope="col">MAIL</th>
            <th scope="col">SIFRE</th>
            <th scope="col">ISLEMLER</th>
        </tr>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>
                        <td><%#Eval("ogrid")%></td>
                        <td><%#Eval("ogrno")%></td>
                        <td><%#Eval("ograd")%></td>
                        <td><%#Eval("ogrsoyad")%></td>
                        <td><%#Eval("ogrtelefon")%></td>
                        <td><%#Eval("ogrmail")%></td>
                        <td><%#Eval("ogrsifre")%></td>
                        <td width="160px">
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/OgrenciSil.aspx?ogrid="+Eval("ogrid")%>' runat="server" CssClass="btn alert-danger">SİL</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/OgrenciGuncelle.aspx?ogrid="+Eval("ogrid")%>' runat="server" CssClass="btn alert-success">GÜNCELLE</asp:HyperLink>
                        </td>
                    </tr>

                </ItemTemplate>

            </asp:Repeater>

        </tbody>
    </table>
</asp:Content>
<%--<th scope="row">1</th>--%>

