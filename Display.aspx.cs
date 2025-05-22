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


public partial class Display : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Event\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd, cmd1;
    protected void Page_Load(object sender, EventArgs e)
    {
                if (Session["s_id"].ToString() != "")
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand("Select s_nm,c_id,c_nm,charges,img from Service_master where s_id=" + Session["s_id"], cn);

            SqlDataReader dr = cmd.ExecuteReader();

            
            if (dr.HasRows == true)
            {
                dr.Read();
                //if (Int32.Parse(dr[2].ToString()) == 0)
                //{
                //    Lblsna.Text = (String)dr[0];
                //    Lblcid.Text = (String)dr[1];
                //    Lblcna.Text = (String)dr[2];
                //    Lblchar.Text = (String)dr[3];
                //    ImageButton1.ImageUrl = (String)dr[4];

                //}
                //else
                //{
                    Lblsna.Text = dr[0].ToString();
                    Lblcid.Text = dr[1].ToString();
                    Lblcna.Text = dr[2].ToString();
                    Lblchar.Text = dr[3].ToString();
                    ImageButton1.ImageUrl = (String)dr[4];
               // }
                dr.Close();
                cn.Close();
            }


            else    
            {
                Response.Write("<script>alert('!!!No data to display!!!'</script>");
                Button1.Enabled = false;

                Response.Redirect("~/Home.aspx");
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd1 = new SqlCommand("Insert into BookTable(s_id,c_nm,charges,Days,Total_amount)values(@s_id,@c_nm,@charges,@Days,@Total_amount)", cn);

        cmd1.Parameters.AddWithValue("@s_id", Session["s_id"]);
        cmd1.Parameters.AddWithValue("@c_nm", Lblcna.Text);
        cmd1.Parameters.AddWithValue("@charges", Lblchar.Text);

        cmd1.Parameters.AddWithValue("@Days", TextBox1.Text);
        int tamt = (Int32.Parse(Lblchar.Text) * Int32.Parse(TextBox1.Text));
        Response.Write("<script>alert(" + tamt + ")</script>");
        cmd1.Parameters.AddWithValue("@Total_amount", tamt);

       
        cn.Open();
        int res = cmd1.ExecuteNonQuery();
        if (res == 1)
        {
            Response.Write("<script>alert('!!!!.....Inserted Into BookTable.....!!!!!')</script>");
        }
        else
        {
            Response.Write("<script>alert('!!!!.....Not Inserted Into BookTable......!!!!!')</script>");
        }
        cn.Dispose();
        cn.Close();
        cmd1.Dispose();
        Response.Redirect("~/Book.aspx");
    }





   
    

    
}
