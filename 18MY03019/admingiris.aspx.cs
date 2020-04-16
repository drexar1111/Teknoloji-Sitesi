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
    public partial class admingiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (txtadmin.Text == "" || txtsifre.Text == "")
            {
                lblhata.Text = "Kullanıcı Adı Veya Şifre Eksik";
            }
            else
            {
                OleDbConnection bag = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;DATA SOURCE=" + Server.MapPath("/database/metehanaksoy.accdb"));
                bag.Open();
                OleDbCommand komut = new OleDbCommand("select * from admin where kullanici=@kullanici and sifre=@sifre", bag);
                komut.Parameters.AddWithValue("@kullanici", txtadmin.Text);
                komut.Parameters.AddWithValue("@sifre", txtsifre.Text);
                OleDbDataReader oku = komut.ExecuteReader();
                if (oku.Read())
                {
                    Session.Add("admin", txtadmin.Text);
                    Response.Redirect("admin.aspx");
                }
                else
                {
                    lblhata.Text = "Bu Kayıt Bulunmamakta";
                }
            }
        }
    }
}