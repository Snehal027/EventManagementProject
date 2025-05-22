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

public partial class Book : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView x = new GridView();
        SqlDataSource1.SelectCommand = "select sum(Total_amount)from BookTable";
        x.DataSource = SqlDataSource1;
        x.DataBind();
        TextBox1.Text = x.Rows[0].Cells[0].Text;
        Button2.Enabled = true;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["tamt"] = TextBox1.Text;
        Response.Redirect("~/Login.aspx");
    }
    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}
