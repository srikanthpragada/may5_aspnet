<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
            Response.Write("Postback <p/>");
        else
            Response.Write("Initial Request <p/>");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:CheckBox ID="CheckBox1" runat="server"
            AutoPostBack="true" /> Check Box
        <p></p>
        <asp:Button ID="Button1" runat="server" Text="Click On Me" 
            OnClick="Button1_Click" />
    </form>
</body>
</html>
