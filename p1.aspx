<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("p2.aspx");
    }

    protected void btnTransfer_Click(object sender, EventArgs e)
    {
        Response.Write("I am in P1");
        Server.Transfer("p2.aspx");
        Response.Write("I am back");
    }

    protected void btnExecute_Click(object sender, EventArgs e)
    {
        Response.Write("I am in P1");
        Server.Execute("p2.aspx");
        Response.Write("I am back");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
  
      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Redirect" />
  
      <asp:Button ID="btnTransfer" runat="server" Text="Transfer" OnClick="btnTransfer_Click" />

      <asp:Button ID="btnExecute" runat="server" Text="Execute" OnClick="btnExecute_Click"  />
  
  </form>
</body>
</html>
