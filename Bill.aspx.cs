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

public partial class Bill : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    

    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.ReadOnly = true;
        TextBox1.Text = Session["tamt"].ToString();
        //Label1.Text = Session["User_nm"].ToString();
        Label1.Text = Session["User_nm"].ToString();

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("/~BookTable.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (Session["User_nm"].ToString() == "")
            {
                Response.Redirect("~/Expire.aspx");
            }
            else
            {
                SqlConnection cn1 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
                SqlCommand findorderno = new SqlCommand("select Max(orderno)from Order_master", cn1);
                cn1.Open();
                String max = findorderno.ExecuteScalar().ToString();
                int Orn;
                if (max == String.Empty)
                {
                    Orn = 1;
                }
                else
                {
                    Orn = Convert.ToInt32(max) + 1;
                }
                Session["Orn"] = Orn;
                cn1.Close();

                SqlConnection cn2 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
                SqlCommand OM = new SqlCommand("INSERT INTO Order_master (orderno,orderdate,user_id,total_amount,order_stu)values(@orderno,@orderdate,@user_id,@total_amount,@order_stu)", cn2);
                OM.Parameters.AddWithValue("@orderno", Orn);
                OM.Parameters.AddWithValue("@orderdate", DateTime.Now.Date);
                OM.Parameters.AddWithValue("@user_id", Session["user_id"].ToString());
                OM.Parameters.AddWithValue("@total_amount", TextBox1.Text);
                OM.Parameters.AddWithValue("@order_stu", "Pending");

                cn2.Open();
                int res1 = OM.ExecuteNonQuery();
                cn2.Dispose();
                cn2.Close();
                OM.Dispose();

                //To insert into Order_Details
                SqlConnection cn3 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

                SqlCommand OD;
                DataSet ds = new DataSet();
                SqlDataReader ODdr;
                DataTable dt = new DataTable();
                DataRow dr;
                ArrayList s_id = new ArrayList();
                ArrayList c_nm = new ArrayList();
                ArrayList charges = new ArrayList();
                ArrayList Days = new ArrayList();
                ArrayList Total_amount = new ArrayList();

                cn3.Open();
                OD = new SqlCommand("select s_id,c_nm,charges,Days,Total_amount from BookTable", cn3);
                ODdr = OD.ExecuteReader();

                dt.Columns.Add("s_id");
                dt.Columns.Add("c_nm");
                dt.Columns.Add("charges");
                dt.Columns.Add("Days");
                dt.Columns.Add("Total_amount");


                while (ODdr.Read() == true)
                {
                    dr = dt.NewRow();

                    dr["s_id"] = ODdr[0];
                    dr["c_nm"] = ODdr[1];
                    dr["charges"] = ODdr[2];
                    dr["Days"] = ODdr[3];
                    dr["Total_amount"] = ODdr[4];
                    dt.Rows.Add(dr);


                    s_id.Add(dr["s_id"]);
                    c_nm.Add(dr["c_nm"]);
                    charges.Add(dr["charges"]);
                    Days.Add(dr["Days"]);
                    Total_amount.Add(dr["Total_amount"]);

                }

                ODdr.Close();
                cn3.Dispose();
                cn3.Close();
                // Response.Write("<script>alert('row cnt= "+dt.Rows.Count+"')</script>");
                //Response.Write("<script>alert('arr cnt= "+pid.Count+" ')</script>");

                int i;
                for (i = 0; i < dt.Rows.Count; i++)
                {
                    SqlConnection cn5 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");


                    OD = new SqlCommand("Insert into Bill (orderno,s_id,c_nm,charges,Days,Total_amount) values(@orderno,@s_id,@c_nm,@charges,@Days,@Total_amount)", cn5);
                    OD.Parameters.AddWithValue("@orderno", Orn);
                    OD.Parameters.AddWithValue("@s_id", s_id[i]);
                    OD.Parameters.AddWithValue("@c_nm", c_nm[i]);
                    OD.Parameters.AddWithValue("@charges", charges[i]);
                    OD.Parameters.AddWithValue("@Days", Days[i]);
                    OD.Parameters.AddWithValue("@Total_amount", Total_amount[i]);
                    cn5.Open();
                    int res2 = OD.ExecuteNonQuery();


                    cn5.Dispose();
                    cn5.Close();
                    OD.Dispose();
                }

                //To insert into Billing Address
                cmd = new SqlCommand("INSERT INTO Billing_address (orderno,User_id,User_nm,City,State,Country,Mobile_no,Address,Email_id)values(@orderno,@User_id,@User_nm,@City,@State,@Country,@Mobile_no,@Address,@Email_id)", cn);
                cmd.Parameters.AddWithValue("@orderno", Session["Orn"].ToString());
                

                cmd.Parameters.AddWithValue("@User_nm", TextBox2.Text);
                cmd.Parameters.AddWithValue("@City", TextBox11.Text);
                cmd.Parameters.AddWithValue("@State", TextBox10.Text);
                cmd.Parameters.AddWithValue("@Country", TextBox9.Text);
                cmd.Parameters.AddWithValue("@Mobile_no", TextBox7.Text);
                cmd.Parameters.AddWithValue("@Address", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Email_id", TextBox8.Text);
                cmd.Parameters.AddWithValue("@User_id", Session["User_id"].ToString());
                cn.Open();
                int res = cmd.ExecuteNonQuery();
                if (res == 1)
                {
                    Response.Write("<script>alert('!!!......Record Saved .....!!!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('!!!......Record Not Saved .....!!!')</script>");
                }
                cn.Dispose();
                cn.Close();
                cmd.Dispose();

                SqlConnection cn4 = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

                SqlCommand cmd1 = new SqlCommand("delete from BookTable", cn4);
                cn4.Open();
                int res3 = cmd1.ExecuteNonQuery();
                if (res == 1)
                {
                    Response.Write("<script>alert('!!!......Record deleted .....!!!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('!!!......Record Not deleted .....!!!')</script>");
                }

                cn4.Dispose();
                cn4.Close();
                cmd1.Dispose();

                Response.Redirect("~/Payment.aspx");

            }



        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}