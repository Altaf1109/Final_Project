using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_template_demo_AdminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CountUsers();

        }
    }
    private void CountUsers()
    {
         
        string strcon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        SqlConnection con = new SqlConnection(strcon);
        string strcmd = "SELECT(SELECT COUNT(*)FROM Cars) AS car, "+

      " (SELECT COUNT(*)FROM Bikes) AS bike, "+

      " (SELECT COUNT(*)FROM Electronics) AS ele, "+

      " (SELECT COUNT(*)FROM Furniture) AS fur, "+

      " (SELECT COUNT(*)FROM Mobiles) AS mob, "+

      " (SELECT COUNT(*)FROM Others) AS otr, "+

      " (SELECT COUNT(*)FROM Users where RoleId = 2) AS users ";
        SqlCommand cmd = new SqlCommand(strcmd, con);
        SqlDataAdapter dtadp = new SqlDataAdapter();
        dtadp.SelectCommand = cmd;
        DataTable dt = new DataTable();
        dtadp.Fill(dt);
        string count = dt.Rows[0]["users"].ToString();
        users.Text = count;

        int car, bike, ele, fur, mob, otr ,result;
        car = Convert.ToInt32(dt.Rows[0]["car"]);
        bike = Convert.ToInt32(dt.Rows[0]["bike"]);
        ele = Convert.ToInt32(dt.Rows[0]["ele"]);
        fur = Convert.ToInt32(dt.Rows[0]["fur"]);
        mob = Convert.ToInt32(dt.Rows[0]["mob"]);
        otr = Convert.ToInt32(dt.Rows[0]["otr"]);
        result = car + bike + ele + fur + mob + otr;
        ads.Text = result.ToString();
    }
}