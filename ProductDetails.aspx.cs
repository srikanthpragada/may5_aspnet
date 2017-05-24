using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProductDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGetDetails_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\mssqllocaldb;Initial Catalog=msdb;Integrated Security=True");
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from products where prodid = @prodid", con);
            cmd.Parameters.AddWithValue("@prodid", txtProdId.Text);
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read()) // check whether any row is present 
            {
                lblName.Text = reader["prodname"].ToString();
                lblPrice.Text = reader["price"].ToString();
                lblQoh.Text = reader["qoh"].ToString();
                lblCategory.Text = reader["catcode"].ToString();

                // make table visible 
                tableDetails.Visible = true; 
            }
            else
            {
                lblMsg.Text = "Sorry! Product not found!";
                // make table invisible 
                tableDetails.Visible = false;
            }

            con.Close();
        }

        catch (Exception ex)
        {
            lblMsg.Text = "Sorry! Error during process! Error --> " + ex.Message;
        }
    }
}