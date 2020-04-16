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
    public partial class iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (this.txtadres.Text == "" || this.txttlfn.Text == "" || this.txtkadi.Text == "" || this.txtmail.Text == "" || this.txtkonu.Text == "")
            {
                lblhata.Text = "Bilgiler Eksik";
                lblhata.CssClass = "text-danger";


            }
            else
            {
                OleDbConnection bag = new OleDbConnection("Provider=Microsoft.Ace.Oledb.12.0;Data Source=" + Server.MapPath("/database/metehanaksoy.accdb"));
                bag.Open();
                OleDbCommand komut = new OleDbCommand("insert into iletisim(iletsmad,iletsmposta,iletsmtel,iletsmadres,iletsmkonu) values (@iletsmad,@iletsmposta,@iletsmtel,@iletsmadres,@iletsmkonu)", bag);
                komut.Parameters.AddWithValue("@iletsmad", txtkadi.Text);
                komut.Parameters.AddWithValue("@iletsmposta", txtmail.Text);
                komut.Parameters.AddWithValue("@iletsmtel", txttlfn.Text);
                komut.Parameters.AddWithValue("@iletsmadres", txtadres.Text);
                komut.Parameters.AddWithValue("@iletsmkonu", txtkonu.Text);
                komut.ExecuteNonQuery();
                bag.Close();

                lblhata.Text = "Kayıt Başarılı oldu";
                lblhata.CssClass = "text-success";

                txtadres.Text = "";
                txttlfn.Text = "";
                txtkadi.Text = "";
                txtmail.Text = "";
                txtkonu.Text = "";





            }
        }
    }
}