<%@ Page Language="C#" AutoEventWireup="true" CodeFile="menu.aspx.cs" Inherits="menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .menu{
           width:150px;
           text-align:center;
        }
        .parent{
            width:100%;
            background-color:#003399;
        }
        body{
           margin-left:30px;
           margin-top:30px;
        }
        .auto-style1 {
            width: 100%;
            height: 400px;
            scrollbar-arrow-color:black;
            word-wrap:break-word;
            font-size:larger;
            padding:15px;
        }
        .grid{
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="Welcome Soumya Manna" runat="server" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
        </div><br /><br />
    <div class="parent">
        <asp:Menu ID="Menu1" runat="server" OnMenuItemClick="Menu1_MenuItemClick" Orientation="Horizontal"  DynamicHoverStyle-BackColor="#00CC99" StaticMenuItemStyle-CssClass="menu" Font-Size="Large" Width="100%">
<DynamicHoverStyle BackColor="#00CC99"></DynamicHoverStyle>

            <DynamicMenuItemStyle BackColor="#003399" ForeColor="White" HorizontalPadding="20px" ItemSpacing="10px" VerticalPadding="15px" Width="300px" />
            <Items>
                <asp:MenuItem Text="Office Department">
                    <asp:MenuItem Text="Add new students" Value="f2.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="View students" NavigateUrl="#"></asp:MenuItem>
                    <asp:MenuItem Text="Examination area"></asp:MenuItem>
                </asp:MenuItem>
                 <asp:MenuItem Text="Library Department" >
                     <asp:MenuItem Text="Library Management" NavigateUrl="~/lib.aspx"></asp:MenuItem>
                     <asp:MenuItem Text="Operational Details" NavigateUrl="#"></asp:MenuItem>
                     <asp:MenuItem Text="Inform technical team" NavigateUrl="#"></asp:MenuItem>
                 </asp:MenuItem>
                 <asp:MenuItem Text="Transportation Department">
                     <asp:MenuItem Text="Transportation mnagement" NavigateUrl="~/transport.aspx"></asp:MenuItem>
                     <asp:MenuItem Text="Fair Management" Value=""></asp:MenuItem>
                     <asp:MenuItem Text="Inform technical team" NavigateUrl="#"></asp:MenuItem>
                 </asp:MenuItem>
                 <asp:MenuItem Text="Notices">
                     <asp:MenuItem Text="Publish New Notices"  Value="notice_publish.aspx"></asp:MenuItem>
                 </asp:MenuItem>
                 <asp:MenuItem Text="Help" NavigateUrl="#">
                     <asp:MenuItem Text="Automated Quaries" NavigateUrl="#"></asp:MenuItem>
                     <asp:MenuItem Text="About Institution" NavigateUrl="#"></asp:MenuItem>
                     <asp:MenuItem Text="Contact Developer Team" NavigateUrl="#"></asp:MenuItem>
                 </asp:MenuItem>
            </Items>
            
                        <StaticHoverStyle BackColor="White" ForeColor="#003399" />

<StaticMenuItemStyle CssClass="menu" HorizontalPadding="50px" BackColor="#003399" ForeColor="White" ItemSpacing="50px" VerticalPadding="10px" Width="200px"></StaticMenuItemStyle>
            <StaticMenuStyle Width="350px" />
        </asp:Menu>
    </div>
        <div style="width:100%;">
            <br />
            <div style="text-align:center;"><asp:Label runat="server" Text="Notices" Font-Size="X-Large" Font-Underline="True"></asp:Label><br /><br /></div>
            <div style="background-color:antiquewhite;overflow-y:scroll;" runat="server" class="auto-style1" id="nb" >
                <asp:GridView ID="GridView1" runat="server" Width="100%" BorderColor="Transparent" CssClass="grid" OnRowDataBound="GridView1_RowDataBound" HeaderStyle-BackColor="Navy" HeaderStyle-ForeColor="White">
                    
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
