<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnShow_Click(object sender, EventArgs e)
    {
        int fee = Int32.Parse(ddlCourses.SelectedItem.Value);

        if (rbMorning.Checked)
            fee = fee - fee * 10 / 100;
        else
            if (rbAfternoon.Checked)
            fee = fee - fee * 20 / 100;

        if (cbOld.Checked)
            fee = fee - fee * 10 / 100;

        if (cbMaterial.Checked)
            fee += 500;

        lblFee.Text = fee.ToString();

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Course Fee Finder</title>
    <style>
        .heading {
            width: 120px;
            display: inline-block;
        }

        .big {
            font-size: 20pt;
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Course Fee Finder</h2>
        <span class="heading">Select Course</span>
        <asp:DropDownList ID="ddlCourses" runat="server">
            <asp:ListItem Text="Android Programming" Value="4000" />
            <asp:ListItem Text="Angular 2" Value="2000" />
            <asp:ListItem Text="Java Language" Value="3500" />
        </asp:DropDownList>
        <p></p>
        <span class="heading">Timings</span>
        <asp:RadioButton ID="rbMorning" runat="server" GroupName="timings" />Morning
        <asp:RadioButton ID="rbAfternoon" runat="server" GroupName="timings" />Afternoon
        <asp:RadioButton ID="rbEvening" runat="server" Checked="true" GroupName="timings" />Evening
        <p></p>
        <span class="heading">Course Material</span>
        <asp:CheckBox ID="cbMaterial" runat="server" />
        <p></p>
        <span class="heading">Old Student</span>
        <asp:CheckBox ID="cbOld" runat="server" />
        <p></p>
        <asp:Button ID="btnShow" runat="server" Text="Show Fee" OnClick="btnShow_Click" />
        <p></p>
        <asp:Label ID="lblFee" CssClass="big" runat="server" Text=""></asp:Label>
    </form>

</body>
</html>
