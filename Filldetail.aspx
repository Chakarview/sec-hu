<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Filldetail.aspx.cs" Inherits="Filldetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="content-wrapper">
    <h2>Fill Detail for your Bill updation.</h2>
    <table class="filltbl">
        <tr><td>
    <asp:Label ID="secl" runat="server" Text="Sector" /></td><td><asp:TextBox ID="secbox" runat="server" /></td></tr> 
   <tr><td> <asp:Label ID="plotla" runat="server" Text="Plot Size" /></td><td><asp:TextBox ID="plotbox" runat="server" /> </td></tr>

   <tr ><td style="padding:20px;">  <asp:Button ID="fillde" runat="server" Font-Size="Medium" Width="90px" Height="30px" Text="Submit" OnClick="fillde_Click" /> </td></tr>
 
    </table>
    <asp:Label ID="rner" runat="server" />
         </div>

</asp:Content>

