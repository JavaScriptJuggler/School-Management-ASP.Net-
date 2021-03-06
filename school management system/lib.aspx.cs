using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class lib : System.Web.UI.Page
{
    MySqlConnection con = new connection().conn();
    TextBox[] textbox;
    protected void Page_Load(object sender, EventArgs e)
    {
        textbox = new TextBox[] { cd,nm,roll, booknm,date, stat };
        con.Open();
        display();
    }
    private void display()
    {
        
        MySqlDataAdapter adpt = new MySqlDataAdapter("select * from lib", con);
        MySqlDataAdapter adpt1 = new MySqlDataAdapter("select * from book", con);
        DataSet ds = new DataSet();
        DataSet ds1 = new DataSet();
        adpt.Fill(ds);
        adpt1.Fill(ds1);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        DataTable dt = ds1.Tables[0].DefaultView.ToTable(true, "bn", "stat");
        GridView2.DataSource = dt;
        GridView2.DataBind();
       
    }
    protected void srch_TextChanged(object sender, EventArgs e)
    {
        if (srch.Text != "")
        {
            MySqlDataAdapter adpt3 = new MySqlDataAdapter("select * from lib where cno like '%" + srch.Text + "%'", con);
            DataSet ds = new DataSet();
            adpt3.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
    }

    protected void show_Click(object sender, System.EventArgs e)
    {
        Button btn = (Button)sender;
        display(btn.CommandName);
    }
    private void display(string cardno)
    {
        MySqlCommand cmd =new MySqlCommand("select * from lib where cno='" + cardno + "'", con);
        MySqlDataReader read = cmd.ExecuteReader();
        if(read.Read())
        {
                for (int i = 0;i < 6;i++)
                {
                textbox[i].Text = read.GetValue(i).ToString();
                }
        }
    }

    protected void bksrch_TextChanged(object sender, EventArgs e)
    {
        MySqlDataAdapter adpt = new MySqlDataAdapter("select * from book where bn like'%" + bksrch.Text + "%'", con);
        DataSet dss = new DataSet();
        adpt.Fill(dss);
        GridView2.DataSource = dss.Tables[0];
        GridView2.DataBind();
    }

    protected void Unnamed_Click(object sender, EventArgs e)
    {
        string cardno = cd.Text, book_name="", sig_red="Not Available",sig_green="Available",stat1="Returned", stat2="Pending" ;
        MySqlCommand cmd = new MySqlCommand("select * from lib where cno ='" + cardno + "'", con);
        MySqlDataReader read = cmd.ExecuteReader();
        if(read.Read())
        {
            book_name = read.GetValue(3).ToString();

            if (book_name != "")
            {
                if (booknm.Text != "")
                {
                    read.Close();
                    MySqlCommand cmd7 = new MySqlCommand("select * from book where bn='" + booknm.Text + "'", con);
                    MySqlDataReader reader = cmd7.ExecuteReader();
                    if(reader.Read())
                    {
                        if(reader.GetValue(1).ToString()==sig_green)
                        {
                            reader.Close();
                            MySqlCommand cmd1 = new MySqlCommand("update book set stat='" + sig_green + "' where bn='" + book_name + "'", con);
                            cmd1.ExecuteNonQuery();
                            MySqlCommand cmd2 = new MySqlCommand("update lib set book_nm='" + booknm.Text + "', date='" + DateTime.Now.ToString("dd MMM yyyy") + "', stat='" + stat2 + "' where cno='" + cardno + "'", con);
                            cmd2.ExecuteNonQuery();
                            MySqlCommand cmd3 = new MySqlCommand("update book set stat='" + sig_red + "' where bn='" + booknm.Text + "'", con);
                            cmd3.ExecuteNonQuery();
                        }
                        
                        else
                        {
                            Response.Write("<script>alert('Book is not available')</script>");
                        }
                    }
                   
                }
                else
                {
                    read.Close();
                    MySqlCommand cmd1 = new MySqlCommand("update book set stat='" + sig_green + "' where bn='" + book_name + "'", con);
                    cmd1.ExecuteNonQuery();
                    MySqlCommand cmd2 = new MySqlCommand("update lib set book_nm='" + booknm.Text + "', date='" + DateTime.Now.ToString("dd MMM yyyy") + "', stat='" + stat1 + "' where cno='" + cardno + "'", con);
                    cmd2.ExecuteNonQuery();
                }
            }
            else
            {
                read.Close();
                if (booknm.Text != "")
                {
                    string new_book = booknm.Text, book_status = "";
                    MySqlCommand cmd5 = new MySqlCommand("select * from book where bn='" + new_book + "'", con);
                    MySqlDataReader read2 = cmd5.ExecuteReader();
                    if (read2.Read())
                    {
                        book_status = read2.GetValue(1).ToString();
                        if (book_status == sig_green)
                        {
                            read2.Close();
                            MySqlCommand cmd6 = new MySqlCommand("update lib set book_nm='" + new_book + "', date='" + DateTime.Now.ToString("dd MMM yyyy") + "', stat='" + stat2 + "' where cno='" + cardno + "'", con);
                            cmd6.ExecuteNonQuery();
                            MySqlCommand cmd7 = new MySqlCommand("update book set stat='" + sig_red + "' where bn='" + new_book + "'", con);
                            cmd7.ExecuteNonQuery();

                        }
                        else
                        {
                            Response.Write("<script>alert('Book is not available')</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Book not found')</script>");
                    }

                }
            }
        }
        read.Close();
        display();
    }

    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if(e.Row.RowType==DataControlRowType.Header)
        {
            e.Row.Cells[0].Text = "Book Name";
            e.Row.Cells[1].Text = "Status";
        }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if(e.Row.RowType==DataControlRowType.Header)
        {
            e.Row.Cells[1].Text = "Card Number";
            e.Row.Cells[2].Text = "Student Name";
            e.Row.Cells[3].Text = "Roll NUmber";
            e.Row.Cells[4].Text = "Book Name";
            e.Row.Cells[5].Text = "Date";
            e.Row.Cells[6].Text = "Status";
        }
    }

    protected void Unnamed_Click1(object sender, EventArgs e)
    {
        cd.Text = null;
        nm.Text = null;
        roll.Text = null;
        date.Text = null;
        stat.Text = null;
        srch.Text = null;
        booknm.Text = null;
        bksrch.Text = null;
        display();
    }
}