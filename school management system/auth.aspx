<%@ Page Language="C#" AutoEventWireup="true" CodeFile="auth.aspx.cs" Inherits="f1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:Label runat="server" Text="You are goint to access High Security zone \n Prove your authentication"></asp:Label><br />
        <label runat="server">Member Id: </label><br />
        <asp:TextBox runat="server" ID="user" ></asp:TextBox><br />
        <label runat="server">Password: </label><br />
        <asp:TextBox runat="server" ID="pass" TextMode="Password" ></asp:TextBox><br /><br />
        <asp:Button runat="server" Text="Authentication" ID="btn" OnClick="btn_Click" />
        <asp:HyperLink runat="server" Text="Member Request" NavigateUrl="~/req.aspx"></asp:HyperLink>
    </div>
    </form>
</body>
</html>