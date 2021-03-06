<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeFile="notice_publish.aspx.cs" Inherits="notice_publish" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .area{
            font-size:x-large;
            border-color:transparent;
            padding:5px;
        }
        td{
            text-align:center;
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
    <div>
        <table style="width:100%;padding:20px;">
            <tr><td style="text-align:left;"><asp:Label runat="server" Text="Publish Notice" Font-Size="X-Large"></asp:Label><br /></td></tr>
            <tr><td><textarea runat="server" placeholder="Write notice here" id="body" style="width:100%; height:200px;" class="area"></textarea></td></tr>
            <tr><td style="text-align:right;"><asp:Button runat="server" Text="Publish" ID="pbls" OnClick="pbls_Click" CssClass="btn"/></td></tr>
        </table>
    <table style="width:100%;padding:20px;">
        <tr><td><asp:Label runat="server" Text="View Published Notices" Font-Size="X-Large"></asp:Label></td></tr>
        <tr>
            <td>
                <div style="overflow-y:scroll;width:100%;height:300px;">
                    <asp:GridView ID="GridView1" runat="server" Width="100%" HeaderStyle-BackColor="Navy" HeaderStyle-Height="50px" HeaderStyle-ForeColor="White" RowStyle-Height="50px">
                        <Columns>
                            <asp:TemplateField ShowHeader="false">
                                <ItemTemplate>
                                    <asp:Button runat="server" ID="notice_details" CssClass="btn" Text="Notice Details" CommandName='<% #Eval("sl") %>' OnClick="notice_details_Click" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
