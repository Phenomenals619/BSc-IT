<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Calci1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <h2>Simple Calculator</h2>
            <asp:Label ID="Label1" runat="server" Text="Enter First Number: "></asp:Label>
            <asp:TextBox ID="txtFirstNumber" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="Label2" runat="server" Text="Enter Second Number: "></asp:Label>
            <asp:TextBox ID="txtSecondNumber" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
            <asp:Button ID="btnSubtract" runat="server" Text="Subtract" OnClick="btnSubtract_Click" />
            <asp:Button ID="btnMultiply" runat="server" Text="Multiply" OnClick="btnMultiply_Click" />
            <asp:Button ID="btnDivide" runat="server" Text="Divide" OnClick="btnDivide_Click" />
            <br /><br />
            <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
