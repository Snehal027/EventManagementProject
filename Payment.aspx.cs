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

public partial class Payment : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select * from Billing_address where orderno=" + Session["Orn"].ToString() + "", cn);
        cn.Open();
        SqlDataReader DR = cmd.ExecuteReader();

        if (DR.HasRows)
        {
            DR.Read();

            Label2.Text = DR["User_nm"].ToString();
            Label3.Text = DR["Address"].ToString();
            Label4.Text = DR["City"].ToString();
            Label5.Text = DR["State"].ToString();
            Label6.Text = DR["Country"].ToString();
            
        }
        else
        {
            Response.Write("<script>alert('!!!........Order number does not exist,Please check .........!!!')</script>");
        }
        DR.Close();

        cn.Dispose();
        cn.Close();
        cmd.Dispose();

        SqlConnection cn1 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd1;

        cmd1 = new SqlCommand("Select * from RegistrastionTable where User_id=" + Session["User_id"].ToString() + "", cn1);
        cn1.Open();
        SqlDataReader DR1 = cmd1.ExecuteReader();


        if (DR1.HasRows)
        {
            DR1.Read();
            Label1.Text = DR1["Email_id"].ToString();
        }
        else
        {
            Response.Write("<script>alert('!!!........User Record Not Found .........!!!')</script>");
        }
        DR1.Close();

        cn1.Dispose();
        cn1.Close();
        cmd1.Dispose();


        SqlConnection cn2 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd2;

        cmd2 = new SqlCommand("Select * from Order_master where orderno=@orderno and orderdate=@orderdate", cn2);
        cmd2.Parameters.AddWithValue("orderno", Session["Orn"].ToString());
        cmd2.Parameters.AddWithValue("orderdate", DateTime.Now.Date);
        cn2.Open();


        SqlDataReader DR2 = cmd2.ExecuteReader();

        if (DR2.HasRows)
        {
            DR2.Read();

            TextBox1.Text = Session["Orn"].ToString();
            TextBox2.Text = DR2["total_amount"].ToString();
        }
        else
        {
            Response.Write("<script>alert('!!!........Order Not Found .........!!!')</script>");
        }
        DR2.Close();

        cn2.Dispose();
        cn2.Close();
        cmd2.Dispose();

        //SqlConnection cn3 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
        //SqlCommand cmd3;
        //cmd3 = new SqlCommand("Select * from Bill where orderno=" + Session["Orn"].ToString() + "", cn3);
        //cn3.Open();

        //SqlDataReader DR4 = cmd3.ExecuteReader();
        ////DataTable PDT = new DataTable();
        ////PDT.Load(DR4);
        ////GridView1.DataSource = PDT;
        ////GridView1.DataBind();
        //cn3.Dispose();
        //cn3.Close();
        //cmd3.Dispose();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd;
        if (Page.IsValid)
        {
            if (Session["User_nm"].ToString() == "")
            {
                Response.Redirect("~/Expire.aspx");
            }
            else
            {
                cmd = new SqlCommand("Insert into Billing_address(User_id,orderno)values(@User_id,@orderno)", cn);
                cmd.Parameters.AddWithValue("@User_id", Session["User_id"].ToString());
                cmd.Parameters.AddWithValue("@orderno", Session["Orn"].ToString());
                cn.Open();
                int res = cmd.ExecuteNonQuery();
                cn.Dispose();
                cn.Close();
                cmd.Dispose();

                Response.Redirect("~/Thank you.aspx");
            }

        }


    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
