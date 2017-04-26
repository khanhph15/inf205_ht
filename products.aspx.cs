using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class tables : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=localhost;Initial Catalog=inf205;Integrated Security=True");

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandText = "INSERT INTO [SanPham] ([MaDanhMuc], [TenSP], [Gia], [MoTa], [HinhAnh]) VALUES ("+ Int32.Parse(TextBox1.Text) +", N'"+ TextBox2.Text +"', "+Int32.Parse(TextBox3.Text) +" , N'"+TextBox4.Text+"', '"+TextBox5.Text+"')";
        cmd.ExecuteNonQuery();

        con.Close();
        Response.Redirect("products.aspx");

    }

}
