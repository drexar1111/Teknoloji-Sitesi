<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admingiris.aspx.cs" Inherits="metehanaksoy.admingiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Admin Giriş</title>
    <link rel="stylesheet" type="text/css" href="bs/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="bs/css/stil.css">
	<script type="text/javascript" src="bs/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="bs/js/bootstrap.min.js"></script>
</head>
<body style="background-image:url('bs/css/rsm/admn.jpg');background-repeat:no-repeat; background-attachment:fixed;background-position:center;margin-top:0px;padding-top:0px;" >
        <div style="margin-left:400px;margin-right:400px;margin-bottom:5px;margin-top:250px;background-color:white;">
    <form id="form1" runat="server" class="form-horizontal" style="border:1px solid #ccc;">
    <h2 class="text-info" style="text-align:center;width:100%;">Giriş Yap</h2>
    
    <div class="form-group">
        <asp:Label CssClass="col-md-4 control-label text-right" ID="Label1" runat="server" Text="Administrator :"></asp:Label>
    <div class="col-md-8">
        <asp:TextBox CssClass="form-control" Width="50%" ID="txtadmin" runat="server" autofocus></asp:TextBox>
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
            
            <asp:button runat="server"  text="Giriş Yapın" cssclass="btn btn-primary" OnClick="Unnamed1_Click" />
        </div>
    </div>
    <div class="text-center" style="color:red;">
        <asp:Label ID="lblhata" runat="server" Text=""></asp:Label>
    </div>
</form>

    </div>
</body>
</html>
