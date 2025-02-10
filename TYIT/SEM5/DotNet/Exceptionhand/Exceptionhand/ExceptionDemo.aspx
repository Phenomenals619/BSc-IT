<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExceptionDemo.aspx.cs" Inherits="Exceptionhand.ExceptionDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>User Defined Exception Handling Demo</h2>
            <asp:TextBox ID="InputTextBox" runat="server" placeholder="Enter a number"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            <br /><br />
            <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="ErrorLabel" runat="server" ForeColor="Red" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
