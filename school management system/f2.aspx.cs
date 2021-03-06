using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public partial class f2 : System.Web.UI.Page
{
    MySqlConnection con = new connection().conn();
    DropDownList[] dl;
   
    public static int[] inarr=new int[10];
    protected void Page_Load(object sender, EventArgs e)
    {
        dl = new DropDownList[] { lb, tc };
        if (!IsPostBack)
        {
            foreach (DropDownList d in dl)
            {
                d.Items.Clear();
                d.Items.Add("Select");
                d.Items.Add("Yes");
                d.Items.Add("No");
            }
            batch.Items.Clear();
            batch.Items.Add("Select");
            batch.Items.Add("CCA");
            batch.Items.Add("CACPA");
            for (int i = 0; i < 10; i++)
                inarr[i] = i;
        }
      
    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        con.Open();
        MySqlCommand cmd = new MySqlCommand("insert into data_table values('" + stdnm.Text + "','" + batch.SelectedItem + "','" + roll.Text + "','" + lb.SelectedItem + "','" + tc.SelectedItem + "','" + fn.Text + "','" + mn.Text + "','" + oc.Text + "','" + add.Text + "','" + ph.Text + "','" + po.Text + "','" + ps.Text + "','" + zip.Text + "')", con);
        cmd.ExecuteNonQuery();
        Random rand = new Random();
        string crd="";
        for(int i=0;i<4;i++)
        {
            crd += rand.Next(inarr.Length - 1);
        }
        string cardno = batch.SelectedItem+".LC " + crd;
        string Tno= batch.SelectedItem + ".TC " + crd;
        if (lb.SelectedIndex==1)
        {
            MySqlCommand cmd1 = new MySqlCommand("insert into lib(cno,sn,roll) values('" + cardno + "','" + stdnm.Text + "','" + roll.Text + "')", con);
            cmd1.ExecuteNonQuery();

        }
        if(tc.SelectedIndex==1)
        {
            MySqlCommand cmd2= new MySqlCommand("insert into trans(tno,sn,roll) values('" + Tno + "','" + stdnm.Text + "','" + roll.Text + "')", con);
            cmd2.ExecuteNonQuery();
        }
        con.Close();
    }
    private void clear() {
        foreach (DropDownList d in dl)
        {
            d.Items.Clear();
            d.Items.Add("Select");
            d.Items.Add("Yes");
            d.Items.Add("No");
        }
        batch.Items.Clear();
        batch.Items.Add("Select");
        batch.Items.Add("CCA");
        batch.Items.Add("CACPA");
    }

    protected void refresh(object sender, EventArgs e)
    {
        TextBox[] txt = new TextBox[] {stdnm,roll,fn,mn,oc,add,ph,po,ps,zip };
        foreach(TextBox t in txt)
        {
            t.Text = "";
        }
        clear();
    }
    
}