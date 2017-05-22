<%@ Page Language="C#"  %>

<!DOCTYPE html>

<script runat="server">

    protected void btnShowCount_Click(object sender, EventArgs e)
    {
        try
        {
            int num = Int32.Parse(Request["num"]);
        }
        catch(Exception ex)
        {
            Trace.Write("Error : " + ex.Message);
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
  
    <asp:Button ID="btnShowCount" runat="server" Text="Show Session Count" OnClick="btnShowCount_Click" />
  
  </form>
</body>
</html>
