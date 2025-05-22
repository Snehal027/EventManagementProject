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

public partial class Silver_Corporate_Event : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["s_id"] = 12;
        Response.Redirect("~/Display.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["s_id"] = 12;
        Response.Redirect("~/Display.aspx");
    }
}
