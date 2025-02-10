<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AdRoto.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .ad-rotator {
            margin-top: 20px;
            text-align: center;
        }
        .ad-rotator img {
            border: 1px solid #ccc;
            width: 300px;
            height: 250px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="ad-rotator">
                        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Ads.xml" />

        </div>
    </form>
</body>
</html>
