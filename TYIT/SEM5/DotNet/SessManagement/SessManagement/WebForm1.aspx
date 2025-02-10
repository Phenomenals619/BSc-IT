<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SessManagement.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body runat="server" id="bodyTag">
    <form id="form1" runat="server">
        <div>
            <h1>State Management Demo</h1>

            
            <h2>View State Example</h2>
            <asp:Label ID="lblViewState" runat="server" Text="Enter your name:"></asp:Label><br />
            <asp:TextBox ID="txtViewState" runat="server"></asp:TextBox><br />
            <asp:Button ID="btnViewState" runat="server" Text="Save to View State" OnClick="btnViewState_Click" /><br />
            <asp:Label ID="lblViewStateResult" runat="server" Text=""></asp:Label><br />
            <br />

          
            <h2>Session State Example</h2>
            <asp:Label ID="lblSessionState" runat="server" Text="Enter your age:"></asp:Label><br />
            <asp:TextBox ID="txtSessionState" runat="server"></asp:TextBox><br />
            <asp:Button ID="btnSessionState" runat="server" Text="Save to Session State" OnClick="btnSessionState_Click" /><br />
            <asp:Label ID="lblSessionStateResult" runat="server" Text=""></asp:Label><br />
            <br />

            <h2>Query String Example</h2>
            <asp:Label ID="lblQueryString" runat="server" Text="Enter your favorite color:"></asp:Label><br />
            <asp:TextBox ID="txtQueryString" runat="server"></asp:TextBox><br />
            <asp:Button ID="btnQueryString" runat="server" Text="Submit Query String" OnClick="btnQueryString_Click" /><br />
            <asp:Label ID="lblQueryStringResult" runat="server" Text=""></asp:Label><br />
            <br />

          
            <h2>Cookie Example</h2>
            <asp:Label ID="lblCookie" runat="server" Text="Enter your email:"></asp:Label><br />
            <asp:TextBox ID="txtCookie" runat="server"></asp:TextBox><br />
            <asp:Button ID="btnCookie" runat="server" Text="Save to Cookie" OnClick="btnCookie_Click" /><br />
            <asp:Label ID="lblCookieResult" runat="server" Text=""></asp:Label><br />
            <br />

        </div>
    </form>
</body>
</html>
