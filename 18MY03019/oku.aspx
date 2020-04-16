<%@ Page Title="" Language="C#" MasterPageFile="~/admintaslak.Master" AutoEventWireup="true" CodeBehind="oku.aspx.cs" Inherits="metehanaksoy.oku" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center text-info" style="width:100%;">İletişim Mesajları </h2>
    <table class="table" style="border-bottom:1px solid #ccc;">
    <asp:Repeater ID="tekrar" runat="server">
        <ItemTemplate>
                <tr> 
                    <td>Gönderen İsim:</td>
                    <td><%# Eval("iletsmad") %></td>
               </tr>
                <tr>
                    <td>Göndrenen E-Mail:</td>
                    <td><%# Eval("iletsmposta") %></td>
                </tr>
                <tr>
                    <td>Gönderen Telelfon Numarası:</td>
                    <td><%# Eval("iletsmtel") %></td>
                </tr>
                 <tr>
                     <td>Gönderen Adres:</td>
                    <td><%# Eval("iletsmadres") %></td>
                </tr>
                <tr>
                    <td>Konu</td>
                    <td><%# Eval("iletsmkonu") %></td>
                </tr>
                <tr>
                    <td></td>
                    <td style="text-align:right;"><a href="iletsil.aspx?id=<%# Eval("iletsmid") %>" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span>Mesajı Sil</a></td>
                </tr>
        </ItemTemplate>
    </asp:Repeater>
    </table> 
</asp:Content>
