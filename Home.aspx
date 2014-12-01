<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="content-wrapper">
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Button Text="Water"  ID="Tab1" BorderStyle="None" CssClass="Initial" runat="server" OnClick="Tab1_Click" />
                <asp:Button Text="Sewer" ID="Tab2" BorderStyle="None" CssClass="Initial" runat="server" OnClick="Tab2_Click" />
                <asp:Button Text="Mis" ID="Tab3" BorderStyle="None" CssClass="Initial" runat="server" OnClick="Tab3_Click" />
                <asp:Button Text="Meter" ID="Tab4" BorderStyle="None" CssClass="Initial" runat="server" OnClick="Tab4_Click" />
                <asp:Button Text="Disconnect" ID="Tab5" BorderStyle="None" CssClass="Initial" runat="server" OnClick="Tab5_Click" />
                <asp:Button Text="Reconnect" ID="Tab6" BorderStyle="None" CssClass="Initial" runat="server" OnClick="Tab6_Click" />
                <asp:MultiView ID="MainView" runat="server" >
                    <asp:View ID="lstView" runat="server">
                        <table class="viewtable" >
                            <tr>
                                <td>
                                   
                                  <p> <asp:Label ID="Nam" CssClass="crlab" runat="server">Water Connection Fee</asp:Label>
                                     <asp:TextBox ID="bfee" runat="server"  /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="un" CssClass="crlab" runat="server">Security</asp:Label> <asp:TextBox ID="unb" runat="server" />
                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="charl" CssClass="crlab" runat="server">Charges</asp:Label> <asp:TextBox ID="bchar" runat="server" />

                                  </p>


                                    <br /><br />
                                    <asp:Button ID="suwater" runat="server" OnClick="suwater_Click" Text="Save" />
                                </td>
                            </tr>
                        </table>
                     </asp:View>
                    <asp:View ID="View2" runat="server">
                        <table class= "viewtable" >
                            <tr>
                                <td>
                                    <h1>View 2</h1>
                                </td>
                            </tr>
                        </table>
                     </asp:View>
                    <asp:View ID="View3" runat="server">
                        <table class="viewtable" >
                            <tr>
                                <td>
                                    <h1>View 3</h1>
                                </td>
                            </tr>
                        </table>
                     </asp:View>
                     <asp:View ID="View4" runat="server">
                        <table class="viewtable" >
                            <tr>
                                <td>
                                    <h1>View 4</h1>
                                </td>
                            </tr>
                        </table>
                     </asp:View>
                     <asp:View ID="View5" runat="server">
                        <table class="viewtable" >
                            <tr>
                                <td>
                                    <h1>View 5</h1>
                                </td>
                            </tr>
                        </table>
                     </asp:View>
                     <asp:View ID="View6" runat="server">
                        <table class="viewtable" >
                            <tr>
                                <td>
                                    <h1>View 6</h1>
                                </td>
                            </tr>
                        </table>
                     </asp:View>
                    
                </asp:MultiView>

            </td>
        </tr>

    </table> 


          </div>

</asp:Content>

