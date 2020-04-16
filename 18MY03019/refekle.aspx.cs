using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace metehanaksoy
{
    public partial class refekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection bag = new OleDbConnection("Provider=Microsoft.Ace.Oledb.12.0;Data Source=" + Server.MapPath("/database/metehanaksoy.accdb"));
            bag.Open();
            if (dosya.HasFile == false)
            {
                lblhata.Text = "Dosya Seçilmedi";
                lblhata.CssClass = "Text-Danger";
            }
            else
            {
                //dosya seçildi ise
                if (dosya.PostedFile.ContentType != "image/png")
                {
                    lblhata.Text = "Dosya Resim Dosyası Değil";
                }
                else
                {
                    dosya.SaveAs(Server.MapPath("bs/css/rsm/ref/" + dosya.FileName));
                    Image1.ImageUrl = "bs/css/rsm/ref/" + dosya.FileName;
                    OleDbCommand komut = new OleDbCommand("insert into referans(refad,fotourl,reftarih,fotoadres) values (@refad,@fotourl,@reftarih,@fotoadres)", bag);
                    komut.Parameters.AddWithValue("@refad", txtad.Text);
                    komut.Parameters.AddWithValue("@fotorl", dosya.FileName);
                    komut.Parameters.AddWithValue("@reftarih", txttarih.Text);
                    komut.Parameters.AddWithValue("@fotoadres", krmadrs.Text);

                    komut.ExecuteNonQuery();
                    lblhata.Text = "Kaydedildi";
                    bag.Close();
                    Response.Redirect("refekle.aspx");

                }

            }
        }
    }
}