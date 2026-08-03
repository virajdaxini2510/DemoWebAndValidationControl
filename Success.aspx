<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="DemoWebAndValidationControl.Success" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo Web Application</title>
</head>
<body>
    <form id="form1" runat="server">

        <h2>Registration Successful</h2>
                <asp:Literal
                    ID="litMessage"
                    runat="server">
                </asp:Literal>

                <br />
                <br />

                <asp:HyperLink
                    ID="HyperLink1"
                    runat="server"
                    NavigateUrl="Registration.aspx"
                    Text="Register Another Student">
                </asp:HyperLink>
    </form>
</body>
</html>
