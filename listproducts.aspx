<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Products List </title>
</head>
<body>
  <form id="form1" runat="server">
      <h2>Products List</h2>
      <asp:GridView ID="GridView1" runat="server" 
           Width="100%"
           AutoGenerateColumns="False"
           DataKeyNames="prodid" 
           DataSourceID="SqlDataSource1">
          <Columns>
              <asp:BoundField DataField="prodid" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="prodid" />
              <asp:HyperLinkField DataNavigateUrlFields="prodid" DataNavigateUrlFormatString="product_details.aspx?prodid={0}" DataTextField="prodname" HeaderText="Name" />
              <asp:BoundField DataField="price" DataFormatString="{0:c}" HeaderText="Price" SortExpression="price" >
              <ItemStyle HorizontalAlign="Right" />
              </asp:BoundField>
              <asp:BoundField DataField="qoh" HeaderText="Quantity" SortExpression="qoh" >
              <ItemStyle HorizontalAlign="Right" />
              </asp:BoundField>
              <asp:HyperLinkField 
                  DataNavigateUrlFields="prodid" 
                  DataNavigateUrlFormatString="product_sales.aspx?prodid={0}" Text="Sales">
              <ItemStyle HorizontalAlign="Center" />
              </asp:HyperLinkField>
          </Columns>
          
      </asp:GridView>

      <asp:SqlDataSource ID="SqlDataSource1" 
          runat="server" 
          ConnectionString="<%$ ConnectionStrings:localdb %>" 
          SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
   
  </form>
</body>
</html>
