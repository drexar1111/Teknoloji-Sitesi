<%@ Page Title="" Language="C#" MasterPageFile="~/admintaslak.Master" AutoEventWireup="true" CodeBehind="reftum.aspx.cs" Inherits="metehanaksoy.reftum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-1"  style="padding-top:23px;">
        <a href="refekle.aspx" class="btn btn-primary" >Ekle</a>
    </div>
    <div class="col-md-11">
        <h2 class="text-center text-info" style="width:100%;">Tüm Referanslar </h2>
    </div>
    
    <table class="table" style="border-bottom:1px solid #ccc;">
    <tr>
        <th></th>
        <th>Referans İd</th>
        <th>Referans İsmi</th>
        <th>Fotoğrafı</th>
        <th>Referans Tarihi</th>
        <th>Kurum Adresi</th>
        <th></th>
        
    </tr>

    <asp:Repeater ID="tekrar" runat="server">
        <ItemTemplate>
                <tr>
                    <td><a href="refgncl.aspx?id=<%# Eval("refid") %>" class="btn btn-success"><span class="glyphicon glyphicon-refresh"></span>Güncelle</a></td>
                    <td><%# Eval("refid") %></td>
                    <td><%# Eval("refad") %></td>
                    <td><%# Eval("fotourl") %></td>
                    <td><%# Eval("reftarih") %></td>
                    <td><%# Eval("fotoadres") %></td>
                    <td></td>
                    <td><a href="refsil.aspx?id=<%# Eval("refid") %>" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span>Sil</a></td>
                </tr>
       
        </ItemTemplate>
    </asp:Repeater>
    </table> 
</asp:Content>
