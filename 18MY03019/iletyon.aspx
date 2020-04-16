<%@ Page Title="" Language="C#" MasterPageFile="~/admintaslak.Master" AutoEventWireup="true" CodeBehind="iletyon.aspx.cs" Inherits="metehanaksoy.iletyon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center text-info" style="width:100%;">İletişim Mesajları </h2>
    <table class="table" style="border-bottom:1px solid #ccc;">
    <tr style="text-align:center;">
        <th></th>
        <th>Kişi İd</th>
        <th>Gönderenin İsmi</th>
        <th>E-Mail</th>
        <th>Telefon</th>
        <th>Konusu</th>
        <th>Adresi</th>
        <th></th>
        
    </tr>

    <asp:Repeater ID="tekrar" runat="server">
        <ItemTemplate>
                <tr> 
                    <td><a href="oku.aspx?id=<%# Eval("iletsmid") %>" class="btn btn-primary">Tamamını oku</a></td>
                    <td><%# Eval("iletsmid") %></td>
                    <td><%# Eval("iletsmad") %></td>
                    <td><%# Eval("iletsmposta") %></td>
                    <td><%# Eval("iletsmtel") %></td>
                    <td></td>
                    <td><%# Eval("iletsmadres") %></td>
                    <td></td>
                    <td><a href="iletsil.aspx?id=<%# Eval("iletsmid") %>" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span>Mesajı Sil</a></td>
                </tr>
       
        </ItemTemplate>
    </asp:Repeater>
    </table> 
</asp:Content>
