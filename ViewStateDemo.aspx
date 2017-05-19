<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnShowNow_Click(object sender, EventArgs e)
    {
        lblMsg.Text = DateTime.Now.ToString();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
  <div>
  
  </div>
      <asp:Label ID="lblMsg" runat="server" Text=""  EnableViewState="false"></asp:Label>
      <p />
      <asp:Button ID="btnShowNow" runat="server" Text="Show Date and Time" OnClick="btnShowNow_Click" />
      <asp:Button ID="btnNothing" runat="server" Text="Nothing" />
  </form>
</body>
</html>
