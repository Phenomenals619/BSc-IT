<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="cook1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

        </div>
        <p>
            Select the Company</p>
        <p>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" >
                <asp:ListItem Value="apple" ID="apple">Apple</asp:ListItem>
                <asp:ListItem Value="dell" ID="dell">Dell</asp:ListItem>
                <asp:ListItem Value="lenovo"  ID="lenovo">Lenovo</asp:ListItem>
                <asp:ListItem>Acer</asp:ListItem>
            </asp:CheckBoxList>
        </p>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
