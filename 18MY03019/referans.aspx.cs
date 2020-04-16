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
    public partial class referans : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection bag = new OleDbConnection("Provider=Microsoft.Ace.Oledb.12.0;Data Source=" + Server.MapPath("/database/metehanaksoy.accdb"));
            bag.Open();
            OleDbDataAdapter adaptor = new OleDbDataAdapter("select * from referans", bag);
            DataTable dt = new DataTable();
            adaptor.Fill(dt);
            tekrar.DataSource = dt;
            tekrar.DataBind();
            bag.Close();
        }
    }
}