<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BootstrapButton.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Bootstrap Button Demo</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .custom-button {
            margin: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 class="mt-5">Bootstrap Button Demo</h2>
            <button type="button" class="btn btn-primary custom-button" onclick="showAlert()">Primary Button</button>
            <button type="button" class="btn btn-success custom-button" onclick="changeText()">Success Button</button>
            <button type="button" class="btn btn-danger custom-button" onclick="toggleVisibility()">Toggle Visibility</button>

            <div id="message" class="mt-3" style="display:none;">
                <div class="alert alert-info">This is a message shown after clicking the Success Button.</div>
            </div>
            <div id="text" class="mt-3">
                <h4 id="dynamicText">Original Text</h4>
            </div>
        </div>
    </form>

    <script>
        function showAlert() {
            alert("You clicked the Primary Button!");
        }

        function changeText() {
            document.getElementById("dynamicText").innerText = "The text has been changed!";
            document.getElementById("message").style.display = "block"; // Show the message
        }

        function toggleVisibility() {
            var messageDiv = document.getElementById("message");
            if (messageDiv.style.display === "none") {
                messageDiv.style.display = "block"; // Show the message
            } else {
                messageDiv.style.display = "none"; // Hide the message
            }
        }
    </script>
</body>
</html>
