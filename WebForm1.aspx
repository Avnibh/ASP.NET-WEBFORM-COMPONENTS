<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ButtonList.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Section"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" />
        <br />
        <asp:BulletedList ID="BulletedList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name">
        </asp:BulletedList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:avniConnectionString %>" 
            SelectCommand="SELECT [name] FROM [info] WHERE ([section] = @section)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="section" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </div>
    </form>
</body>
</html>
