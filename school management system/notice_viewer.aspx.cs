using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public partial class notice_viewer : System.Web.UI.Page
{
    MySqlConnection con = new connection().conn();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        sl.Text = Request.QueryString["slno"];
        body.InnerText = Request.QueryString["body"];
        date.Text = Request.QueryString["date"];
    }

    protected void dlt_Click(object sender, EventArgs e)
    {
        MySqlCommand cmd = new MySqlCommand("delete from notice where sl='" + sl.Text + "'", con);
        cmd.ExecuteNonQuery();
        Response.Redirect("notice_publish.aspx");
    }
}