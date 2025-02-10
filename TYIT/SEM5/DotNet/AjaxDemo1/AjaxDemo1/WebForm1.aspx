<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AjaxDemo1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        
        <div>
            <h2>Simple AJAX Example</h2>

            <!-- UpdatePanel for partial page updates -->
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label1" runat="server" Text="Enter your name:"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                    <br /><br />
                    <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
                     <br /><br />
                    <asp:Label ID="CurrentTimeLabel" runat="server" Text=""></asp:Label>
               
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
