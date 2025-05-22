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
using CrystalDecisions.CrystalReports.Engine;
using System.IO;


public partial class UserReport : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

    SqlCommand cmd;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd = new SqlCommand("SELECT * FROM RegistrastionTable", cn);
        cn.Open();
        cmd.ExecuteNonQuery();

        DataSet ds = new DataSet();

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds, "RagistrastionView");

        ReportDocument doc = new ReportDocument();

        string path = Path.Combine(Request.PhysicalApplicationPath, "UserReport.rpt");

        //.Combine(Request.PhysicalApplicationPath, "Product.rpt");
        doc.Load(path);
        doc.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = doc;

    }
    protected void CrystalReportViewer1_Init(object sender, EventArgs e)
    {

    }
}
