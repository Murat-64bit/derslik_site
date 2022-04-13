<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotListesi.aspx.cs" Inherits="WebSite.NotListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <table class="table table-bordered table-hover">

        <tr>
            <th scope="col">FOTOĞRAF</th>
            <th scope="col">NOTID</th>
            <th scope="col">ÖĞRENCİ ID</th>
            <th scope="col">AD SOYAD</th>
            <th scope="col">DERS AD</th>
            <th scope="col">SINAV1</th>
            <th scope="col">SINAV2</th>
            <th scope="col">SINAV3</th>
            <th scope="col">ORTALAMA</th>
            <th scope="col">DURUM</th>

            <th scope="col">İŞLEMLER</th>
        </tr>
        <tbody>

            <asp:Repeater ID="Repeater1" runat="server">

                <ItemTemplate>

                    <tr>
                        <td>
                        <img class="card-img-top" src="<%#Eval("ogrfotograf") %>" alt="Card image" style="width: 75px; height:75px">
                            </td>
                        <td><%#Eval("notid")%></td>
                        <td><%#Eval("ogrenciid")%></td>
                        <td><%#Eval("Ad Soyad")%></td>

                        <td><%#Eval("Ders")%></td>
                        <td><%#Eval("sinav1")%></td>
                        <td><%#Eval("sinav2")%></td>
                        <td><%#Eval("sinav3")%></td>
                        <td><%#Eval("ortalama")%></td>
                        <td><%#Eval("durum")%></td>



                        <td width="160px">

                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/NotGuncelle.aspx?notid="+Eval("notid")%>' runat="server" CssClass="btn alert-success">GÜNCELLE</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>


            </asp:Repeater>

        </tbody>
    </table>

</asp:Content>
