<%@ Page Title="" Language="C#" MasterPageFile="~/Yetkili.Master" AutoEventWireup="true" CodeBehind="DuyuruListesi.aspx.cs" Inherits="WebSite.DuyuruListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      <table class="table table-bordered table-hover">

        <tr>
            <th scope="col">ID</th>
            <th scope="col">BASLIK</th>
            <th scope="col">ICERIK</th>
            <th scope="col">OGRETMEN</th>
            <th scope="col">ISLEMLER</th>
        </tr>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>
                        <td><%#Eval("duyuruid")%></td>
                        <td><%#Eval("duyurubaslik")%></td>
                        <td><%#Eval("duyuruicerik")%></td>
                        <td><%#Eval("duyuruogrt")%></td>
    
                        <td width="160px">
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/DuyuruSil.aspx?duyuruid="+Eval("duyuruid")%>'  runat="server" CssClass="btn alert-danger">SİL</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/DuyuruGuncelle.aspx?duyuruid="+Eval("duyuruid")%>' runat="server" CssClass="btn alert-success">GÜNCELLE</asp:HyperLink>
                        </td>
                    </tr>

                </ItemTemplate>
            

            </asp:Repeater>

        </tbody>
    </table>
</asp:Content>
