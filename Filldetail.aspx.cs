using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Filldetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void fillde_Click(object sender, EventArgs e)
    {

        string InsertSql = "INSERT INTO FillData(Sector,PlotSize) VALUES ('" + secbox.Text + "', '" + plotbox.Text + "') ";
        string connectionString = WebConfigurationManager.ConnectionStrings["Dom"].ConnectionString;
        SqlConnection cno = new SqlConnection(connectionString);

        SqlCommand cm = new SqlCommand(InsertSql, cno);



        try
        {
            cno.Open();
            var aded = cm.ExecuteNonQuery();
            rner.Text = aded.ToString() + "Data is Insert sucessfully. .";



        }
        catch (Exception err)
        {
            rner.Text = "Error during insert record.";
            rner.Text += err.Message;

        }
        finally
        {
            cno.Close();

        }


    }
}