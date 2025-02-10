<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="NavigationControls.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body { font-family: Arial, sans-serif; }
        .container { margin: 20px; }
        .menu, .treeview, .breadcrumb { margin-bottom: 70px; }
    </style>
</head>
<body >
    <form id="form1" runat="server">
        <div class="container">
              <h2>Welcome to the Home Page</h2>

            <!-- Menu Control -->
            <div class="menu">
                <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1" Orientation="Horizontal" />
            </div>

            <!-- TreeView Control -->
            <div class="treeview">
                <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" />
            </div>

            <!-- SiteMapPath Control (Breadcrumbs) -->
            <div class="breadcrumb">
                <asp:SiteMapPath ID="SiteMapPath1" runat="server"/>
            </div>

            <!-- Main content of the page -->
            <p>This is the home page. Use the menu, treeview, or breadcrumb to navigate the site.</p>

            <!-- SiteMapDataSource to bind the Web.sitemap to the navigation controls -->
            <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        </div>
    </form>
</body>
</html>
