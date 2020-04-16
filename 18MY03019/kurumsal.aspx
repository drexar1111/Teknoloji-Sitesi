<%@ Page Title="" Language="C#" MasterPageFile="~/Taslak.Master" AutoEventWireup="true" CodeBehind="kurumsal.aspx.cs" Inherits="metehanaksoy.kurumsal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row" class="flued-container">
        <div class="col-md-6" style="padding : 15px 35px;">
          <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width:100%;">
 
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
  </ol>

 
  <div class="carousel-inner">
    <div class="item active">
      <img src="bs/css/rsm/kurumsal1.jpg">
    </div>

    <div class="item">
      <img src="bs/css/rsm/kurumsal2.jpg">
    </div>

  </div>

 
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only"></span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only"></span>
  </a>
</div>
          
        </div>
        <div class="col-md-6" style="padding : 15px;"> 
          <h4><b>MeTech Bilişim Danışmanlık;</b></h4>
          <p>
            

MeTech 2020 yılından bu yana web tabanlı yazılım çözümleri sunan, kısacası “İnternet Teknolojisi’nin Tüm Renkleri”
              ile sizlere hizmet vermeyi ilke edinmiş Türkiye'nin lider teknoloji sitesi sağlayıcısıdır. Küçük büyük demeden,
              her ölçekten firmanın iş hedeflerini gerçekleştirme sürecinde rekabet güçlerini artıracak, katma değer oluşturacak,
              kaliteli projeler ve çözümler üreten bir teknoloji firmasıyız.<br><br>
<b>Misyonumuz;</b>
<br><br>
Teknolojik gelişmeleri ve teknoloji hakkında haberleri sizlere sunarak,Bilgi Teknolojilerinin getirdiği faydaları sizlere yaymaktır.
<br><br>
<b>Ömür boyunca kullanılabilir,</b>
<br><br>
Sitemiz ileride gerçekleşebilecek yenilik ve değişiklilere uygun, Firma dışı kaynaklara bağımlılığı ortadan kaldırıldığı veya
              minimuma indirildiği Teknoloji haberlerini en verimli şekilde kullanan bir yapı kurulmaya çalışılmıştır.
<br><br>
<b>MeTech'i Neden Tercih Etmelisiniz?</b>
<br><br>
Tüm çalışmalarımızda temel amacımız kullanıcı memnuniyetidir. İş yaptığımız firmalar, ticari bir etkileşimden çok, uzun
              soluklu iş birliği olarak göz önünde tutulur. Şirketlerin durum ve ihtiyaçları objektif olarak değerlendirilir
              ve sadece o yapıya uygun olan çözümler sunulur.
<br><br>
Dünyadaki teknolojik gelişmeleri takip ederek ürün ve hizmetlerimizi sürekli geliştirir, her türlü uygulama ile ilgili teknik destek ile birlikte tüm sorunlarınızın en kısa zamanda çözüme ulaşmasını sağlarız.
          </p>
        </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="fother" Runat="Server">
    <div>
        <div style="background-image:url('bs/css/rsm/bg.jpg');background-repeat:repeat; background-attachment:fixed;background-position:center;" >
    <table class="container">
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
    </div>
</asp:Content>

