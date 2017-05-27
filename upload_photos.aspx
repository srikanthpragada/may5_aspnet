<%@ Page Language="C#"  MasterPageFile="~/MasterPage.master" %>

<script runat="server">

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (!FileUpload1.HasFile)
        {
            lblMsg.Text = "Please upload a file that contains photo!";
            return;
        }
        
        // Convert virtual path to physical path
        String serverPath = Server.MapPath("photos/" + txtName.Text + ".jpg");

        // Save file in photos folder

        FileUpload1.SaveAs(serverPath);
        lblMsg.Text = "Uploaded Photo Sucessfully";

    }
</script>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  Person Name  <br />
      <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
      <p />
      Select Photo File
      <br />
      <asp:FileUpload ID="FileUpload1" runat="server" />
      <p />
      <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
      <p />
      <asp:Label ID="lblMsg" runat="server" Text=""  EnableViewState="false"></asp:Label>
</asp:Content>
