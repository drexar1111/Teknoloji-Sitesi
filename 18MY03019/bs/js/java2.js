$(document).ready(function()
{
	hata1=false;
	$("#kadi").focusout(function()
	{
		var kullanici=$("#kadi").val();
		var uzunluk=kullanici.length;
		if( uzunluk<5 || uzunluk>20)
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
});