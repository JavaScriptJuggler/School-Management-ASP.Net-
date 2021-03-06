<%@ Page Language="C#" AutoEventWireup="true" CodeFile="f2.aspx.cs" Inherits="f2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .std_det{
            width:50%;
            padding:10px;
            border-color:black;
            border-width:1px;
            border-radius:10px;
            border-style:solid;
            float:left;
            text-align:left;
        }
         .std_det1{
             width:50%;
            padding:10px;
            border-color:black;
            border-width:1px;
            border-radius:10px;
            border-style:solid;
            text-align:left;
            float:left;
        }
         .std_det2{
             width:100%;
            padding:10px;
            border-color:black;
            border-width:1px;
            border-radius:10px;
            border-style:solid;
            text-align:left;
            float:left;
        }
         body{
             background-color:antiquewhite;
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
       td{
           height:40px;
       }
    </style>
</head>
<body>
    <center>
    <form id="form1" runat="server">
    <div style="width:90%;">
        <div style="float:right;">
    <asp:Button runat="server" Text="Submit" OnClick="Unnamed1_Click" CssClass="btn" BackColor="#00CC66" BorderColor="#339933" BorderStyle="Inset" BorderWidth="2px" />
    <asp:Button runat="server" Text="Refresh" OnClick="refresh" CssClass="btn" BackColor="#FF0066" BorderStyle="Inset" BorderWidth="2px" ForeColor="White" />
        <br /><br />
        </div><br /><br />
        <div style="display:flex; width:100%; margin-left:5px;">
        <div class="std_det">
            <table style="width:100%;">
                <tr><td colspan="2">
          <h2>Student Details</h2>
                    </td></tr>
                <tr><td>
           <label runat="server">Student's Name: </label></td><td><asp:TextBox runat="server" ID="stdnm" CssClass="txt" placeholder="Student's Name"></asp:TextBox></td></tr> <tr><td>
            <label runat="server">Batch code: </label></td><td><asp:DropDownList runat="server" ID="batch" CssClass="txt"></asp:DropDownList></td></tr> <tr><td>
            <label runat="server">Roll No: </label></td><td><asp:TextBox runat="server" ID="roll" CssClass="txt" placeholder="Roll Number"></asp:TextBox></td></tr> <tr><td>
            <label runat="server">Library Card: </label></td><td><asp:DropDownList runat="server" ID="lb" CssClass="txt"></asp:DropDownList></td></tr> <tr><td>
            <label runat="server">Transport Card: </label></td><td><asp:DropDownList runat="server" ID="tc" CssClass="txt"></asp:DropDownList></td></tr>
        </table>
                </div>
            <span style="width:10px;"></span>
        <div class="std_det1">
            
            <table><tr><td colspan="2"><h2>Parent Details</h2></td></tr>
            <tr><td><label runat="server">Father's Name: </label></td><td><asp:TextBox runat="server" ID="fn" placeholder="Fathers's Name" CssClass="txt"></asp:TextBox></td></tr>
            <tr><td><label runat="server">Mother's Name: </label></td><td><asp:TextBox runat="server" ID="mn" placeholder="Mothers's Name" CssClass="txt"></asp:TextBox></td></tr>
            <tr><td><label runat="server">Occupation of Father: </label></td><td><asp:TextBox runat="server" ID="oc" placeholder="fathers's Occupation" CssClass="txt"></asp:TextBox></td></tr>
        </table>
                </div>
        </div>
        <br />
            <div class="std_det2">
                <table style="width:50%;">
                    <tr><td colspan="2">
                <h2>Other Details </h2></td></tr>
                    <tr><td>
                <label>Student Permanent Address: </label></td><td><asp:TextBox runat="server" ID="add" placeholder="Student's Address" CssClass="txt"></asp:TextBox></td></tr>
                <tr><td>
                    <label>Phone No: </label></td><td><asp:TextBox runat="server" placeholder="Phone Number" ID="ph" CssClass="txt"></asp:TextBox></td></tr>
                 <tr><td>
                    <label>Post Office: </label></td><td><asp:TextBox runat="server" placeholder="Post office" ID="po" CssClass="txt"></asp:TextBox></td></tr>
                 <tr><td>
                    <label>Police Station: </label></td><td><asp:TextBox runat="server" placeholder="Police Station" ID="ps" CssClass="txt"></asp:TextBox></td></tr>
                  <tr><td>
                    <label>Zip Code: </label></td><td><asp:TextBox runat="server" placeholder="Zip Code" ID="zip" CssClass="txt"></asp:TextBox></td></tr>
            </table>
                    </div>
    </div>
    </form>
        </center>
</body>
</html>
