<%@ Page Title="" Language="C#" MasterPageFile="~/admintaslak.Master" AutoEventWireup="true" CodeBehind="menuyon.aspx.cs" Inherits="metehanaksoy.menuyon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="text-center text-info" style="width:100%;">Menüler </h2>
    <table class="table" style="border-bottom:1px solid #ccc;">
    <tr>
        <th></th>
        <th>Menü İd</th>
        <th>Menü İsmi</th>
        <th>Fotoğrafı</th>
        <th>Konusu</th>    
    </tr>

    <asp:Repeater ID="tekrar" runat="server">
        <ItemTemplate>
                <tr>
                    <td><a href="menugncl.aspx?id=<%# Eval("menuid") %>" class="btn btn-success"><span class="glyphicon glyphicon-refresh"></span>Güncelle</a></td>
                    <td><%# Eval("menuid") %></td>
                    <td><%# Eval("menuad") %></td>
                    <td><%# Eval("menufoto") %></td>
                    <td></td>
                </tr>
       
        </ItemTemplate>
    </asp:Repeater>
    </table> 
</asp:Content>
