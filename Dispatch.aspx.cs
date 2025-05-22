using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;

public partial class Dispatch : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.ReadOnly = false;
        TextBox2.ReadOnly = false;
        TextBox3.ReadOnly = false;
        TextBox5.ReadOnly = false;
        TextBox4.ReadOnly = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button2.Enabled = true;
        //btdelete.Enabled = true;
        cn.Open();
        cmd = new SqlCommand("SELECT * FROM Order_master WHERE orderno=" + TextBox1.Text, cn);
        SqlDataReader DR = cmd.ExecuteReader();

        //int sr = 0;
        if (DR.HasRows)
        {
            DR.Read();

            TextBox2.Text = DR["orderdate"].ToString();
            TextBox3.Text = DR["user_id"].ToString();
            TextBox4.Text = DR["total_amount"].ToString();
            DropDownList1.Text = DR["order_stu"].ToString();
            TextBox5.Text = DR["del_date"].ToString();


        }
        else
        {
            Response.Write("<script>alert('!!!......Record Not Found .....!!!')</script>");
        }
        DR.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("Update Order_master set order_stu=@order_stu where orderno=@orderno", cn);
        cmd.Parameters.AddWithValue("@order_stu", DropDownList1.Text);

        cmd.Parameters.AddWithValue("@del_date", TextBox5.Text);
        cmd.Parameters.AddWithValue("@orderno", TextBox1.Text);

        cn.Open();
        int res = cmd.ExecuteNonQuery();
        if (res == 1)
        {
            Response.Write("<script>alert('!!!......Record updated .....!!!')</script>");
        }
        else
        {
            Response.Write("<script>alert('!!!......Record Not updated .....!!!')</script>");
        }
        cn.Dispose();
        cn.Close();
        cmd.Dispose();

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox5.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }
}
