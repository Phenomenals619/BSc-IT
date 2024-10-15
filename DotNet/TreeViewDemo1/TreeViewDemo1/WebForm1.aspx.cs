using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TreeViewDemo1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PopulateTreeView();
        }
        private void PopulateTreeView()
        {
            // Root node with folder icon
            TreeNode rootNode = new TreeNode("Projects", "Root", "~/images/folder.png");
            TreeView1.Nodes.Add(rootNode);

            // Add child nodes with file icons
            TreeNode childNode1 = new TreeNode("Project1.docx", "Child1", "~/images/squartle.png");
            TreeNode childNode2 = new TreeNode("Project2.xlsx", "Child2", "~/images/file.png");

            rootNode.ChildNodes.Add(childNode1);
            rootNode.ChildNodes.Add(childNode2);

            // Expand the root node
            rootNode.Expand();
        }
    }
}