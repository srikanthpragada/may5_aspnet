<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        double amount = Double.Parse(txtAmount.Text);
        double rate = Double.Parse(txtRate.Text);
        double interest = amount * rate / 100;

        lblInterest.Text = interest.ToString("#####.00"); 


    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Interest Calculation</title>
    <style>
        .bignum { font-size:20pt; color:blue;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <h2>Interest Calculation</h2>
      Deposit Amount
      <br />
      <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
      <p></p>
      Interest Rate
      <br />
      <asp:TextBox ID="txtRate" runat="server"></asp:TextBox>
      <p></p>
      <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
      <p />
      <asp:Label ID="lblInterest" CssClass="bignum" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
