<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="UserControls.Index" %>
<%@ Register Src="~/Header.ascx" TagPrefix="uc" TagName="Header" %>
<%@ Register  Src="~/Body.ascx" TagPrefix="uc" TagName="Body" %>
<%@ Register Src="~/Footer.ascx" TagPrefix="uc" TagName="Footer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc:Header ID="Hader" runat="server" />
            <uc:Body ID="Body" runat="server" />
            <uc:Footer ID="Footer" runat="server" />
        </div>
    </form>
</body>
</html>
