<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
  <div>
      <h2>Products By Categories</h2>
      Category :
      <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="sdsCategories" DataTextField="catdesc" DataValueField="catcode" AutoPostBack="True">
      </asp:DropDownList>
      <asp:SqlDataSource ID="sdsCategories" runat="server" ConnectionString="<%$ ConnectionStrings:localdb %>" SelectCommand="SELECT * FROM [categories]"></asp:SqlDataSource>
  
  </div>
  </form>
</body>
</html>
