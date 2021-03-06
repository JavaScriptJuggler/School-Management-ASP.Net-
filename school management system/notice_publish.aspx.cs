using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class notice_publish : System.Web.UI.Page
{
    public static string slno, notic_body, date;
    MySqlConnection con = new connection().conn();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        populate_grid();
    }
    private void populate_grid()
    {
        MySqlDataAdapter adpt = new MySqlDataAdapter("select * from notice", con);
        DataSet ds = new DataSet();
        adpt.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void notice_details_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        MySqlCommand cmd = new MySqlCommand("select * from notice where sl='" + btn.CommandName + "'", con);
        MySqlDataReader reader = cmd.ExecuteReader();
        if(reader.Read())
        {
            slno = reader.GetValue(0).ToString();
            notic_body = reader.GetValue(1).ToString();
            date = reader.GetValue(2).ToString();
            Response.Redirect("notice_viewer.aspx?slno="+slno+"&body="+notic_body+"&date="+date);
        }
    }

    protected void pbls_Click(object sender, EventArgs e)
    {
            MySqlCommand cmd = new MySqlCommand("insert into notice(notice,date) values ('" + body.InnerText + "','" + DateTime.Now.ToString("dd MMM yyyy") + "')", con);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Notice Published')</script>");
            populate_grid();
            body.InnerText = null;
        
    }
}