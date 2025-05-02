using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["RoleID"].ToString() != "2")
        {
            Response.Redirect("~/Login.aspx");
        }
        else
        {

            string strcon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
            SqlConnection con = new SqlConnection(strcon);
            string strcmd = "Select Users.Mobile,Users.UName,Users.UPassword,Users.SeqQue,Users.SeqAns,Users.FullName,UsersInfo.Picpath,UsersInfo.Address,UsersInfo.UserID,UsersInfo.Description from Users inner join UsersInfo ON Users.UName=UsersInfo.UserID where UName = '" + Session["UName"]+"'";
            SqlCommand cmd = new SqlCommand(strcmd, con);
            SqlDataAdapter dtadp = new SqlDataAdapter();
            
            dtadp.SelectCommand = cmd;
            DataTable dt = new DataTable();
            dtadp.Fill(dt);
            if (dt.Rows.Count>0)
            {
                Label3.Text = dt.Rows[0]["Mobile"].ToString();
                Label1.Text = dt.Rows[0]["FullName"].ToString();
                Label2.Text = dt.Rows[0]["UName"].ToString();
                Label4.Text = dt.Rows[0]["FullName"].ToString();
                Label5.Text = dt.Rows[0]["Address"].ToString();
                Label6.Text = dt.Rows[0]["SeqQue"].ToString();
                Label7.Text = dt.Rows[0]["SeqAns"].ToString();
                Label8.Text = dt.Rows[0]["Description"].ToString();
            }


        }

    }
}