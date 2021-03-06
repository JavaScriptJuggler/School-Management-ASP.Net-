<%@ Page Language="C#" AutoEventWireup="true" CodeFile="notice_viewer.aspx.cs" Inherits="notice_viewer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 37px;
        }
        .auto-style2 {
            width: 652px;
            text-align:right;
        }
        .area{
            font-size:x-large;
            border-color:transparent;
        }
        .btn{
           height:40px;
           width:120px;
           border-radius:5px;
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:100%;">
    <table style="width:100%;padding:20px;">
        <tr><td colspan="2"><asp:Label runat="server" Text="Serial No: " Font-Bold="True" Font-Size="Large"></asp:Label><asp:Label ID="sl" runat="server" Font-Size="Large"></asp:Label><br /><br /></td></tr>
        <tr><td colspan="2"><textarea id="body" runat="server" style="text-wrap:normal;word-wrap:break-word;width:100%;" class="area" wrap="soft"></textarea></td></tr>
        <tr><td colspan="2" style="text-align:right;"><asp:Label Text="Date: " runat="server" Font-Bold="True" Font-Size="Large"></asp:Label><asp:Label runat="server" ID="date" Font-Size="Large"></asp:Label></td></tr>
        <tr><td class="auto-style2"><asp:Button runat="server" ID="back" Text="Back" CssClass="btn" /></td><td><asp:Button runat="server" ID="dlt" Text="Delete Notice" CssClass="btn" OnClick="dlt_Click" /></td></tr>
    </table>
    </div>
    </form>
</body>
</html>
