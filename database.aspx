<%@ Page Language="C#" AutoEventWireup="true" CodeFile="database.aspx.cs" Inherits="database" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

        <asp:Button  ID="db" runat="server" Text="OK" OnClick="db_Click" />

        <asp:Label ID="ErrorResult" runat="server" />


    </div>
    </form>
</body>
</html>
