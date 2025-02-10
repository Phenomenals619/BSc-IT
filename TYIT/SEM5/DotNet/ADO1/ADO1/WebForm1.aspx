<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ADO1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
     .auto-style1 {
         width: 50%;
         border: 1px solid #FF00FF;
     }
         .auto-style2 {
             height: 31px;
         }
 </style>
</head>
<body>
    <form id="form1" runat="server">
                <div  >
<center>
            <table class="auto-style1"style="padding:10px; padding-left:5px;" >
                <tr>
                    <td>ID:</td>
                    <td>
                        <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                    </td>
                    <td>Name:</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnAdd" runat="server" Text="INSERT" OnClick="btnAdd_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnDelete" runat="server" Text="DELETE" OnClick="btnDelete_Click" />
                    </td>
                </tr>
                <tr>
                    <td>Course:</td>
                    <td>
                        <asp:DropDownList ID="ddlCourse" runat="server">
                            <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>C#</asp:ListItem>
                            <asp:ListItem>Java</asp:ListItem>
                            <asp:ListItem>Python</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>Gender:</td>
                    <td>
                        <asp:RadioButtonList ID="rblGender" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:Button ID="btnUpdate" runat="server" Text="UPDATE" OnClick="btnUpdate_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnFetch" runat="server" Text="FETCH" OnClick="btnFetch_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="6" class="auto-style2">
                        <asp:Label ID="lblTotal" runat="server" Text="Total Students: "></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="6" class="auto-style2">
                        <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <asp:GridView ID="GridView1" runat="server" Width="969px">
                        </asp:GridView>
                    </td>
                </tr>
            </table>
    </center>
        </div>
    </form>
</body>
</html>
