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
    public partial class kayitol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (this.txtadres.Text == "" || this.txtel.Text == "" || this.txtkadi.Text == "" || this.txtmail.Text == "" || this.txtsfr.Text == "" || this.txtsfr2.Text == "")
            {
                lblhata.Text = "Bilgiler Eksik";
                lblhata.CssClass = "stil";
            }
            else
            {
                if (txtsfr.Text == txtsfr2.Text)
                {
                    OleDbConnection bag = new OleDbConnection("Provider=Microsoft.Ace.Oledb.12.0;Data Source=" + Server.MapPath("/database/metehanaksoy.accdb"));
                    bag.Open();
                    OleDbCommand komut = new OleDbCommand("insert into uyeler(uyead,uyesfr,uyeposta,uyetel,uyeadres) values (@uyead,@uyesfr,@uyeposta,@uyetel,@uyeadres)", bag);
                    komut.Parameters.AddWithValue("@uyead", txtkadi.Text);
                    komut.Parameters.AddWithValue("@uyesfr", txtsfr.Text);
                    komut.Parameters.AddWithValue("@uyeposta", txtmail.Text);
                    komut.Parameters.AddWithValue("@uyetel", txtel.Text);
                    komut.Parameters.AddWithValue("@uyeadres", txtadres.Text);
                    komut.ExecuteNonQuery();
                    bag.Close();

                    lblhata.Text = "Kayıt Başarılı oldu";
                    lblhata.CssClass = "text-success";

                    txtadres.Text = "";
                    txtel.Text = "";
                    txtkadi.Text = "";
                    txtmail.Text = "";

                    Response.Redirect("giris.aspx");
                }
                else
                {
                    lblsfr.Text = "Şifreler Uyuşmuyor";
                    lblsfr.CssClass = "stil";

                    txtadres.Text = "";
                    txtel.Text = "";
                    txtkadi.Text = "";
                    txtmail.Text = "";

                }


            }
        }
    }
}