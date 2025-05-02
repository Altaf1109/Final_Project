using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class NavMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (Session["RoleId"].ToString()!="")
        {
            btnlogin2.Visible = false;
            btnLogin.Visible = true;
            btnLogin.Text = Session["FullName"].ToString();
            HyperLink1.Visible = true;
            HyperLink2.Visible = true;
        }
        else
        {
            HyperLink1.Visible = false;
            btnLogin.Visible = false;
            btnlogin2.Visible = true;
            HyperLink2.Visible = false;
        }
        if (!IsPostBack)
        {
            LoadMsg();
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }

    protected void btnlogin2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
    private void LoadMsg()
    {
        string strcon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        SqlConnection con = new SqlConnection(strcon);
        string strcmd = "select * from Message where Seller='" + Session["Uname"] + "'";
        SqlCommand cmd = new SqlCommand(strcmd, con);
        SqlDataAdapter dtadp = new SqlDataAdapter();
        dtadp.SelectCommand = cmd;
        DataTable dt = new DataTable();
        dtadp.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            msg.Text = dt.Rows.Count.ToString();
        }
    }
}
