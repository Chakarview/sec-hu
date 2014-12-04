using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
 

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Tab1.CssClass = "Clicked";
            MainView.ActiveViewIndex = 5;
            mstatus.Items.Add("Meter OK");
            mstatus.Items.Add("Meter Damaged");
            
            string SelectSQL = "Select * from Alotte";
            string connectionString = WebConfigurationManager.ConnectionStrings["Dom"].ConnectionString;
            SqlConnection cno = new SqlConnection(connectionString);

            SqlCommand cmd = new SqlCommand(SelectSQL,cno);
            SqlDataReader reader;

            try
            {
                cno.Open();
                reader = cmd.ExecuteReader();
                
                while (reader.Read())
                {
                    uniid.Text  = reader["Al_ID"].ToString();

                }

                reader.Close();
            }
            catch(Exception err)
            {
                rserr.Text = "Error reading database.";
                rserr.Text += err.Message;



            }
            finally
            {
                cno.Close();

            }
           






             
        }
        

    }
    protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
    {
        
         

    }
    
    protected void Tab1_Click(object sender, EventArgs e)
    {
        Tab1.CssClass = "Clicked";
        Tab2.CssClass = "Initial";
        Tab3.CssClass = "Initial";
        Tab4.CssClass = "Initial";
        Tab5.CssClass = "Initial";
        Tab6.CssClass = "Initial";
        MainView.ActiveViewIndex = 0;

    }
    protected void Tab2_Click(object sender, EventArgs e)
    {
        Tab1.CssClass = "Initial";
        Tab2.CssClass = "Clicked";
        Tab3.CssClass = "Initial";
        Tab4.CssClass = "Initial";
        Tab5.CssClass = "Initial";
        Tab6.CssClass = "Initial";
        MainView.ActiveViewIndex = 1;

    }
    protected void Tab3_Click(object sender, EventArgs e)
    {
        Tab1.CssClass = "Initial";
        Tab2.CssClass = "Initial";
        Tab3.CssClass = "Clicked";
        Tab4.CssClass = "Initial";
        Tab5.CssClass = "Initial";
        Tab6.CssClass = "Initial";
        MainView.ActiveViewIndex = 2;
    }
    
    protected void Tab4_Click(object sender, EventArgs e)
    {
        Tab1.CssClass = "Initial";
        Tab2.CssClass = "Initial";
        Tab3.CssClass = "Initial";
        Tab4.CssClass = "Clicked";
        Tab5.CssClass = "Initial";
        Tab6.CssClass = "Initial";
        MainView.ActiveViewIndex = 3;

    }
    protected void Tab5_Click(object sender, EventArgs e)
    {
        Tab1.CssClass = "Initial";
        Tab2.CssClass = "Initial";
        Tab3.CssClass = "Initial";
        Tab4.CssClass = "Initial";
        Tab5.CssClass = "Clicked";
        Tab6.CssClass = "Initial";
        MainView.ActiveViewIndex = 4;

    }
    protected void Tab6_Click(object sender, EventArgs e)
    {
        Tab1.CssClass = "Initial";
        Tab2.CssClass = "Initial";
        Tab3.CssClass = "Initial";
        Tab4.CssClass = "Initial";
        Tab5.CssClass = "Initial";
        Tab6.CssClass = "Clicked";
        MainView.ActiveViewIndex = 5;
    }

    protected void suwater_Click(object sender, EventArgs e)
    {

    }

    protected void bfee_TextChanged(object sender, EventArgs e)
    {

    }

    protected void recon_Click(object sender, EventArgs e)
    {
        string InsertSql = "INSERT INTO Reconnect(Al_ID,ReceiptDateR,ReceiptNoR,BookNoR,ReconnectionR) VALUES ('" + uniid.Text + "', '" + datepicker11.Text + "','" + rcpttno.Text + "','" + bkkno.Text + "','" + reconfee.Text + "') ";
        string connectionString = WebConfigurationManager.ConnectionStrings["Dom"].ConnectionString;
        SqlConnection cno = new SqlConnection(connectionString);

        SqlCommand cm = new SqlCommand(InsertSql, cno);



        try
        {
            cno.Open();
            var aded = cm.ExecuteNonQuery();
            rserr.Text = aded.ToString() + "Data is save sucessfully. .";
            


        }
        catch (Exception err)
        {
            rserr.Text = "Error during insert record.";
            rserr.Text += err.Message;

        }
        finally
        {
            cno.Close();

        }


    }
}