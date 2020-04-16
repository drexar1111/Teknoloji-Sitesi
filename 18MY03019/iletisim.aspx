<%@ Page Title="" Language="C#" MasterPageFile="~/Taslak.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="metehanaksoy.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div >
    <h2 style="margin-bottom: -15px;margin-left:25px;">İletişim </h2><hr style="height: 2px;width: 100px; background-color: #333;margin-left: 25px;margin-bottom: 0px;">
    <p>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1505.83033620197!2d29.090756583537647!3d40.98891059741283!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14cac7cd26e6aacd%3A0xa6d17371434a52f6!2sYeni+Sahra+Mahallesi%2C+Barbaros+Cd.+No%3A9%2C+34746+Ata%C5%9Fehir%2F%C4%B0stanbul!5e0!3m2!1str!2str!4v1554109141080!5m2!1str!2str" height="450" frameborder="0" style="border:0;width: 100%;" allowfullscreen></iframe>
  </p>
  </div>
  <div>
       <form runat="server" class="form-horizontal" style="width:80%;margin-top:50px;text-align:center;">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="True" ClientIDMode="Inherit"></asp:ScriptManager>
           <div class="col-md-6">
        <div class="form-group">
            <asp:Label ID="Label1" CssClass=" col-md-4 control-label" runat="server" Text="İsim Soyisim :"></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txtkadi" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label2" CssClass="col-md-4 control-label" runat="server" Text="E-Mail Adresiniz:"></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txtmail" CssClass="form-control"   runat="server"></asp:TextBox> 
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label3" CssClass=" col-md-4 control-label" runat="server" Text="Telefon :"></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txttlfn" CssClass="form-control"  runat="server" MaxLength="10" minlength="10" placeholder="(5__)___ __ __" pattern="\d{10}" title="Buraya Sadece Telefon Numarası Girin"></asp:TextBox>
            </div>
        </div>
               </div>
           <div class="col-md-6">
        <div class="form-group">
            <asp:Label ID="Label4" CssClass=" col-md-4 control-label" runat="server" Text="Konu:"></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txtkonu" CssClass="form-control" TextMode="MultiLine"  runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label6" CssClass="col-md-4 control-label" runat="server" Text="Adres :"></asp:Label>
            <div class="col-md-8">
                <asp:TextBox ID="txtadres" CssClass="form-control" TextMode="MultiLine"  runat="server"></asp:TextBox>
            </div>
        </div>

                </div>
           <div class="form-group text-right">
            <asp:Button CssClass="btn btn-success" ID="Button1" runat="server" Text="GÖNDER" OnClick="Button1_Click"  />
            <br />
            <br />
            <asp:Label ID="lblhata" runat="server" Text=""></asp:Label>
        </div>
           </form>
  </div>
           <div style="margin-top: 25px;width:100%" class="row">
        <div class="col-md-4 text-center" style="text-align: center;">
          <p >
            <span class="glyphicon glyphicon-map-marker" style="font-size: 50px;" ></span>
          </p>
          <p>
            Yenisahra Mahallesi Barbaros Caddesi NO:9 <br> Yenisahra-Ataşehir-İstanbul
          </p>
        </div>
        <div class="col-md-4" style="text-align: center;">
          <p >
            <span class="glyphicon glyphicon-earphone" style="font-size: 50px;" ></span>
          </p>
          <p>
              <b>Telefon:</b>0(216) 000 00 00  <br>        
            <b>Mobil:</b>+900000000000
          </p>
        </div>
        <div class="col-md-4 text-center" style="text-align: center;padding-left:25px;">
          <p >
            <span class="glyphicon glyphicon-envelope" style="font-size: 50px;" ></span>
          </p>
          <p>
            <b>Email:</b> metech@gmail.com <br />
           
          </p>
        </div>
  </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="fother" runat="server">
</asp:Content>
