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

public partial class Registration : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd, cmd1;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
        TextBox4.Text = string.Empty;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            cmd1 = new SqlCommand("Select User_id,User_nm from RegistrastionTable where User_nm like '" + TextBox2.Text + "'", cn);
            SqlDataReader dr1 = cmd1.ExecuteReader();

            if (dr1.HasRows == true)
            {
                dr1.Read();
                Response.Write("<script>alert('!!!......Login Name already Present... Select another Login Name .....!!!')</script>");
                Label5.Visible = true;
                TextBox2.Text = "";
                TextBox2.Focus();
                dr1.Close();
                cmd1.Dispose();
                cn.Close();

                cmd1.Parameters.Clear();
            }
            else
            {
                dr1.Close();
                Label5.Visible = false;


                cmd = new SqlCommand("INSERT INTO RegistrastionTable (User_nm,Email_id,Mobile_no,Password)VALUES(@User_nm,@Email_id,@Mobile_no,@Password)", cn);
                
                cmd.Parameters.AddWithValue("@User_nm", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Email_id", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Mobile_no", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Password", TextBox5.Text);
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {

                    Response.Redirect("~/Login.aspx");

                }
                else
                {

                }
            }
        }

    }
}
