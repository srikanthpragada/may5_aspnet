<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProductDetails.aspx.cs" Inherits="ProductDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product Details</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Product Details</h2>
        Product Id :
        <asp:TextBox ID="txtProdId" runat="server"></asp:TextBox>
        <asp:Button ID="btnGetDetails" runat="server" Text="Details" OnClick="btnGetDetails_Click" />
        <asp:Label ID="lblMsg" runat="server" Text="" EnableViewState="false"></asp:Label>
        <p></p>
        <table runat="server" id="tableDetails" visible="false">
            <tr>
                <td>Name :</td>
                <td>
                    <asp:Label ID="lblName" runat="server" Text=""></asp:Label>

                </td>
            </tr>
            <tr>
                <td>Price :</td>
                <td>
                    <asp:Label ID="lblPrice" runat="server" Text=""></asp:Label>

                </td>
            </tr>
            <tr>
                <td>Quantity :</td>
                <td>
                    <asp:Label ID="lblQoh" runat="server" Text=""></asp:Label>

                </td>
            </tr>
            <tr>
                <td>Category :</td>
                <td>
                    <asp:Label ID="lblCategory" runat="server" Text=""></asp:Label>

                </td>
            </tr>
        </table>

    </form>
</body>
</html>
