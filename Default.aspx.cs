using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
             
        }

    }
    public void LogIn(object sender, EventArgs e)
    {
        Page.Validate();
        if (!Page.IsValid) return;
        if(FormsAuthentication.Authenticate(UserName.Text, Password.Text))
        {
            FormsAuthentication.RedirectFromLoginPage(UserName.Text, false);
            Response.Redirect("Home.aspx");
        }
        else
        {
            Errormessage.Text = "The username or password is wrong.";

        }
 

    
    }

}