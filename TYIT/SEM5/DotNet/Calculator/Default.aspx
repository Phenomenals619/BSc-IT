<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Num1:
        <asp:TextBox ID="TextBox1" runat="server" style="margin-bottom: 0px"></asp:TextBox>
        <br />
        <br />
        Num2:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
        <br />
        <br />
        Addition =
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br />
        Subtraction=
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        <br />
        Multiplication=
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        <br />
        Divide=
        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
    
    </div>
    </form>
</body>
</html>
