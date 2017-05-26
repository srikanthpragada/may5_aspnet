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
  
      <h2>Products By Categories</h2>
      Category :
      <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="sdsCategories" DataTextField="catdesc" DataValueField="catcode" AutoPostBack="True">
      </asp:DropDownList>
      <asp:SqlDataSource ID="sdsCategories" runat="server" ConnectionString="<%$ ConnectionStrings:localdb %>" SelectCommand="SELECT * FROM [categories]"></asp:SqlDataSource>
      <p></p>
         <asp:GridView ID="GridView1" runat="server"
             Width="100%"
             AutoGenerateColumns="False" DataKeyNames="prodid" DataSourceID="sdsProducts" EmptyDataText="Sorry! No products found!">
          <Columns>
              <asp:BoundField DataField="prodid" HeaderText="prodid" InsertVisible="False" ReadOnly="True" SortExpression="prodid" />
              <asp:BoundField DataField="prodname" HeaderText="prodname" SortExpression="prodname" />
              <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
              <asp:BoundField DataField="qoh" HeaderText="qoh" SortExpression="qoh" />
              <asp:BoundField DataField="remarks" HeaderText="remarks" SortExpression="remarks" />
              <asp:BoundField DataField="catcode" HeaderText="catcode" SortExpression="catcode" />
          </Columns>
      </asp:GridView>
      <asp:SqlDataSource ID="sdsProducts" runat="server" 
           ConnectionString  ="<%$ ConnectionStrings:localdb %>" 
           SelectCommand="SELECT * FROM [products] WHERE ([catcode] = @catcode)">
          <SelectParameters>
              <asp:ControlParameter ControlID="DropDownList1" Name="catcode" 
                  PropertyName="SelectedValue" Type="String" />
          </SelectParameters>
      </asp:SqlDataSource>
  </form>
</body>
</html>
