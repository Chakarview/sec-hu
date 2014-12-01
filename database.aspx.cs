using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class database : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void db_Click(object sender, EventArgs e)
    {
          string connectionString = WebConfigurationManager.ConnectionStrings["Dom"].ConnectionString;
          SqlConnection cn = new SqlConnection(connectionString);

          try
          {

              cn.Open();
              ErrorResult.Text = "Server version " + cn.ServerVersion;
              ErrorResult.Text += "connection is : " + cn.State.ToString();




          }
          catch (Exception err)
          {
              ErrorResult.Text = "Error reading database";
              ErrorResult.Text += err.Message;

          }
          finally
          {
              cn.Close();
              ErrorResult.Text += "connection is:";
              ErrorResult.Text += cn.State.ToString();
          }

    }
}