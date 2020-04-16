<%@ Page Title="" Language="C#" MasterPageFile="~/admintaslak.Master" AutoEventWireup="true" CodeBehind="uyeyon.aspx.cs" Inherits="metehanaksoy.uyeyon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2 class="text-center text-info" style="width:100%;">Kayıtlı Üyeler</h2>
    <table class="table" style="border-bottom:1px solid #ccc;">
    <tr>
        <th></th>
        <th>Üye İd</th>
        <th>Üye İsmi</th>
        <th>Üye Şifresi</th>
        <th>Üye E-Postası</th>
        <th>Üye Telefon Numarası</th>
        <th>Üye Adresi</th>
        <th>Aktif/Pasif</th>
        
    </tr>

    <asp:Repeater ID="tekrar" runat="server">
        <ItemTemplate>
                <tr>
                    <td><a href="uyesil.aspx?id=<%# Eval("uyeid") %>" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span> Üyeyi Sil</a></td>
                    <td><%# Eval("uyeid") %></td>
                    <td><%# Eval("uyead") %></td>
                    <td><%# Eval("uyesfr") %></td>
                    <td><%# Eval("uyeposta") %></td>
                    <td><%# Eval("uyetel") %></td>
                    <td><%# Eval("uyeadres") %></td>
                    <td><%# Eval("akpas") %></td>
                    
                        

                    
                </tr>
       
        </ItemTemplate>
    </asp:Repeater>
    </table> 
</asp:Content>
