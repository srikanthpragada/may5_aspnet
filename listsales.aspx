<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
    <p>
        &nbsp;</p>
  <form id="form1" runat="server">
  <div>
  
  </div>
      <asp:DataList ID="DataList1" runat="server" DataKeyField="invno" 
           RepeatLayout="Flow"   width="100%"  DataSourceID ="SqlDataSource1">
          <HeaderTemplate>
              <h2>Sales Report</h2>
          </HeaderTemplate>
          <ItemTemplate>
            <%# Eval("invno") %>
            <br />
            <%# Eval("prodid") %>
            <br />
            <%# Eval("transdate") %> 
            <br />
            <%# Eval("amount") %> 
            <p></p>
          </ItemTemplate>
          <FooterTemplate>
              <hr />
          </FooterTemplate>
      </asp:DataList>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server"
           ConnectionString="<%$ ConnectionStrings:localdb %>"
           SelectCommand="SELECT * FROM [sales]"></asp:SqlDataSource>
  </form>
</body>
</html>
