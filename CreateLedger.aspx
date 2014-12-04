<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateLedger.aspx.cs" Inherits="CreateLedger" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Create Ledger</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="content-wrapper">
    
            <div class="main-content">
                <div class="customerapp">
                    Customer Applied For  <asp:DropDownList ID="appFor" runat="server" />

                </div> <!-- end of customerapp -->
                <div class="alotte">
                    <p> <asp:Label runat="server"  ID="Aname" >Name</asp:Label> 
                        <asp:TextBox runat="server" ID="lstTextbox" CssClass="txb1" />
                       Sec <asp:DropDownList ID="lstsec" runat="server" Width="80px" /> 
                        
                        <asp:Label runat="server" ID="plotno" >Plot No</asp:Label>
                        <asp:TextBox ID="TextboxA" runat="server" />
                        Plot Size  <asp:DropDownList ID="lstplot" runat="server" Width="70px" />
                        <asp:Label ID="flor" runat="server" >Floor</asp:Label>
                        <asp:TextBox ID="TextboxB" runat="server" />
                        Type  <asp:DropDownList ID="lstType" runat="server" />
                      </p><br />
                    <asp:Button  ID="cre" runat="server" Text="Save" OnClick="cre_Click" CssClass="crebt" /> 

                </div>
                <asp:Label ID="EResult" runat="server" />
            </div>



            </div>

</asp:Content>

