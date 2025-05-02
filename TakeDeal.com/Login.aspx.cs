using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["RoleID"].ToString()!= "")
        {
            Response.Redirect("~/Home.aspx");
        }
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
                string strCon = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
                SqlConnection con = new SqlConnection(strCon);
                string strCmd = "select UName,UPassword,Mobile,RoleID,FullName,Active from Users where Uname ='" + email.Text + "'";
                SqlCommand cmd = new SqlCommand(strCmd, con);
                SqlDataAdapter dtadp = new SqlDataAdapter();
                dtadp.SelectCommand = cmd;
                DataTable dt = new DataTable();
                dtadp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    if (Convert.ToBoolean(dt.Rows[0]["Active"]) == false)
                    {
                        Label2.Text = "Account is Suspended !!!!!";
                    }
                    else
                    {

                        string strPassword = dt.Rows[0]["UPassword"].ToString();
                        if (pass.Text == strPassword)
                        {
                            Session["RoleID"] = dt.Rows[0]["RoleID"].ToString();
                            Session["UName"] = dt.Rows[0]["UName"].ToString();
                            Session["FullName"] = dt.Rows[0]["FullName"].ToString();
                            Session["Mobile"] = dt.Rows[0]["Mobile"].ToString();

                            if (Session["RoleID"].ToString() == "1")
                            {
                                //Admin
                                Response.Redirect("~/Admin/template/demo/AdminHome.aspx");
                            }
                            else
                            {
                                //Else
                                Response.Redirect("~/Home.aspx");
                            }
                        }
                        else
                        {
                            Label2.Text = "Invalid Password ..!!!";
                            RequiredFieldValidator2.Visible = true;
                            RequiredFieldValidator2.Text = "Invalid Password..";
                        }
                    }
                }
                else
                {
                    Label2.Text = "You Dont have any account here";
     
             }
            }
        catch (Exception ex)
        {
            Label2.Text = ex.Message;
        }

    }
        

}
