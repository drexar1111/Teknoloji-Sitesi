<%@ Page Title="" Language="C#" MasterPageFile="~/admintaslak.Master" AutoEventWireup="true" CodeBehind="refgncl.aspx.cs" Inherits="metehanaksoy.refgncl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form runat="server" id="form1">
        <table class="table">
            <tr>
                <td>Referans ID</td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="txtid" runat="server" Enabled="false"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Referans İsmi</td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="txtad" runat="server"></asp:TextBox></td>
            </tr>
            
            <tr>
                <td>Fotoğraf</td>
                <td>
                     <asp:TextBox CssClass="form-control" ID="txtfoto" runat="server" Enabled="false"></asp:TextBox>
                    <asp:FileUpload ID="dosya" CssClass="pull-right" runat="server" />

                </td>
            </tr>
            <tr>
                <td>Referans Tarihi</td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="txttarih" runat="server" ></asp:TextBox></td>
            </tr>
            <tr>
                <td>Kurum Adresi</td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="krmadrs" runat="server"></asp:TextBox></td>
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
