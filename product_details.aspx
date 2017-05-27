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
  
    <h2>Product Details</h2>
  
      <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="prodid" DataSourceID="sdsProduct">
          <Fields>
              <asp:BoundField DataField="prodid" HeaderText="prodid" InsertVisible="False" ReadOnly="True" SortExpression="prodid" />
              <asp:BoundField DataField="prodname" HeaderText="prodname" SortExpression="prodname" />
              <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
              <asp:BoundField DataField="qoh" HeaderText="qoh" SortExpression="qoh" />
              <asp:BoundField DataField="remarks" HeaderText="remarks" SortExpression="remarks" />
              <asp:BoundField DataField="catcode" HeaderText="catcode" SortExpression="catcode" />
          </Fields>
      </asp:DetailsView>
      <asp:SqlDataSource ID="sdsProduct" runat="server" ConnectionString="<%$ ConnectionStrings:localdb %>" SelectCommand="SELECT * FROM [products] WHERE ([prodid] = @prodid)">
          <SelectParameters>
              <asp:QueryStringParameter Name="prodid" QueryStringField="prodid" Type="Int32" />
          </SelectParameters>
      </asp:SqlDataSource>
  </form>
</body>
</html>
