<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DisconnectedData.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="True" 
                HeaderStyle-BackColor="LightGray" HeaderStyle-ForeColor="Black" 
                BorderColor="Gray" BorderWidth="1px" />
        </div>
    </form>
</body>
</html>
