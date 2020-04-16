$(document).ready(function()
{
	var hata1=false,hata2=false,hata3=false
	//kullanıcı 
	$("#kadi").focusout(function()
	{
		var kullanici=$("#kadi").val();
		var uzunluk=kullanici.length;
		if (uzunluk<5 || uzunluk>20) 
		{
			$("#hata_kul").show();
			hata1=true;
		}
		else
		{
			$("#hata_kul").hide();
			hata1=false;
		}
	});

	//sifre
	$("#sfr1").focusout(function()
	{
		var sifre=$("#sfr1").val();
		var sifreuzunluk=sifre.length;
		if (sifreuzunluk<6)
		{
			$("#hata_sfr1").show();
			hata2=true;
		}
		else
		{
			$("#hata_sfr1").hide();
			hata2=false;
		}
	});

	//sifre tekrar
	$("#sfr2").focusout(function()
	{
		var sifre1=$("#sfr1").val();
		var sifre2=$("#sfr2").val();
		if (sifre1==sifre2) 
		{
			$("#hata_sfr2").hide();
			hata3=false;
		}
		else
		{
			$("#hata_sfr2").show();
			hata3=true;
		}
	});

	//submit gönderme
	$("#form").submit(function()
	{
		if (hata1==true || hata2==true || hata3==true)
	 	{
	 		return false;
	 	}
	 	else
	 	{
	 		return true;
	 	}
	});
});

