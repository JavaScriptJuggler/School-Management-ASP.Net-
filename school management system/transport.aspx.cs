using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class transport : System.Web.UI.Page
{
    MySqlConnection con = new connection().conn();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        display();
    }
    private void display()
    {
        MySqlDataAdapter adpt = new MySqlDataAdapter("select * from trans", con);
        DataSet ds = new DataSet();
        adpt.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        details(btn.CommandName);
    }
    private void details(string cardno)
    {
        MySqlCommand cmd = new MySqlCommand("select * from trans where tno='"+cardno+"'", con);
        MySqlDataReader read = cmd.ExecuteReader();
        if(read.Read())
        {
            string fees_stat = read.GetValue(5).ToString();
            if(fees_stat=="")
            {
                cd.Text = read.GetValue(0).ToString();
                sn.Text = read.GetValue(1).ToString();
                roll.Text = read.GetValue(2).ToString();
                stat.Text = "Not Paid";
                fees.Text = "2500";
            }
            else
            {
                cd.Text = read.GetValue(0).ToString();
                sn.Text = read.GetValue(1).ToString();
                roll.Text = read.GetValue(2).ToString();
                stat.Text = fees_stat;
                date.Text = read.GetValue(3).ToString();
                fees.Text = "";
            }
        }
        else
        {
            Response.Write("<script>alert('Details not found')</script>");
            srchcrd.Text = null;
        }
    }

    protected void update_Click(object sender, EventArgs e)
    {
        if(fees.Text!=null && stat.Text== "Not Paid")
        {
            MySqlCommand cmd = new MySqlCommand("update trans set date='" + DateTime.Now.ToString("dd MMM yyyy") + "',stat='Paid',fees='" + fees.Text + "' where tno='" + cd.Text + "'", con);
            cmd.ExecuteNonQuery();
        }
        else
        {
            Response.Write("<script>alert('Fees already given')</script>");
        }
        display();
    }

    protected void clr_Click(object sender, EventArgs e)
    {
        cd.Text = null;
        sn.Text = null;
        fees.Text = null;
        stat.Text = null;
        date.Text = null;
        roll.Text = null;
        srchcrd.Text = null;
    }

    protected void srchcrd_TextChanged(object sender, EventArgs e)
    {
        if (srchcrd.Text != null)
        {
            MySqlDataAdapter adpt = new MySqlDataAdapter("select * from trans where tno='" + srchcrd.Text + "'", con);
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
        else if(srchcrd.Text=="")
        {
            MySqlDataAdapter adpt = new MySqlDataAdapter("select * from trans", con);
            DataSet ds = new DataSet();
            adpt.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
    }
}