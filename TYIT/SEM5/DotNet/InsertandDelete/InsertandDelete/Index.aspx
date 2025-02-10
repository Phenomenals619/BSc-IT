<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="InsertandDelete.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            RollNo: <asp:TextBox ID="rollno" runat="server"></asp:TextBox>
            <br /><br />
            Name: <asp:TextBox ID="name" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="message" runat="server" Text=""></asp:Label>
            <br /><br />
            <asp:Button ID="insertData" runat="server" Text="Insert" OnClick="insertData_Click" />
            <asp:Button ID="deleteData" runat="server" Text="Delete" OnClick="deleteData_Click" />
        </div>
    </form>
</body>
</html>
