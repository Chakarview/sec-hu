<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome</title>
    <link rel="stylesheet" href="style/bootstrap.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <header>
            <div class="navbar-top">
                </div>
             </header>

        <div class="content-wrapper">
            <div class="main-content">
                <div class="pfloat-left">

                </div>
                <div class="lfloat-right">
                     <section id="loginform">
                         <div class="form-horizontal">
                             <h4>Use a local account to log in.</h4><hr />
                         </div>
                         <p class="form-label">
                             <asp:Label runat="server" AssociatedControlID="UserName" CssClass="col-label" >UserName</asp:Label>
                            
                                <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
                                 <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" CssClass="txt-d" ErrorMessage="The username is required." />
                            
                         </p><!-- form-group -->
                       <p class="form-label">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="coltxt-label">Password</asp:Label>
                         
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-d" ErrorMessage="The password field is required." />
                       
                      </p> <!-- form-group -->
                         <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn" />
                        </div>
                             <asp:Label ID="Errormessage" runat="server" />
                    </div>
                     </section>

                </div>


            </div>


        </div>

    
    </div>
    </form>
</body>
</html>
