<%@ Page Title="" Language="C#" MasterPageFile="~/admintaslak.Master" AutoEventWireup="true" CodeBehind="refekle.aspx.cs" Inherits="metehanaksoy.refekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center text-info" style="width:100%;">Yeni Referans Ekle</h2>
    <form runat="server" id="form1">
        <table class="table">
            <tr >
                <td>Referans Adı</td>
                <td>
                    <asp:TextBox ID="txtad" CssClass="form-control" runat="server" autofocus></asp:TextBox>
                </td>
            </tr>
            <tr style="margin-bottom:100px;">
                <td>Referans Fotoğrafı</td>
                <td>
                   <asp:FileUpload ID="dosya"  runat="server" />
            </tr>
            <tr>
                <td>Referans Tarihi</td>
                <td>
                    <asp:TextBox ID="txttarih" CssClass="form-control" runat="server"></asp:TextBox>
                  
                </td>
            </tr>
            <tr>
                <td>Kurum Adresi</td>
                <td>
                    <asp:TextBox ID="krmadrs" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td class="text-right">
                    <asp:Button ID="Button1" CssClass="btn btn-info" runat="server" Text="Kaydet" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr  class="text-right">
                
                <td >
                    <asp:Image ID="Image1" CssClass="img-responsive" runat="server" />
                </td>
            </tr>
            <tr  class="text-right">
                
                <td>
                    <asp:Label ID="lblhata" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
