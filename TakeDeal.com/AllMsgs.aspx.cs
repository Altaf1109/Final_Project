using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AllMsgs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["RoleID"].ToString() != "2")
        {
            Response.Redirect("~/Login.aspx");

        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string prodID = "";
        int index = 0;

        if (e.CommandName == "seen")
        {
            index = Convert.ToInt32(e.CommandArgument);
            prodID = GridView1.Rows[index].Cells[0].Text;
            string strCon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strCon);
            string strCmd = "Delete from Message where buyer='" + prodID + "'";
            SqlCommand cmd = new SqlCommand(strCmd, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/AllMsgs.aspx");
            Commons.MsgBox("Message Removed");
        }

    }
}