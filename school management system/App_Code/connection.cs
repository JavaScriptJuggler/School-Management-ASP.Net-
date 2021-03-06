using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
public class connection
{
    public MySqlConnection conn()
    {
        MySqlConnection con = new MySqlConnection("server=localhost;database=storage;uid=root;pwd=");
        try
        {
          
        }
        catch (Exception e)
        {
           
        }
        return con;
    }
}