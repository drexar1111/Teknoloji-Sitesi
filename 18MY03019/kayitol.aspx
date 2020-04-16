<%@ Page Title="" Language="C#" MasterPageFile="~/Taslak.Master" AutoEventWireup="true" CodeBehind="kayitol.aspx.cs" Inherits="metehanaksoy.kayitol" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
        textarea 
        {
            resize:none;
        }
        .stil{
            font-size:16px;
            color:red;
            font-style:italic;
        }
    </style>
    <form runat="server" class="form-horizontal" style="width:80%;">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="True" ClientIDMode="Inherit"></asp:ScriptManager>
        <h2 style=" text-align:center;margin-left:250px;" class="text-info">Üye Kayıt Formu</h2>
        <div class="form-group">
            <asp:Label ID="Label1" CssClass=" col-md-4 control-label" runat="server" Text="Kullanıcı Adı :"></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txtkadi" CssClass="form-control" runat="server" autofocus></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label2" CssClass="col-md-4 control-label" runat="server" Text="Şifre :"></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txtsfr" CssClass="form-control" TextMode="Password" runat="server" MaxLength="20" minlength="6" ></asp:TextBox>

            </div>
        </div>
        
        <div class="form-group">
            <asp:Label ID="Label3" CssClass=" col-md-4 control-label" runat="server" Text="Şifre Tekrar :"></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txtsfr2" CssClass="form-control" TextMode="Password" runat="server" MaxLength="20" minlength="6"></asp:TextBox>
                <p class="text-right"><asp:Label ID="lblsfr" runat="server" Text=""></asp:Label></p> 
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label4" CssClass=" col-md-4 control-label" runat="server" Text="E-Posta :"></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txtmail" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label5" CssClass="col-md-4 control-label" runat="server"  Text="Telefon :"></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txtel" CssClass="form-control"   runat="server" MaxLength="10" minlength="10" placeholder="(5__)___ __ __" pattern="\d{10}" title="Buraya Sadece Telefon Numarası Girin"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label6" CssClass="col-md-4 control-label" runat="server" Text="Adres :"></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txtadres" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        
        <div class="form-group text-right">
            
            <asp:Button CssClass="btn btn-success" ID="Button1" runat="server" Text="Kayıt Ol" OnClick="Button1_Click"  />
            <br />
            <asp:Label ID="lblhata" runat="server" Text=""><h4></h4></asp:Label>
            <p class="text-right"><b><i>Eğer üyeliğiniz var ise <a href="giris.aspx">Burdan</a> giriş yapabilirsiniz</i></b></p>
            <br />
        </div>

    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="fother" runat="server">
</asp:Content>
