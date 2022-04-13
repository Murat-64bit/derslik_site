<%@ Page Title="" Language="C#" MasterPageFile="~/Yetkili.Master" AutoEventWireup="true" CodeBehind="OgretmenListesi.aspx.cs" Inherits="WebSite.OgretmenListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <table class="table table-bordered table-hover">

        <tr>
            <th scope="col">ID</th>
            <th scope="col">AD SOYAD</th>
            <th scope="col">FOTOGRAF</th>
            <th scope="col">BRANS</th>
            <th scope="col">SIFRE</th>
            <th scope="col">OGRETMEN NUMARA</th>
            <th scope="col">ISLEMLER</th>
        </tr>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>
                       <td><%#Eval("id")%></td>
                        <td><%#Eval("ogrtadsoyad")%></td>
                        <td><%#Eval("ogrtfoto")%></td>
                        <td><%#Eval("dersad")%></td>
                        <td><%#Eval("ogrtsifre")%></td>
                        <td><%#Eval("ogrtno")%></td>
                      
                        <td width="160px">
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/OgretmenGuncelle.aspx?id="+Eval("id")%>' runat="server" CssClass="btn alert-success">GÜNCELLE</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink3" NavigateUrl='<%#"~/OgretmenSil.aspx?id="+Eval("id")%>' runat="server" CssClass="btn alert-danger">SİL</asp:HyperLink>
                        </td>
                    </tr>

                </ItemTemplate>

            </asp:Repeater>

        </tbody>
    </table>
</asp:Content>

