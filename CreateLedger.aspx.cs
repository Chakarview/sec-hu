using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class CreateLedger : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {

            appFor.Items.Add("Water");
            appFor.Items.Add("Sewer");
                  

            lstType.Items.Add("Domestic");


            FillAuthorList();





        }
        

    }

    private void FillAuthorList()
    {
        lstsec.Items.Clear();
        lstplot.Items.Clear();
        

        string selectSQL = "SELECT * FROM FillData ";
        string connectionString = WebConfigurationManager.ConnectionStrings["Dom"].ConnectionString;
        SqlConnection cno = new SqlConnection(connectionString);

        SqlCommand cm = new SqlCommand(selectSQL, cno);
        SqlDataReader reader;

        try
        {
            cno.Open();
            reader = cm.ExecuteReader();
            while (reader.Read())
            {
                ListItem item = new ListItem();
                item.Value = reader["Sector"].ToString(); 
                lstsec.Items.Add(item);
                ListItem itemA = new ListItem();
                itemA.Value = reader["PlotSize"].ToString();
                lstplot.Items.Add(itemA);


            }
            reader.Close();


        }
        catch (Exception err)
        {
            EResult.Text = "Please enter sector and plot size.";
            EResult.Text += err.Message;

        }
        finally
        {
            cno.Close();
        
        }


    
    
    
    }


    protected void cre_Click(object sender, EventArgs e)
    {
        string InsertSql = "INSERT INTO Alotte(AppStatus,Name,Sect,PlotNu,PlotSize,Floor,AlotteType)VALUES('" + appFor.SelectedItem.Text + "','" + lstTextbox.Text + "','" + lstsec.SelectedItem.Text + "','" + TextboxA.Text + "','"+ lstplot.SelectedItem.Text +"','"+ TextboxB.Text +"','"+ lstType.SelectedItem.Text +"') ";
        string connectionString = WebConfigurationManager.ConnectionStrings["Dom"].ConnectionString;
        SqlConnection cno = new SqlConnection(connectionString);

        SqlCommand cm = new SqlCommand(InsertSql, cno);
 


        try
        {
            cno.Open();
            var aded = cm.ExecuteNonQuery();
            EResult.Text = aded.ToString() + " Ledger is save.";
            Response.Redirect("Home.aspx");
            

        }
        catch (Exception err)
        {
            EResult.Text = "Error during insert record.";
            EResult.Text += err.Message;

        }
        finally
        {
            cno.Close();
           
        }

         



    }
     
}
