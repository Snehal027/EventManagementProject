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

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd = new SqlCommand();
        cn.Open();
        cmd.Connection = cn;
        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@address", TextBox2.Text);
        cmd.Parameters.AddWithValue("@contactno", TextBox3.Text);
        cmd.Parameters.AddWithValue("@emailid", TextBox4.Text);
        cmd.Parameters.AddWithValue("@suggestion", TextBox5.Text);

        cmd.CommandText = "INSERT INTO Feedback (name,address,contactno,emailid,suggestion)values(@name,@address,@contactno,@emailid,@suggestion)";
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write("<script>alert('!!!!!!THANK YOU .........VISIT AGAIN!!!!!!!!')</script>");
        }
        cmd.Dispose();
        cn.Close();
        cn.Dispose();

        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";

    }

    
}
