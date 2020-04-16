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
    public partial class oku : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                Response.Redirect("grn.aspx?id=");
            }
            else
            {
                string gelenid = Request.QueryString["id"];
                OleDbConnection bag = new OleDbConnection("Provider=Microsoft.Ace.Oledb.12.0;Data Source=" + Server.MapPath("/database/metehanaksoy.accdb"));
                bag.Open();
                OleDbDataAdapter adaptor = new OleDbDataAdapter("select * from iletisim where iletsmid=" + gelenid, bag);
                DataTable dt = new DataTable();
                adaptor.Fill(dt);
                tekrar.DataSource = dt;
                tekrar.DataBind();
                bag.Close();
            }
        }
    }
}