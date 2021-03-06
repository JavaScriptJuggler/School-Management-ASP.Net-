<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeFile="transport.aspx.cs" Inherits="transport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        td{
            padding:10px;
        }
       .txt{
            width:200px;
            height:20px;
       }
       .btn{
           height:40px;
           width:120px;
           border-radius:5px;
       }
       .grid{
           text-align:center;
       }
    </style>
</head>
<body style="background-color:wheat;">
    <form id="form1" runat="server">
    <div>
   <table style="padding:20px;width:100%;">
       <tr><td><asp:Label runat="server" Text="Department of Transport" Font-Size="X-Large" Font-Bold="true"></asp:Label></td></tr>
        <tr><td>
            <table style="width:100%;padding:20px;">
                <tr><td><asp:Label runat="server" Text="Card Number"></asp:Label></td><td><asp:TextBox runat="server" ID="cd" CssClass="txt" ReadOnly="true"></asp:TextBox></td></tr>
               <tr><td><asp:Label runat="server" Text="Student Name"></asp:Label></td><td><asp:TextBox runat="server" ID="sn" CssClass="txt" ReadOnly="true"></asp:TextBox></td></tr>
                 <tr><td><asp:Label runat="server" Text="Roll Number"></asp:Label></td><td><asp:TextBox runat="server" ID="roll" CssClass="txt" ReadOnly="true"></asp:TextBox></td></tr>
                 <tr><td><asp:Label runat="server" Text="Fees"></asp:Label></td><td><asp:TextBox runat="server" ID="fees" CssClass="txt" ReadOnly="true"></asp:TextBox></td></tr>
                 <tr><td><asp:Label runat="server" Text="Date"></asp:Label></td><td><asp:TextBox runat="server" ID="date" CssClass="txt" ReadOnly="true"></asp:TextBox></td></tr>
                 <tr><td><asp:Label runat="server" Text="Status"></asp:Label></td><td><asp:TextBox runat="server" ID="stat" CssClass="txt" ReadOnly="true"></asp:TextBox></td></tr>
                <tr><td colspan="2" style="text-align:center;"><asp:Button runat="server" ID="update" Text="Take Payment" OnClick="update_Click" CssClass="btn" BackColor="#00CC66" BorderColor="#339933" BorderStyle="Inset" BorderWidth="2px" />&nbsp;&nbsp;<asp:Button runat="server" ID="clr" Text="Clear Fields" OnClick="clr_Click" CssClass="btn" BackColor="#FF0066" BorderStyle="Inset" BorderWidth="2px" ForeColor="White" /></td></tr>
            </table>
            </td><td>
                <table style="width:100%;">
                    <tr><td style="text-align:right;"><asp:Label runat="server" Font-Size="X-Large" Text="Search transport card: "></asp:Label></td><td><asp:TextBox runat="server" ID="srchcrd" placeholder="Card Number" AutoPostBack="true" CssClass="txt" OnTextChanged="srchcrd_TextChanged"></asp:TextBox></td></tr>
                    <tr><td colspan="2"  style="overflow-y:scroll; height:300px;">
                      <asp:GridView CssClass="grid" ID="GridView1" runat="server" Width="100%" HeaderStyle-BackColor="Navy" HeaderStyle-ForeColor="White">
                    <Columns>
                        <asp:TemplateField ShowHeader="false">
                            <ItemTemplate>
                                <asp:Button runat="server" CssClass="btn" ID="btn" Text="Show Details" CommandName='<% #Eval("tno")  %>' OnClick="btn_Click" BackColor="#000099" BorderColor="#000099" BorderStyle="Inset" BorderWidth="2" ForeColor="White" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                           </td></tr></table>
              
            </td></tr>
        </table>
    </div>
    </form>
</body>
</html>
