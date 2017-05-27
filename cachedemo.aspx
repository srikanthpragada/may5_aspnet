<%@ Page Language="C#"  %>
<%@ OutputCache Duration="60" VaryByParam="*" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write(DateTime.Now.ToString());
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
   
  </form>
</body>
</html>
