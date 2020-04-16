<%@ Page Title="" Language="C#" MasterPageFile="~/Taslak.Master" AutoEventWireup="true" CodeBehind="referans.aspx.cs" Inherits="metehanaksoy.referans" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image:url('bs/css/rsm/bg.jpg');background-repeat:repeat; background-attachment:fixed;background-position:center;margin-top:0px;padding-top:0px;"  >
    <table class="container">
        <br />
        <br />
        <h2 style="color:#fff;text-align:center;"><b>Referanslar</b></h2>
        <br />
        <br />
    <asp:Repeater ID="tekrar" runat="server">
        <ItemTemplate>
                    
                <tr class="col-md-3 text-center" style="border:1px solid #fff;padding-left:50px;" >
                    <td style="height:200px;width:200px;line-height:200px;"><a href="<%# Eval("fotoadres") %>"><img src="bs/css/rsm/ref/<%# Eval("fotourl") %>" class="img-responsive"  /></a></td>
                </tr>

        </ItemTemplate>
    </asp:Repeater>
        
    </table>
        <br />
        <br />
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="fother" runat="server">
</asp:Content>
