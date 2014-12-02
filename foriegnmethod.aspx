<%@ Page Language="C#" AutoEventWireup="true" CodeFile="foriegnmethod.aspx.cs" Inherits="foriegnmethod" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:Label ID="lbp" runat="server" >PetName</asp:Label><asp:TextBox ID="pettbox" runat="server"></asp:TextBox>
        <br /><br /><asp:Label ID="lbage" runat="server" >Pet Age</asp:Label><asp:TextBox ID="boxpetage" runat="server">
        </asp:TextBox><br /><asp:Button ID="btnpet" runat="server" Text="Done" OnClick="btnpet_Click" />
        
        
        <asp:Label ID="Erdis" runat="server"></asp:Label>

    
    </div>
    </form>
</body>
</html>
