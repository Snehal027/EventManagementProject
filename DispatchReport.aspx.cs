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
using CrystalDecisions.CrystalReports.Engine;



public partial class DispatchReport : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("SELECT * FROM DispatchView where order_stu= " + DropDownList1.Text + "", cn);
        cn.Open();
        cmd.ExecuteNonQuery();



        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds, "DispatchView");

        ReportDocument doc = new ReportDocument();

        string path = Path.Combine(Request.PhysicalApplicationPath, "DispatchReport.rpt");

        doc.Load(path);
        doc.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = doc;
    
    }

    
}
