<%@ Page Title="" Language="C#" MasterPageFile="~/Taslak.master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="metehanaksoy._default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <div class="fluid-container">
        <div class="row">
            
        <div class="col-md-12" style="padding:0px 5px;">
            <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width:100%;">
  <!-- İndikatörler -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
       <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Sliderlar -->
  <div class="carousel-inner">
    <div class="item active">
        <img src="bs/css/rsm/s1.jpg" />

    </div>

    <div class="item">
        <img src="bs/css/rsm/s2.jpg" />
       

    </div>
      <div class="item">
          <img src="bs/css/rsm/s3.jpg" />
    </div>
        
      <div class="item">
          <img src="bs/css/rsm/s4.jpg" />
   

  </div>

  <!-- Sag sol kontrolleri -->
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
 </div>
    <asp:Repeater ID="tekrar2" runat="server" OnItemCommand="tekrar2_ItemCommand">
        <ItemTemplate>
                    
                <div class="col-md-4 text-center" style="padding-left:50px;padding-right:50px;" >
                    <p><a href="islerimiz.aspx?id=<%# Eval("menuid") %>"><img src="bs/css/rsm/<%# Eval("menufoto") %>"  height="200" width="400" style="padding-right:50px;padding-top:20px;" /></a></p>
                    <h4><b><%# Eval("menuad") %></b></h4> 
                    <p class="text-left"><%# Eval("menukısa") %></p>
                </div>

        </ItemTemplate>
    </asp:Repeater>
        </div>
    <div style="height:25px;"></div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="fother" runat="server">
    <div >
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


