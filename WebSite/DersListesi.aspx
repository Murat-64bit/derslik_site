<%@ Page Title="" Language="C#" MasterPageFile="~/Yetkili.Master" AutoEventWireup="true" CodeBehind="DersListesi.aspx.cs" Inherits="WebSite.DersListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <table class="table table-bordered table-hover">

        <tr>
            <th scope="col">DERS ID</th>
            <th scope="col">DERS AD</th>
            <th scope="col">İŞLEMLER</th>

        </tr>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>
                        <td><%#Eval("dersid")%></td>
                        <td><%#Eval("dersad")%></td>
                        
            
               
      <td width="160px">
                           
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/DersSil.aspx?dersid="+Eval("dersid")%>' runat="server" CssClass="btn alert-danger">SİL</asp:HyperLink>
                        
                        
                           
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/DersGuncelle.aspx?dersid="+Eval("dersid")%>' runat="server" CssClass="btn alert-success">GÜNCELLE</asp:HyperLink>
                        </td> 
                      
                    </tr>
                </ItemTemplate>
            

            </asp:Repeater>
        </tbody>
    </table>
                <asp:HyperLink ID="HyperLink3" width="180px" NavigateUrl="~/DersEkle.aspx" CssClass="btn alert-info" runat="server">Ders Ekle</asp:HyperLink>

</asp:Content>
