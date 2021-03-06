<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeFile="lib.aspx.cs" Inherits="lib" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        td{
            padding:10px;
            text-align:center;
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
    </style>
</head>
<body style="background-color:wheat;">
    <form id="form1" runat="server">
    <div style="display:flex;width:100%;">
    <div style="width:40%;float:left;margin-top:20px;margin-left:20px;">
        <asp:Label runat="server" Text="Rabindranath Library" Font-Bold="True" Font-Size="X-Large"></asp:Label>
    <div>
        <br /><br />
        <table style="width:100%;">
            <tr><td><asp:Label runat="server" Text="Card no :" Font-Size="Large" ></asp:Label> </td><td><asp:TextBox runat="server" ID="cd" CssClass="txt" ReadOnly="true" ></asp:TextBox></td></tr>
            <tr><td><asp:Label runat="server" Text="student Name :" Font-Size="Large" ></asp:Label> </td><td><asp:TextBox runat="server" ID="nm" CssClass="txt" ReadOnly="true" ></asp:TextBox></td></tr>
            <tr><td><asp:Label runat="server" Text="Roll No :" Font-Size="Large" ></asp:Label></td><td><asp:TextBox runat="server" ID="roll" CssClass="txt" ReadOnly="true"></asp:TextBox></td></tr>
            <tr><td><asp:Label runat="server" Text="Book Name :" Font-Size="Large" ></asp:Label></td><td><asp:TextBox runat="server" ID="booknm" CssClass="txt" ></asp:TextBox></td></tr>
            <tr><td><asp:Label runat="server" Text="Date :" Font-Size="Large" ></asp:Label></td><td><asp:TextBox runat="server" ID="date" CssClass="txt" ReadOnly="true" ></asp:TextBox></td></tr>
            <tr><td><asp:Label runat="server" Text="Status :" Font-Size="Large" ></asp:Label></td><td><asp:TextBox runat="server" ID="stat" CssClass="txt" ReadOnly="true" ></asp:TextBox></td></tr>
        <tr><td></td><td><asp:Button runat="server" Text="Update" OnClick="Unnamed_Click" CssClass="btn" BackColor="#009999" BorderColor="#00CC66" BorderStyle="Inset" BorderWidth="2px" ForeColor="White" />&nbsp;&nbsp;<asp:Button runat="server" Text="Clear Fealds" OnClick="Unnamed_Click1" CssClass="btn" BackColor="#FF0066" BorderColor="Red" BorderStyle="Inset" BorderWidth="2px" ForeColor="White" /></td></tr>
        </table>
    </div>
    </div>
        <span style="width:5px;"></span>
    <div style="float:left; width:60%;">
        <br />
         <asp:Label runat="server" Text="Booklist" Font-Size="X-Large"></asp:Label>
        <br /><br />
        <table>
            <tr><td><asp:Label runat="server" Text="Search Books: " Font-Size="Larger"></asp:Label></td><td><asp:TextBox runat="server" AutoPostBack="true" ID="bksrch" OnTextChanged="bksrch_TextChanged" CssClass="txt"></asp:TextBox></td></tr>
        </table>
            <div style="overflow-y:scroll;height:250px;">
                
                <asp:GridView ID="GridView2" Width="100%" runat="server" HeaderStyle-BackColor="#000099" HeaderStyle-ForeColor="White" HeaderStyle-Height="10" OnRowDataBound="GridView2_RowDataBound">
                  
                </asp:GridView>
            </div>
    </div>
        </div>
        <center>
        <div style="padding:20px; width:90%; text-align:center;">
            <div style="margin-top:50px;">
            <table>
                <tr><td colspan="2" style="text-align:left"><asp:Label runat="server" Text="Student List" Font-Size="X-Large"></asp:Label></td></tr>
                <tr><td><asp:Label runat="server" Text="Search Card Number: " Font-Size="Larger" ></asp:Label></td><td><asp:TextBox runat="server" AutoPostBack="true" ID="srch" placeholder="Card Number" OnTextChanged="srch_TextChanged" CssClass="txt"></asp:TextBox>
                   </td></tr>
            </table>
        </div>
            <div style="overflow-y:scroll; height:200px;">
        <asp:GridView ID="GridView1" OnRowDataBound="GridView1_RowDataBound" runat="server" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand">
            <HeaderStyle BackColor="#000099" ForeColor="White" />
            <Columns>
                <asp:TemplateField ShowHeader="false">
                    <ItemTemplate>
                        <asp:Button runat="server" CssClass="btn" Text="Show Data" ID="show"  CommandName ='<% #Eval("cno") %>' OnClick="show_Click" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
        </div></center>
    </form>
</body>
</html>
