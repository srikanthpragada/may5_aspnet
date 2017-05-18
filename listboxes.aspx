<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnTotal_Click(object sender, EventArgs e)
    {
        int sum = 0;
        foreach(ListItem item in  CheckBoxList1.Items)
        {
            if (item.Selected)
                sum +=  Int32.Parse(item.Value); 
        }

        lblTotal.Text = sum.ToString();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem Text="C# Complete Reference " Value="500" />
            <asp:ListItem Text="ASP.NET Unleashed" Value="700" />
            <asp:ListItem Text="Angular in Action " Value="450" />
        </asp:CheckBoxList>
        <p />
        <asp:Button ID="btnTotal" runat="server" Text="Get Total" OnClick="btnTotal_Click" />
        <p />
        <asp:Label ID="lblTotal" runat="server" Text=""></asp:Label>
        <p />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Text="C# Complete Reference " Value="500" />
            <asp:ListItem Text="ASP.NET Unleashed" Value="700" />
            <asp:ListItem Text="Angular in Action " Value="450" />
        </asp:RadioButtonList>


        <p />
        <asp:ListBox ID="ListBox1" runat="server">
            <asp:ListItem Text="C# Complete Reference " Value="500" />
            <asp:ListItem Text="ASP.NET Unleashed" Value="700" />
            <asp:ListItem Text="Angular in Action " Value="450" />
        </asp:ListBox>

        <p />
        <asp:BulletedList ID="BulletedList1" DisplayMode="HyperLink" runat="server">
            <asp:ListItem Text="Books" Value="books.aspx" />
            <asp:ListItem Text="Courses" Value="courses.aspx" />
            <asp:ListItem Text="Exam" Value="exam.aspx" />
        </asp:BulletedList>

    </form>
</body>
</html>
