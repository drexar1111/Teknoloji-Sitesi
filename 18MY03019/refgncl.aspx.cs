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
    public partial class refgncl : System.Web.UI.Page
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
                        OleDbCommand komut = new OleDbCommand("select * from referans where refid=" + gelenid, bag);
                        OleDbDataReader okuyucu;
                        okuyucu = komut.ExecuteReader();
                        okuyucu.Read();
                        txtid.Text = okuyucu["refid"].ToString();
                        txtad.Text = okuyucu["refad"].ToString();
                        txtfoto.Text = okuyucu["fotourl"].ToString();
                        txttarih.Text = okuyucu["reftarih"].ToString();
                        krmadrs.Text = okuyucu["fotoadres"].ToString();
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
                if (dosya.PostedFile.ContentType != "image/png")
                {
                    lblhata.Text = "Dosya Resim Dosyası Değil";
                }
                else
                {
                    string gelenid = Request.QueryString["id"];
                    dosya.SaveAs(Server.MapPath("bs/css/rsm/ref/" + dosya.FileName));
                    Image1.ImageUrl = "bs/css/rsm/ref/" + dosya.FileName;
                    OleDbCommand komut = new OleDbCommand("update referans set refad=@refad,fotourl=@fotourl,reftarih=@reftarih,fotoadres=@fotoadres where refid=" + gelenid, bag);
                    komut.Parameters.AddWithValue("@refad", txtad.Text);
                    komut.Parameters.AddWithValue("@fotourl", dosya.FileName);
                    komut.Parameters.AddWithValue("@reftarih", txttarih.Text);
                    komut.Parameters.AddWithValue("@fotoadres", krmadrs.Text);
                    komut.ExecuteNonQuery();
                    lblhata.Text = "Kaydedildi";
                    bag.Close();
                    Response.Redirect("reftum.aspx");
                }
            }
        }
    }
}