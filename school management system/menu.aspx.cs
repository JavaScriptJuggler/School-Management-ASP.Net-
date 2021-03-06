using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class menu : System.Web.UI.Page
{
    MySqlConnection con = new connection().conn();
    protected void Page_Load(object sender, EventArgs e)
    {
        int i = 0;
        con.Open();
        MySqlDataAdapter adpt = new MySqlDataAdapter("select * from notice ORDER BY sl DESC", con);
        DataSet ds = new DataSet();
        adpt.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if(e.Row.RowType==DataControlRowType.Header)
        {
            e.Row.Cells[0].Text = "Serial Number";
            e.Row.Cells[1].Text = "Notice Board";
            e.Row.Cells[2].Text = "Date of Publish";
        }
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        if (e.Item.Text == "Add new students")
        {
            Session["item"] = e.Item.Value;
            Response.Redirect("auth.aspx");
        }
        else if (e.Item.Text == "Fair Management")
        {
            Session["item"] = e.Item.Value;
            Response.Redirect("auth.aspx");
        }
        else if (e.Item.Text == "Publish New Notices")
        {
            Session["item"] = e.Item.Value;
            Response.Redirect("auth.aspx");
        }
    }
}