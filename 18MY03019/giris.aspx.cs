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
    public partial class giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection bag = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;DATA SOURCE=" + Server.MapPath("/database/metehanaksoy.accdb"));
            bag.Open();
            OleDbCommand komut = new OleDbCommand("select * from uyeler where uyead=@uyead and uyesfr=@uyesfr", bag);
            komut.Parameters.AddWithValue("@uyead", txtkul.Text);
            komut.Parameters.AddWithValue("@uyesfr", txtsifre.Text);
            OleDbDataReader okuyucu;
            okuyucu = komut.ExecuteReader();
            if (okuyucu.Read())
            {
                Session.Add("kull", okuyucu["uyead"].ToString());
                Session.Add("uyeid", okuyucu["uyeid"].ToString());
                Session.Timeout = 1;
                Response.Redirect("default.aspx");


            }
            else
            {
                lbldurum.Text = "Kullanıcı adı veya şifre hatalı";
                lbldurum.CssClass = "text-danger";
            }
        }
    }
}