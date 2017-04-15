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
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Khanh\Documents\Visual Studio 2017\WebSites\inf205_GD2\App_Data\Database.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "INSERT INTO[KhachHang] ([TenKH], [HoDem], [Email], [DiaChi], [SDT]) VALUES(N'" + TextBox8.Text + "', N'" + TextBox7.Text + "', N'" + TextBox9.Text + "', N'" + TextBox10.Text + "', N'" + TextBox11.Text + "')";
        cmd.ExecuteNonQuery();
      
        con.Close();
        Response.Redirect("tables.aspx");

    }
}