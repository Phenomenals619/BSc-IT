<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="NavigationControls.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <h2>About Us</h2>

            <!-- Navigation controls (same as Default.aspx) -->
            <h2>Menu</h2>
            <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1" Orientation="Horizontal" />
            <h2>Tree View</h2>
            <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" />
            <h2>SiteView</h2>
            <asp:SiteMapPath ID="SiteMapPath1" runat="server" />

            <!-- Page specific content -->
            <p>This is the About page. Here you can learn more about our company.</p>

            <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        </div>
    </form>
</body>
</html>
