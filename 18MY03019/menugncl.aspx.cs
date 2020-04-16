using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace metehanaksoy
{
    public partial class menugncl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("admingiris.aspx");
            }
            else
            {
                if (IsPostBack == false)
                {
                    if (string.IsNullOrEmpty(Request.QueryString["id"]))
                    {
                        Response.Redirect("admin.aspx");
                    }
                    else
                    {
                        string gelenid = Request.QueryString["id"];
                        OleDbConnection bag = new OleDbConnection("Provider=Microsoft.Ace.Oledb.12.0;Data Source=" + Server.MapPath("/database/metehanaksoy.accdb"));
                        bag.Open();
                        OleDbCommand komut = new OleDbCommand("select * from anasayfa where menuid=" + gelenid, bag);
                        OleDbDataReader okuyucu;
                        okuyucu = komut.ExecuteReader();
                        okuyucu.Read();
                        txtid.Text = okuyucu["menuid"].ToString();
                        txtad.Text = okuyucu["menuad"].ToString();
                        txtfoto.Text = okuyucu["menufoto"].ToString();
                        txtkonu.Text = okuyucu["menukonu"].ToString();
                        txtkısa.Text = okuyucu["menukısa"].ToString();
                        bag.Close();
                    }
                }
            }
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
                if (dosya.PostedFile.ContentType != "image/jpeg")
                {
                    lblhata.Text = "Dosya Resim Dosyası Değil";
                }
                else
                {
                    string gelenid = Request.QueryString["id"];
                    dosya.SaveAs(Server.MapPath("bs/css/rsm/" + dosya.FileName));
                    Image1.ImageUrl = "bs/css/rsm/" + dosya.FileName;
                    OleDbCommand komut = new OleDbCommand("update anasayfa set menuad=@menuad,menufoto=@menufoto,menukonu=@menukonu,menukısa=@menukısa where menuid=" + gelenid, bag);
                    komut.Parameters.AddWithValue("@menuad", txtad.Text);
                    komut.Parameters.AddWithValue("@menufoto", dosya.FileName);
                    komut.Parameters.AddWithValue("@menukonu", txtkonu.Text);
                    komut.Parameters.AddWithValue("@menukısa", txtkısa.Text);
                    komut.ExecuteNonQuery();
                    lblhata.Text = "Kaydedildi";
                    bag.Close();
                    Response.Redirect("menuyon.aspx");
                }
            }
        }
    }
}