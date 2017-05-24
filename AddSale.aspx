<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddSale.aspx.cs" Inherits="AddSale" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h2>Add Sale</h2>

    Product Id <br />
        <asp:TextBox ID="txtProdId" runat="server"></asp:TextBox>
        <p></p>
        Transaction Date (mm-dd-yy)<br />
        <asp:TextBox ID="txtTransDate" runat="server"></asp:TextBox>
        <p></p>
        Quantity Sold <br />
        <asp:TextBox ID="txtQty" runat="server"></asp:TextBox>
        <p></p>
        Amount <br />
        <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
        <p></p>
        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
        <p></p>
        <asp:Label ID="lblMsg" runat="server" EnableViewState="false" Text=""></asp:Label>



    </form>
</body>
</html>
