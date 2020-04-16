<%@ Page Title="" Language="C#" MasterPageFile="~/Taslak.Master" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="metehanaksoy.giris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="margin-left:400px;margin-right:400px;margin-bottom:132px;margin-top:132px;">
    <form id="form1" runat="server" class="form-horizontal" style="border:1px solid #ccc;">
    <h2 class="text-info" style="text-align:center;width:100%;">Giriş Yap</h2>
    
    <div class="form-group">
        <asp:Label CssClass="col-md-4 control-label text-right" ID="Label1" runat="server" Text="Kullanıcı Adı :"></asp:Label>
    <div class="col-md-8">
        <asp:TextBox CssClass="form-control" Width="50%" ID="txtkul" runat="server" autofocus></asp:TextBox>
    </div>
    </div>
    <div class="form-group">
        <asp:Label CssClass="col-md-4 control-label text-right" ID="Label2" runat="server" Text="Şifre :"></asp:Label>
    <div class="col-md-8">
        <asp:TextBox CssClass="form-control" Width="50%" ID="txtsifre" runat="server" 
            TextMode="Password"></asp:TextBox>
    </div>
    </div>
    <div class="form-group">
        <div class="col-md-12 text-center">
           
            <asp:button runat="server"  text="Giriş Yapın" cssclass="btn btn-success" OnClick="Button1_Click" />
        </div>
        <p class="text-center"><b><i>Eğer üyeliğiniz yok ise <a href="kayitol.aspx">Burdan</a> üye olabilirsiniz</i></b></p>
    </div>
    <div class="text-center">
        <asp:Label ID="lbldurum" runat="server" Text=""></asp:Label>
    </div>
</form>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="fother" runat="server">
</asp:Content>
