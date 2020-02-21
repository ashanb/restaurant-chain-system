<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ErrorPage.aspx.cs" Inherits="ErrorPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Error Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="ErrorLabel" runat="server"></asp:Label> 
        <asp:HyperLink ID="HyperLink1" navigateUrl="~/FUNC/Done/login.aspx" runat="server">Go to Login Page</asp:HyperLink>
    </div>
    </form>
</body>
</html>
