<%@ Page Title="" Language="C#" MasterPageFile="~/Taslak.Master" AutoEventWireup="true" CodeBehind="islerimiz.aspx.cs" Inherits="metehanaksoy.islerimiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <asp:Repeater runat="server" ID="tekrar" >
        <ItemTemplate>
    <div class="flued-container" style="height: 50px;border-bottom:1px solid #ccc;">
			<div class="col-md-6">
			<p style="font-size: 24px;padding-left: 30px;"><b><u style="color: black; "><%# Eval("menuad") %></u></b></p>
			</div>
			<div class="col-md-6" style="padding-left: 400px;">
				<a href="default.aspx">Anasayfa</a>  <span class="glyphicon glyphicon-menu-right"></span><%# Eval("menuad") %>
			</div>
		</div>
		<div class="icerik"  style="background-color: white;" >
			<img src="bs/css/rsm/<%# Eval("menufoto") %>"  width="1350" height="500" style="padding: 30px;">
			<h2 style="padding: 0px 30px;"><%# Eval("menuad") %></h2>
			<p style="padding: 0px 30px;padding-bottom: 20px;"> 
				<%# Eval("menukonu") %>
			</p>
		</div>
              </ItemTemplate>
          </asp:Repeater>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="fother" runat="server">
</asp:Content>
