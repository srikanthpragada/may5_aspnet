using System;
using System.Data.SqlClient;

public partial class AddSale : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\mssqllocaldb;Initial Catalog=msdb;Integrated Security=True");
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into sales values(@prodid,@transdate,@qty,@amount)", con);
            // replace parameters with value given by user 
            cmd.Parameters.AddWithValue("@prodid", txtProdId.Text);
            cmd.Parameters.AddWithValue("@transdate", txtTransDate.Text);
            cmd.Parameters.AddWithValue("@qty", txtQty.Text);
            cmd.Parameters.AddWithValue("@amount", txtAmount.Text);
            cmd.ExecuteNonQuery();
            lblMsg.Text = "Added Sale Transaction Successfully!";
            // clear textboxes 
            txtProdId.Text = "";
            txtQty.Text = "";
            txtAmount.Text = "";
            con.Close();
        }
        catch(Exception ex)
        {
            lblMsg.Text = "Sorry! Error during process! Error --> " + ex.Message;
        }
    }
}