<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Validations.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label for="txtUsername">Username:</label>
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUsername" runat="server"
                ControlToValidate="txtUsername"
                ErrorMessage="Username is required!"
                CssClass="error" EnableClientScript="false"></asp:RequiredFieldValidator>
        </div>

        <!-- Email Field -->
        <div class="form-control">
            <label for="txtEmail">Email:</label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="Email is required!"
                CssClass="error" EnableClientScript="false"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server"
                ControlToValidate="txtEmail"
                ErrorMessage="Invalid email format!"
                ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$"
                CssClass="error" EnableClientScript="false"></asp:RegularExpressionValidator>
        </div>

        <!-- Password Field -->
       <%-- <div class="form-control">
            <label for="txtPassword">Password:</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                ControlToValidate="txtPassword"
                ErrorMessage="Password is required!"
                CssClass="error" EnableClientScript="false"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revPassword" runat="server"
                ControlToValidate="txtPassword"
                ErrorMessage="Password must be at least 6 characters, and contain one uppercase, one lowercase letter and one number!"
                ValidationExpression="^(?=.[a-z])(?=.[A-Z])(?=.*\d).{5,}$"
                CssClass="error" EnableClientScript="false"></asp:RegularExpressionValidator>
        </div>--%>

        <!-- Confirm Password Field -->
       <%-- <div class="form-control">
            <label for="txtConfirmPassword">Confirm Password:</label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server"
                ControlToValidate="txtConfirmPassword"
                ErrorMessage="Please confirm your password!"
                CssClass="error" EnableClientScript="false"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cvConfirmPassword" runat="server"
                ControlToValidate="txtConfirmPassword"
                ControlToCompare="txtPassword"
                ErrorMessage="Passwords do not match!"
                CssClass="error" EnableClientScript="false"></asp:CompareValidator>
        </div>--%>

        <!-- Age Field -->
        <div class="form-control">
            <label for="txtAge">Age:</label>
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAge" runat="server"
                ControlToValidate="txtAge"
                ErrorMessage="Age is required!"
                CssClass="error" EnableClientScript="false"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="rvAge" runat="server"
                ControlToValidate="txtAge"
                ErrorMessage="Age must be between 18 and 100!"
                MinimumValue="18" MaximumValue="100" Type="Integer"
                CssClass="error" EnableClientScript="false"></asp:RangeValidator>
        </div>

      

        <!-- Validation Summary -->
        <asp:ValidationSummary ID="vsSummary" runat="server" CssClass="error" />

        <!-- Submit Button -->
        <div class="form-control">
            <asp:Button ID="btnSubmit" runat="server" Text="Register" OnClick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>
