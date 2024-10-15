<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ServerControls.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- TextBox Control -->
            <asp:TextBox ID="txtName" runat="server" AutoPostBack="true" OnTextChanged="txtName_TextChanged"></asp:TextBox>
            <br />

            <!-- DropDownList Control -->
            <asp:DropDownList ID="ddlColor" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlColor_SelectedIndexChanged">
                <asp:ListItem Value="Red">Red</asp:ListItem>
                <asp:ListItem Value="Green">Green</asp:ListItem>
                <asp:ListItem Value="Blue">Blue</asp:ListItem>
            </asp:DropDownList>
            <br />

            <!-- CheckBoxList Control -->
            <asp:CheckBoxList ID="cblHobbies" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="Reading">Reading</asp:ListItem>
                <asp:ListItem Value="Writing">Writing</asp:ListItem>
                <asp:ListItem Value="Coding">Coding</asp:ListItem>
            </asp:CheckBoxList>
            <br />

            <!-- RadioButtonList Control -->
            <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="Male">Male</asp:ListItem>
                <asp:ListItem Value="Female">Female</asp:ListItem>
            </asp:RadioButtonList>
            <br />

            <!-- Button Control -->
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            <br />

            <!-- Label Control -->
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
