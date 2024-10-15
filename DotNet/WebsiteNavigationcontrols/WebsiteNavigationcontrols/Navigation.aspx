<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Navigation.aspx.cs" Inherits="WebsiteNavigationcontrols.Navigation" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Website Navigation Controls</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Menu Control</h2>
        <asp:Menu ID="MainMenu" runat="server" DataSourceID="SiteMapDataSource1" >
        </asp:Menu>
        <br /><br />

        <h2>TreeView Control</h2>
        <asp:TreeView ID="MainTreeView" runat="server" DataSourceID="SiteMapDataSource1">
        </asp:TreeView>
        <br /><br />

        <h2>SiteMapPath Control</h2>   
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
    </form>
</body>
</html>