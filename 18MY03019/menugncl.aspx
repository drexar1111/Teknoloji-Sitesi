<%@ Page Title="" Language="C#" MasterPageFile="~/admintaslak.Master" AutoEventWireup="true" CodeBehind="menugncl.aspx.cs" Inherits="metehanaksoy.menugncl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server" id="form1">
        <table class="table">
            <tr>
                <td>Menü ID</td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="txtid" runat="server" Enabled="false"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Menü İsim</td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="txtad" runat="server" autofocus></asp:TextBox></td>
            </tr>
            
            <tr>
                <td>Menü Fotoğraf Yolu</td>
                <td>
                     <asp:TextBox CssClass="form-control" ID="txtfoto" runat="server" Enabled="false"></asp:TextBox>
                    <asp:FileUpload ID="dosya" CssClass="pull-right" runat="server" />

                </td>
            </tr>
            <tr>
                <td>Menü Konusu</td>
                <td>
                    <asp:TextBox CssClass="form-control" TextMode="MultiLine" ID="txtkonu" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Menü Kısa Konusu(Anasayfa)</td>
                <td class="form-gru">
                    <asp:TextBox CssClass="form-control" TextMode="MultiLine" ID="txtkısa" runat="server" ></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" class="text-right">
                    <asp:Button CssClass="btn btn-info" ID="Button1" runat="server" Text="Güncelle" 
                        onclick="Button1_Click" /></td>
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
