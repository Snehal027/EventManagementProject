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
using System.IO;
using System.Data.SqlClient;


public partial class Serviceinfo : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void btnew_Click(object sender, EventArgs e)
    {
        
        btnew.Enabled = false;
        btsave.Enabled = true;
        cmd = new SqlCommand("SELECT MAX(s_id) FROM Service_master", cn);
        cn.Open();
        string max = cmd.ExecuteScalar().ToString();

        int s_id = Convert.ToInt32(max) + 1;
        if (max == string.Empty)
        {
            txtsid.Text = "1";
        }
        else
        {
            txtsid.Text = s_id.ToString();
        }
    }
    protected void btsave_Click(object sender, EventArgs e)
    {
        String s = "";
        if (fui.HasFile == true)
        {
            s = "~/Images/" + fui.FileName;
            fui.SaveAs((Server.MapPath("~/Images/" + fui.FileName)));
        }
        else
        {
            Label8.Text = "Selected image file.";
        }

        btnew.Enabled = true;

        cmd = new SqlCommand("insert into Service_master(s_id,s_nm,c_id,c_nm,charges,img)values(@s_id,@s_nm,@c_id,@c_nm,@charges,@img)", cn);
        cmd.Parameters.AddWithValue("@s_id", txtsid.Text);
        cmd.Parameters.AddWithValue("@s_nm", ddlsna.Text);
        cmd.Parameters.AddWithValue("@c_id", txtcid.Text);
        cmd.Parameters.AddWithValue("@c_nm", txtcna.Text);
        cmd.Parameters.AddWithValue("@charges", txtch.Text);
        cmd.Parameters.AddWithValue("@img", fui.FileName);


        cn.Open();
        int res = cmd.ExecuteNonQuery();
        if (res == 1)
        {
            Response.Write("<script>alert('!!!!!!!!!!Record Saved !!!!!!!!!!!!!')</script>");
        }
        else
        {
            Response.Write("<script>alert('!!!!!!!!!!Record Not Saved !!!!!!!!!!!!!')</script>");
        }
        cn.Dispose();
        cn.Close();

    }
    
    
    
    protected void btupdate_Click(object sender, EventArgs e)
    {
        String s = "";
        if (fui.HasFile == true)
        {
            s = "~/Images/" + fui.FileName;
            fui.SaveAs(Server.MapPath("~/Images/" + fui.FileName));
            cmd = new SqlCommand("update Service_master set s_id=@s_id,s_nm=@s_nm,c_id=@c_id,c_nm=@c_nm,charges=@charges,img=@img=" + btnew, cn);
            cmd.Parameters.AddWithValue("@s_id", txtsid.Text);
            cmd.Parameters.AddWithValue("@s_nm", ddlsna.Text);
            cmd.Parameters.AddWithValue("@c_id", txtcid.Text);
            cmd.Parameters.AddWithValue("@c_nm", txtcna.Text);
            cmd.Parameters.AddWithValue("@charges", txtch.Text);
            cmd.Parameters.AddWithValue("@img", fui.FileName);

            cn.Open();
            int res = cmd.ExecuteNonQuery();
            if (res == 1)
            {
                Response.Write("<script>alert('!!!!.......Record Updated.......!!!!')</script>");
            }
            else
            {
                Response.Write("<script>alert('!!!!......Record Not Upadated........!!!!')</script>");
            }
        }
        else
        {
            cmd = new SqlCommand("update Service_master set s_id=@s_id,s_nm=@s_nm,c_id=@c_id,c_nm=@c_nm,charges=@charges,img=@img where s_id=" + txtsid.Text, cn);
            cmd.Parameters.AddWithValue("@s_id", txtsid.Text);
            cmd.Parameters.AddWithValue("@s_nm", ddlsna.Text);
            cmd.Parameters.AddWithValue("@c_id", txtcna.Text);
            cmd.Parameters.AddWithValue("@c_nm", txtcna.Text);
            cmd.Parameters.AddWithValue("@charges", txtch.Text);
            cmd.Parameters.AddWithValue("@img", fui.FileName);

            cn.Open();

            int res = cmd.ExecuteNonQuery();
            if (res == 1)
            {
                Response.Write("<script>alert('!!!!!!.....Record Updated.......!!!!!!!')</script>");
            }
            else
            {
                Response.Write("<script>alert('!!!!......Record Not Upadated........!!!!')</script>");
            }

            cn.Dispose();
            cn.Close();
            cmd.Dispose();
            clear();
        }
    }
    protected void btclear_Click(object sender, EventArgs e)
    {
        clear();
    }
    void clear()
    {
        txtsid.Text = "";
        ddlsna.Text = "";
        txtcid.Text = "";
        txtcna.Text = "";
        txtch.Text = "";
        
    }



    protected void btdelete_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("delete from Service_master where s_id=" + txtsid.Text, cn);
        cn.Open();

        int res = cmd.ExecuteNonQuery();
        if (res == 1)
        {
            Response.Write("<script>alert('!!!!..........Delete Record......!!!!!!!')</script>");
        }
        else
        {
            Response.Write("<script>alert('!!!!......... Record Not Delete......!!!!!!!')</script>");
        }
        cn.Dispose();
        cn.Close();
        cmd.Dispose();
        clear();


    }
    protected void btsearch_Click(object sender, EventArgs e)
    {
        btupdate.Enabled = true;
        btdelete.Enabled = true;
        cn.Open();
        cmd = new SqlCommand("SELECT * FROM Service_master WHERE s_id=" + txtsid.Text, cn);
        SqlDataReader Dr = cmd.ExecuteReader();
        if (Dr.HasRows)
        {
            Dr.Read();

            ddlsna.Text = Dr["s_nm"].ToString();
            txtcid.Text = Dr["c_id"].ToString();
            txtcna.Text = Dr["c_nm"].ToString();
            txtch.Text = Dr["charges"].ToString();
            

        }
        else
        {
            Response.Write("<script>alert('!!!!!!.........Record Not Found......!!!!!!!!!!!')</script>");
        }
        Dr.Close();
    }
}

