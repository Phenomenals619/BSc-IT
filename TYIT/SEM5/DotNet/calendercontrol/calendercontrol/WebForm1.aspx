<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="calendercontrol.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <asp:Calendar ID="calVacation" runat="server" 
                SelectionMode="DayWeekMonth" 
                OnSelectionChanged="calVacation_SelectionChanged">
            </asp:Calendar>
            <br />
            <asp:Label ID="lblVacationDates" runat="server" Text=""></asp:Label>
            <br />
            <asp:Button ID="btnBookVacation" runat="server" Text="Book Vacation" OnClick="btnBookVacation_Click" />
        </div>
    </form>
</body>
</html>
