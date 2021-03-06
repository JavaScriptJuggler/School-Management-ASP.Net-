using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public partial class f1 : System.Web.UI.Page
{
    MySqlConnection con = new connection().conn();
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btn_Click(object sender, EventArgs e)
    {
        con.Open();
        MySqlCommand cmd = new MySqlCommand("select * from auth where id='" + user.Text + "' and ps='" + pass.Text + "'", con);
        MySqlDataReader read = cmd.ExecuteReader();
        if (read.Read())
        {
            Response.Redirect(""+Session["item"]);
        }
        else
            Response.Write("<script>alert('Invalid user id or password')</script>");
        con.Close();
    }
}