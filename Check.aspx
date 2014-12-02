<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Check.aspx.cs" Inherits="Check" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:Label ID="lusername" runat="server" >FirstName</asp:Label>
        <asp:TextBox ID="lbox" runat="server"></asp:TextBox> <br /><br />
        <asp:Label ID="llastname" runat="server" Text="LastName"></asp:Label>
        <asp:TextBox ID="lboxl" runat="server"></asp:TextBox> <br />

        <asp:Button ID="sub" runat="server" Text="OK" OnClick="sub_Click" />



<br />        <asp:Label ID="lstResult" runat="server" ></asp:Label>


        <br /><br /><br />
         <asp:Label ID="lbp" runat="server" >PetName</asp:Label><asp:TextBox ID="pettbox" runat="server"></asp:TextBox>
        <br /><br /><asp:Label ID="lbage" runat="server" >Pet Age</asp:Label><asp:TextBox ID="boxpetage" runat="server">
        </asp:TextBox><br /><asp:Button ID="btnpet" runat="server" Text="Done" OnClick="btnpet_Click" />
        
        
        <asp:Label ID="Erdis" runat="server"></asp:Label>


    
    </div>
    </form>
</body>
</html>
