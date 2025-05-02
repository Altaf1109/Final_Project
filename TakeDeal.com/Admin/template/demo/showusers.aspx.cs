using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_template_demo_showusers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        loadUsers();
    }

    private void loadUsers()
    {
        string strcon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        SqlConnection con = new SqlConnection(strcon);
        string strcmd = "select UserID,UName,FullName,Dated,Active,Mobile from Users where RoleID=2";
        SqlCommand cmd = new SqlCommand(strcmd, con);
        SqlDataAdapter dtadp = new SqlDataAdapter();
        dtadp.SelectCommand = cmd;
        DataTable dt = new DataTable();
        dtadp.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}