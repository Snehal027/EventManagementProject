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

public partial class Log_in : System.Web.UI.Page
{
    SqlConnection cn=new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd,cmd1;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if ((TextBox1.Text == "Admin") && (TextBox2.Text == "Admin123"))
        {
            Session["User_nm"] = TextBox1.Text;
            Response.Redirect("~/Admin/AdminHome.aspx");
        }
        cmd= new SqlCommand("Select User_id,User_nm from RegistrastionTable where User_nm like '" + TextBox1.Text + "' and Password like '" + TextBox2.Text + "'", cn);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows == true)
        {
            dr.Read();
            Session["User_id"] = dr[0];
            Session["User_nm"] = dr[0];

            Response.Redirect("~/Bill.aspx");
        }
        else
        {

            Label1.Text = "Invalid user_name or password...";
            TextBox1.Focus();
        }

        cmd.Dispose();
        cn.Close();
       
      }
         

    
    protected void Button3_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        Label1.Visible = false;
        TextBox2.Text = "";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Registration.aspx");
    }
}
