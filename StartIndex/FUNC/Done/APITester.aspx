<%@ Page Language="C#" AutoEventWireup="true" CodeFile="APITester.aspx.cs" Inherits="FUNC_Done_APITester" %>

<%@ Register Namespace="Google.API" TagPrefix="GoogleAPI" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <GoogleAPI:Chart runat="server" id="Chart1" Width="400" Height="150" LineColor="ff0000" BackgroundColor="efefef" ToolTip="Hello World"></GoogleAPI:Chart>
    
    <br /><br />
    
    <GoogleAPI:Chart runat="server" id="Chart3" Width="400" Height="350" LineColor="0000ff" ShowGridLines="true" ToolTip="Hello World" CssClass="lc"></GoogleAPI:Chart>
        
    </div>
    </form>
</body>
</html>

