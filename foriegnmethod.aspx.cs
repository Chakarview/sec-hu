using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class foriegnmethod : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnpet_Click(object sender, EventArgs e)
    {
        string insertSQL = "INSERT INTO Pet (PetName, PetAge) VALUES ('" + pettbox.Text + "','" + boxpetage.Text + "') ";
        string connectionString = WebConfigurationManager.ConnectionStrings["Dom"].ConnectionString;
        SqlConnection cnn = new SqlConnection(connectionString);
        SqlCommand cm = new SqlCommand(insertSQL, cnn);

        try
        {
            cnn.Open();
            var aded = cm.ExecuteNonQuery();
            Erdis.Text = aded.ToString() + "Record add in database.";

        }
        catch (Exception err)
        {
            Erdis.Text = "Error Reading database.";
            Erdis.Text += err.Message;

        }
        finally
        {
            cnn.Close();
        }


    }
}