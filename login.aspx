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
        <h2>Login</h2>
        Email Address  <br />
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            runat="server"
            ControlToValidate="txtEmail"
            ErrorMessage="Email is required!" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="rev" 
            runat="server"
            ControlToValidate="txtEmail"
            ErrorMessage="Email is invalid!" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <p />
        Password  <br />
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            runat="server"
            ControlToValidate="txtPassword"
            ErrorMessage="Password is required!"></asp:RequiredFieldValidator>
        <p />
        <asp:Button ID="btnLogin" runat="server" Text="Login" />

    </form>

</body>
</html>
