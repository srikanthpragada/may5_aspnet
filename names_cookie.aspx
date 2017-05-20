<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        String names = "";

        HttpCookie namesCookie = Request.Cookies["names"];
        if (namesCookie != null)
        {
            names = namesCookie.Value;
            names = names + "," + txtName.Text;
        }
        else
            names = txtName.Text;

        namesCookie = new HttpCookie("names", names);
        namesCookie.Expires = DateTime.Now.AddDays(7);
        // namesCookie.Secure = true;
        Response.Cookies.Add(namesCookie);

        // add names to bulleted list
        blNames.Items.Add(txtName.Text);

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie namesCookie = Request.Cookies["names"];
        if (namesCookie != null)
        {
            foreach (string name in namesCookie.Value.Split(','))
            {
                blNames.Items.Add(name);
            }
        }
    }

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Names using Cookie</title>
</head>
<body>
    <form id="form1" runat="server">
      
       <h2>Names using Cookie</h2>
        Name :
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <p />
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
        <p />
        <asp:BulletedList ID="blNames" runat="server" EnableViewState="false" ></asp:BulletedList>
    </form>
</body>
</html>
