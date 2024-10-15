<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TreeViewDemo1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
        body {
            font-family: Arial, sans-serif;
        }
        .treeview-container {
            width: 300px;
            margin: 20px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .treeview-container h2 {
            text-align: center;
            color: #4CAF50;
        }
        .treeview-node {
            padding: 5px;
            font-size: 14px;
        }
        .treeview-node img {
            vertical-align: middle;
            margin-right: 8px;
        }
        .treeview-node:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="treeview-container">
            <h2>File Structure</h2>
            <asp:TreeView ID="TreeView1" runat="server" CssClass="treeview">
                <Nodes>
                    <asp:TreeNode Text="Documents" Value="Root1" ImageUrl="~/images/folder.png">
                        <asp:TreeNode Text="Resume.docx" Value="Child1" ImageUrl="~/images/squartle.png"></asp:TreeNode>
                        <asp:TreeNode Text="Budget.xlsx" Value="Child2" ImageUrl="~/images/file.png"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="Photos" Value="Root2" ImageUrl="~/images/folder.png">
                        <asp:TreeNode Text="Vacation.jpg" Value="Child3" ImageUrl="~/images/file.png"></asp:TreeNode>
                        <asp:TreeNode Text="Birthday.png" Value="Child4" ImageUrl="~/images/file.png"></asp:TreeNode>
                    </asp:TreeNode>
                </Nodes>
            </asp:TreeView>
        </div>
    </form>
</body>
</html>
